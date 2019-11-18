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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("imageURL");
                dt.Columns.Add("productName");
                dt.Columns.Add("productDesc");
                dt.Columns.Add("unitPrice");
                dt.Columns.Add("totalcost");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=KMC-HP2019;Initial Catalog=TrendyAlteration_DB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where productID='" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["imageURL"] = ds.Tables[0].Rows[0]["imageURL"].ToString();
                        dr["productName"] = ds.Tables[0].Rows[0]["productName"].ToString();
                        dr["productDesc"] = ds.Tables[0].Rows[0]["productDesc"].ToString();
                        dr["unitPrice"] = ds.Tables[0].Rows[0]["unitPrice"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                    else
                    {
                        dt.Clear();
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        String mycon = "Data Source=KMC-HP2019;Initial Catalog=TrendyAlteration_DB;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where productID='" + Request.QueryString["id"] + "'";
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["imageURL"] = ds.Tables[0].Rows[0]["imageURL"].ToString();
                        dr["productName"] = ds.Tables[0].Rows[0]["productName"].ToString();
                        dr["productDesc"] = ds.Tables[0].Rows[0]["productDesc"].ToString();
                        dr["unitPrice"] = ds.Tables[0].Rows[0]["unitPrice"].ToString();
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        Session["buyitems"] = dt;
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                }
            }




        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "AddtoCart")
            {
                Response.Redirect("Products.aspx?id=" + e.CommandArgument.ToString());
            }

        }
    }
}