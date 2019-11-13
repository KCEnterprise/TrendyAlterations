﻿using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace TrendyAlterations
{
    public partial class registration : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void CreateUser(object sender, EventArgs e)
        {
            var userStore = new UserStore<IdentityUser>();
            var manager = new UserManager<IdentityUser>(userStore);

            var user = new IdentityUser() { UserName = txtUsername.Text, Email = txtEmail.Text,  PhoneNumber = txtPhoneNumber.Text, PasswordHash = txtPassword.Text  };
            IdentityResult result = manager.Create(user, txtPassword.Text);
            if (result.Succeeded)
                {
                if (IsValid) {
                    Session["User"] = txtUsername.Text;
                    Response.Redirect("Welcomepage.aspx");
                }
            }
            else
            {
                Response.Redirect("registration.aspx");
            }

       }

        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            
        }

        
        void Application_Start(object sender, EventArgs e)
        {

            Application["membersCounter"] = 0;

        }

        protected void CustomValidatorDOB_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }
    }
}   