using System;
using System.Data;
using System.Data.SqlClient;

namespace MobileShopping
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                Session["UserName"] = null;
            }
        }
        /// <summary>
        /// Login code
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnLog_Click(object sender, EventArgs e)
        {
            try
            {
                string loginqry = "select COUNT(*)  from UserTable " +
                    "where EmailAddress = '"+txtEmail.Text+"' and Password = '"+txtPassword.Text+"';";
                SqlDataAdapter sda = new SqlDataAdapter(loginqry, dbconfig.con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt != null && dt.Rows.Count > 0)
                {
                    if (dt.Rows[0][0].ToString() == "1")
                    {
                        Session["UserName"] = txtEmail.Text;
                        if (txtEmail.Text == "admin@gmail.com")
                        {
                            Response.Redirect("indexAdminhome.aspx");
                        }
                        else
                        {
                            Response.Redirect("indexhome.aspx");
                        }
                    }
                    else
                    {
                        lblerror.Text = "Something goes wrong.contact to admin";
                    }
                }
                else
                {
                    lblerror.Text = "UserName or Password is Wrong";
                }

            }
            catch (Exception ex)
            {
                lblerror.Text = ex.Message;
            }
        }
    }
}