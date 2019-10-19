﻿using System;
using System.Collections.Generic;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace TrendyAlterations
{
    public partial class registration : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["membersCounter"] == null)
                {
                    Application["membersCounter"] = 0;
                }
                lblMembersCount.Text = Application["membersCounter"].ToString();

            }
            //lblMembersCount.Text = countMembers.ToString();
        }
        protected void btnRegister_Click2(object sender, EventArgs e)
        {
            Session["FirstName"] = txtFirstName.Text;
            Session["LastName"] = txtLastName.Text;
            if (IsValid) {
                var userStore = new UserStore<IdentityUser>();
                var manager = new UserManager<IdentityUser>(userStore);

                var user = new IdentityUser() { UserName = txtFirstName.Text };
                IdentityResult result = manager.Create(user, txtPassword.Text);
                Response.Redirect("Welcomepage.aspx");
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