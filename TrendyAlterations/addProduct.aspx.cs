using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace TrendyAlterations
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static string imagelink;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/images/") + txtImage.Text + ".jpg");
                    imagelink = "images/" + txtImage.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    lbl_addProduct_message.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                lbl_addProduct_message.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                String query = "insert into Product(productID,productName,productDesc,unitPrice,imageURL) values('" + txtProductID.Text + "','" + txtProductName.Text + "','" + txtDescription.Text + "','" + txtPrice.Text + "','" + imagelink + "')";
                String mycon = "Data Source=KMC-HP2019;Initial Catalog=TrendyAlteration_DB;Integrated Security=True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                lbl_addProduct_message.Text = "Product Has Been Successfully Saved";
                txtProductID.Text = "";
                txtProductName.Text = "";
                txtDescription.Text = "";
                txtPrice.Text = "";
            }

        }
    }
}