﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BloodDonor.image
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Request"] = 0;

        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
             
        }
    }
}