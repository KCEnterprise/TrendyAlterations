using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
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

            var user = new IdentityUser() { UserName = txtUsername.Text, Email = txtEmail.Text, PhoneNumber = txtPhoneNumber.Text, PasswordHash = txtPassword.Text };
            IdentityResult result = manager.Create(user, txtPassword.Text);
            var roleManager = new RoleManager<IdentityRole>(new RoleStore<IdentityRole>());
            if (!roleManager.RoleExists("Customer"))
            {
                var role = new Microsoft.AspNet.Identity.EntityFramework.IdentityRole();
                role.Name = "Customer";
                roleManager.Create(role);
            }
            if (result.Succeeded)
            {
                manager.AddToRole(user.Id, "Customer");
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);

                if (IsValid)
                { //if registration is valid
                    Session["User"] = txtUsername.Text;
                    var RegistrationauthenticationManager = HttpContext.Current.GetOwinContext().Authentication; //logs out the user after successful registration.
                    RegistrationauthenticationManager.SignOut();
                    Response.Redirect("homepage.aspx");
                }
            }

        }



        protected void txtConfirmPassword_TextChanged(object sender, EventArgs e)
        {

        }

        
        
    }
}   