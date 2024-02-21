using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BloodDonor.image
{
    public partial class Register : System.Web.UI.Page
    {
        void GetBloooGroup()
        {
            //create connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //Open Conection
            con.Open();
            //Pass query to database using SqlDataAdapter class
            string q = "proc_display_bldgroup";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            //create object for dataset
            DataSet ds = new DataSet();
            //fill dataset
            da.Fill(ds, "BloodGroup");
            //provide link between Data source and DropDownList3
            DropDownList3.DataSource = ds;
            DropDownList3.DataTextField = "bgroupname";
            //Data bind
            DropDownList3.DataBind();
            DropDownList3.Items.Insert(0, "--select--");

        }
       void GetStates()
        {
            //create connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //Open Conection
            con.Open();
            //Pass query to database using SqlDataAdapter class
            string q = "proc_displaystates";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            //create object for dataset
            DataSet ds = new DataSet();
            //fill dataset
            da.Fill(ds, "States");
            //provide link between datasource and DropDownList1
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            //Bind data
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {

                GetStates();
                GetBloooGroup();

                int request = Convert.ToInt32(Session["Request"]);
                if (request == 1)
                {
                    Session["Request"] = 0;
                    TextBox1.Text = Session["dname"].ToString();
                    TextBox2.Text = Session["dpassword"].ToString();
                    TextBox3.Text = Session["dpassword"].ToString();
                    string s4 = Session["dgen"].ToString();

                    if (RadioButton1.Text == s4)
                    {
                        RadioButton1.Checked = true;
                    }
                    else if (RadioButton2.Text == s4)
                    {
                        RadioButton2.Checked = true;
                    }
                    string s1 = Session["lang"].ToString();
                    string[] s2 = s1.Split();
                    foreach (string a in s2)
                    {
                        if (a == CheckBox1.Text)
                        {
                            CheckBox1.Checked = true;
                        }
                        else if (a == CheckBox2.Text)
                        {
                            CheckBox2.Checked = true;
                        }
                        else
                        {
                            CheckBox3.Checked = true;
                        }
                    }
                    DropDownList1.SelectedItem.Text = Session["dstate"].ToString();
                    GetCity();
                    DropDownList2.SelectedItem.Text = Session["dcity"].ToString();
                    DropDownList3.SelectedItem.Text = Session["dbgroup"].ToString();
                    TextBox4.Text = Session["dphno"].ToString();
                    TextBox5.Text = Session["demail"].ToString();
                    DropDownList3.Enabled = false;
                    RadioButton1.Enabled = RadioButton2.Enabled = false;
                    TextBox2.Enabled = TextBox3.Enabled = false;
                    Button1.Text = "Update";
                   



                }
            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //create connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //Open Conection
            con.Open();
            //Pass query to database using SqlCommand class
            string q = "";
            if (Button1.Text == "Update")
            {
                q = "proc_update_newdonar";
            }
            else
            {
                q = "proc_newdonar_insert";
            }
            SqlCommand cmd = new SqlCommand(q, con);
            //informed we are using stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //Add values to stored procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox3.Text);
            string gen1 = "";
            if(RadioButton1.Checked==true)
            {
                gen1 = RadioButton1.Text;
            }
            else
            {
                gen1 = RadioButton2.Text;
            }
            cmd.Parameters.AddWithValue("@c", gen1);
            string lang1 = "";
            if(CheckBox1.Checked==true)
            {
                lang1 = CheckBox1.Text;
            }
            if(CheckBox2.Checked==true)
            {
                lang1 = lang1 + " " + CheckBox2.Text;
            }
            if(CheckBox3.Checked==true)
            {
                lang1 = lang1 + " " + CheckBox3.Text;
            }
            cmd.Parameters.AddWithValue("@d", lang1);
            cmd.Parameters.AddWithValue("@e", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@f", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@g", DropDownList3.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@h", TextBox4.Text);
            cmd.Parameters.AddWithValue("@i",  TextBox5.Text);
            if(Button1.Text=="Update")
            {
                cmd.Parameters.AddWithValue("@j", Session["donid"].ToString());
            }
            //Execute query by using ExecuteNonQuery method
            int p=cmd.ExecuteNonQuery();
            //close connection
            con.Close();

            if(p!=0)
            {
                Label1.Visible = true;
                 Label1.Text=  "Register Successfully" ;

            }
            if(Button1.Text=="Update")
            {
                DropDownList3.Enabled = true;
                RadioButton1.Enabled = RadioButton2.Enabled = true;
                TextBox2.Enabled = TextBox3.Enabled = true;

                Button1.Text = "Register";
                Server.Transfer("Details.aspx");
            }


      
        
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GetCity();
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = "";
            CheckBox1.Checked = CheckBox2.Checked = CheckBox3.Checked = RadioButton1.Checked = RadioButton2.Checked = false;
            DropDownList1.Items.Clear();
           
            DropDownList2.Items.Clear();
            GetStates();
            DropDownList3.Items.Clear();
            GetBloooGroup();


        }
        void GetCity()
        {
            //create connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //Open Conection
            con.Open();
            //Pass query to database using  SqlCommandClass class
            string q = "proc_displaycities";
            SqlCommand cmd = new SqlCommand(q, con);
            //inform that we are using stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //add values to stored procedure
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedValue);
            //create object for SqlDataAdopter
            SqlDataAdapter da = new SqlDataAdapter(cmd);


            //create object for dataset
            DataSet ds = new DataSet();
            //fill dataset
            da.Fill(ds, "Cities");
            //provide link between datasource and DropDownList1
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cityname";

            //Bind data
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");

        }
    }
}