﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuthenticationDemo
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                lbl_user.Text = "Welecome " + HttpContext.Current.User.Identity.Name;

            }
        }
    }
}