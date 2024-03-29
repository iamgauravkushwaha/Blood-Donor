﻿using System;
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
    public partial class UserLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //create connection by using sqlconnection class
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["bdonar"].ToString());
            //open connection
            con.Open();
            //pass query by using sqlcommand class
            string q = "proc_validuser";
            SqlCommand cmd = new SqlCommand(q, con);
            //we have to inform that using stored procedured
            cmd.CommandType = CommandType.StoredProcedure;
            //Add values to Stored procedure
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            //Execute Query
            object p=cmd.ExecuteScalar();
            //Close connection
            con.Close();
            if((int)p!=0)
            {
                Session["Aid"] = TextBox1.Text;
                Session["Apswd"] = TextBox2.Text;
                Server.Transfer("AWelcome.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Invalid User";
            }
        }
    }
}