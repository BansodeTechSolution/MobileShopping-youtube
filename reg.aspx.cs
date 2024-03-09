using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MobileShopping
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// Registration user data
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSingup_Click(object sender, EventArgs e)
        {
           
            string insertquery = "INSERT INTO [UserTable]" +
                "([FirstName],[LastName],[MobileNo],[EmailAddress],[City],[Password])" +
                "VALUES('"+txtfname.Text+"','"+txtlname.Text+"','"+txtmobile.Text+"','"+txtemail.Text +"','"+txtcity.Text+"','"+txtcpassword.Text+"');";
            try
            {
                SqlCommand cmd = new SqlCommand(insertquery, dbconfig.con);
                dbconfig.con.Open();
                cmd.ExecuteNonQuery();
                dbconfig.con.Close();
                lblmsg.Text = txtfname.Text + " has been register Successfully";
                Session["UserName"] = txtfname.Text;
            }catch(Exception ex)
            {
                lblmsg.Text = ex.Message;
            }
        }
    }
}