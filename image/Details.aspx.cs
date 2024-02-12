using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace BloodDonor.image
{
    public partial class Details : System.Web.UI.Page
    {
        void GetData()
        {
            //Create Connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //pass query to database by using DataAdapterCalss
            string q = "proc_display_donar";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            //create object for DataSet
            DataSet ds = new DataSet();
            //fill Dataset
            da.Fill(ds, "newdonar");
            //provide Link Between GridView1 and DataSource
            GridView1.DataSource = ds;
            //Bind Data
            GridView1.DataBind();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                GetData();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="cmddelete")
            {
                //find index number
                int index = Convert.ToInt32(e.CommandArgument);
                //Collect rows
                GridViewRow row = GridView1.Rows[index];
                //Assign name to eid Control
                Label l1 = (Label)row.FindControl("Label1");
                //Create Connection by using SqlConnection Class
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
                //open Connection
                con.Open();
                //Pass Query to database using SqlCommand Class
                string q = "proc_delete_donar";
                SqlCommand cmd = new SqlCommand(q, con);
                //inform that we are using StoredProcedure
                cmd.CommandType = CommandType.StoredProcedure;
                //Add value to Stored procedure
                cmd.Parameters.AddWithValue("@a" ,l1.Text);
                //Execute query by using ExecuteNonQuery()
                cmd.ExecuteNonQuery();
                //Close connection
                con.Close();
                GetData();

            }
            else if(e.CommandName=="cmdedit")
            {
                //find index number
                int index = Convert.ToInt32(e.CommandArgument);
                //Collect rows
                GridViewRow row = GridView1.Rows[index];
                //assign values to row
                Label l1 = (Label)row.FindControl("Label1");
                Label l2 = (Label)row.FindControl("Label2");
                Label l3 = (Label)row.FindControl("Label3");
                Label l4 = (Label)row.FindControl("Label4");
                Label l5 = (Label)row.FindControl("Label5");
                Label l6 = (Label)row.FindControl("Label6");
                Label l7 = (Label)row.FindControl("Label7");
                Label l8 = (Label)row.FindControl("Label8");
                Label l9 = (Label)row.FindControl("Label9");
                Label l10 = (Label)row.FindControl("Label10");
                Session["donid"] = l1.Text;
                Session["dname"] = l2.Text;
                Session["dPassword"] = l3.Text;
                Session["dgen"] = l4.Text;
                Session["dstate"] = l5.Text;
                Session["dcity"] = l6.Text;
                Session["dbgroup"] = l7.Text;
                Session["dphno"] = l8.Text;
                Session["demail"] = l9.Text;
                Session["lang"] = l10.Text;
                Session["Request"] = 1;
                Server.Transfer("Register.aspx");
                GetData();



            }
        }
    }
}