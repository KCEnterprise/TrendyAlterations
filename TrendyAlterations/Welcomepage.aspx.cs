using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace TrendyAlterations
{
    public partial class Welcomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    if (User.IsInRole("Customer"))
                    {
                        HyplHidden1.Text = "Order History";
                        HyplHidden1.Visible = true;
                        HyplHidden1.NavigateUrl = "~/ Contact.aspx";

                        HyplHidden2.Text = "View Shopping Cart";
                        HyplHidden2.Visible = true;
                        HyplHidden2.NavigateUrl = "";

                        //lblName.Text = Session["User"].ToString();
                    }

                    if (User.IsInRole("Admin"))
                    {
                        HyplHidden1.Text = "Manage Product";
                        HyplHidden1.Visible = true;
                        HyplHidden1.NavigateUrl = "~/AdminProducts.aspx";

                        HyplHidden2.Text = "Manage User";
                        HyplHidden2.Visible = true;
                        HyplHidden2.NavigateUrl = "";

                        //lblName.Text = Session["User"].ToString();
                    }
                
            }

        }

        protected void SignOut(object sender, EventArgs e) // Sign Out Fuunction
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            authenticationManager.SignOut();
            Response.Redirect("~/homepage.aspx");
        }


    }
}