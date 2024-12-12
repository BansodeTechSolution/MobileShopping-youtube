using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShopping
{
    public partial class addcategory:System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {

        }

        protected void Button1_Click(object sender,EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

                String query = "Insert into dbo.category(cname) values('" + txtCategoryName.Text + "')";
                SqlCommand cmd = new SqlCommand(query,con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                txtCategoryName.Text = "";
                lblerror.Text = "successfully added ";
                Response.Redirect("addcategory.aspx");
            }
            catch(Exception ex)
            {
                lblerror.Text = ex.Message;
            }
        }
    }
}