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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Page.User.IsInRole("Customer"))
                {
                    HyplHidden1.Text = "Order History";
                    HyplHidden1.Visible = true;
                    HyplHidden1.NavigateUrl = "~/ Contact.aspx";

                    HyplHidden2.Text = "View Shopping Cart";
                    HyplHidden2.Visible = true;
                    HyplHidden2.NavigateUrl = "~/ShoppingCart.aspx";
                    btnLogOut.Visible = true;

                    HyplHome.NavigateUrl = "~/Welcomepage.aspx";
                }

                if (Page.User.IsInRole("Admin"))
                {
                    HyplHidden1.Text = "Manage Products";
                    HyplHidden1.Visible = true;
                    HyplHidden1.NavigateUrl = "~/AdminProducts.aspx";

                    HyplHidden2.Text = "Manage User";
                    HyplHidden2.Visible = true;
                    HyplHidden2.NavigateUrl = "";
                    btnLogOut.Visible = true;

                    HyplHome.NavigateUrl = "~/Welcomepage.aspx";

                }
                HyplHome.NavigateUrl = "~/homepage.aspx";
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