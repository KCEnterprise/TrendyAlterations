using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrendyAlterations
{
    public partial class Welcomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblfName.Text = Session["FirstName"].ToString();
                lbllName.Text = Session["LastName"].ToString();

            }

        }

        
    }
}