using System;

namespace MobileShopping
{
    public partial class userMasterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                lblusername.Text = "";
                lbllogin.Text = "Login";
                lblChangePassword.Visible=false;
                imgchangepassword.Visible=false;
                lblForgotForgot.Visible = true;
                imgforgotpassword.Visible=true;
            }
            else
            {
                lblusername.Text = Session["username"].ToString();
                lbllogin.Text = "Logout";
                lblChangePassword.Visible = true;
                imgchangepassword.Visible = true;
                lblForgotForgot.Visible = false;
                imgforgotpassword.Visible = false;

            }

        }
    }
}