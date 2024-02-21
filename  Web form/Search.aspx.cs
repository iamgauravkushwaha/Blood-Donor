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
    public partial class Search : System.Web.UI.Page
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
                 
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Create Connection by using SwlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //pass query to database by using SqlCommandCalss
            string q = "proc_search_donar";
            SqlCommand cmd = new SqlCommand(q, con);
            //inform that we are using stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //add values ro stored Procedure
            cmd.Parameters.AddWithValue("@a", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", DropDownList3.SelectedItem.Text);
            //create object for SqlAdapter class
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //create object for DataSet
            DataSet ds = new DataSet();
            //fill Dataset
            da.Fill(ds, "newdonar");
            //provide Link Between GridView1 and DataSource
            GridView1.DataSource = ds;
            //Bind Data
            GridView1.DataBind();


        }
    }
}