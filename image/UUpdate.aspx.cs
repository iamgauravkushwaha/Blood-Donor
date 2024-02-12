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
    public partial class UUpdate : System.Web.UI.Page
    {
        void GetData()
        {  //Create Connection by using SwlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //pass query to database by using SqlCommandCalss
            string q = "proc_user_display";
            SqlCommand cmd = new SqlCommand(q, con);
            //inform that we are using stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //Add values to stored procedure
            cmd.Parameters.AddWithValue("@a", Session["UName"] );
            cmd.Parameters.AddWithValue("@b", Session["Upswd"] );
            //Create DataAdapter Class 
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

       

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
           
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
           


        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           


        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
           

        }

        protected void GridView1_RowUpdating2(object sender, GridViewUpdateEventArgs e)
        {
            //identify RowIndex nmber
            GridViewRow row = GridView1.Rows[e.RowIndex];
            //Assing name to all columns
            Control c1 = row.FindControl("TextBox1");
            Control c2 = row.FindControl("TextBox2");
            Control c3 = row.FindControl("TextBox3");
            //Control c5 = row.FindControl("TextBox5");
            //Control c6 = row.FindControl("TextBox6");
            Control c7 = row.FindControl("TextBox7");
            Control c9 = row.FindControl("TextBox9");
            Control c10 = row.FindControl("TextBox10");
            Label t1 = (Label)c1;
            TextBox t2 = (TextBox)c2;
            TextBox t3 = (TextBox)c3;
            //TextBox t5 = (TextBox)c5;
            //TextBox t6 = (TextBox)c6;
            TextBox t7 = (TextBox)c7;
            TextBox t9 = (TextBox)c9;
            TextBox t10 = (TextBox)c10;
            //Create Connection by using SqlConnection Class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //open connection
            con.Open();
            //pass query to database by using SqlCommandCalss
            string q = "proc_update_userinfo";
            SqlCommand cmd = new SqlCommand(q, con);
            //inform that we are using stored procedure
            cmd.CommandType = CommandType.StoredProcedure;
            //add values ro stored Procedure
            cmd.Parameters.AddWithValue("@a",t1.Text);
            cmd.Parameters.AddWithValue("@b",t2.Text);
            cmd.Parameters.AddWithValue("@c",t3.Text);
            cmd.Parameters.AddWithValue("@d",t7.Text);
            cmd.Parameters.AddWithValue("@e",t9.Text);
            cmd.Parameters.AddWithValue("@f",t10.Text);
            //execute query y using ExecuteNonQuery()
            cmd.ExecuteNonQuery();
            //close connection
            con.Close();
            GridView1.EditIndex = -1;
            GetData();

        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetData();
        }
    }
}