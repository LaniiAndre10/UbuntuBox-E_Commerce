using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            bool userInfo = client.LoginUser(Emailbox.Value.Trim(), passbox.Value.Trim());

            if (userInfo)
            {
                Response.Redirect("SignUp.aspx");
            }
            else
            {
                lblMessage.Text = "Incorrect Email and Password, Please try again";
            }
        }

    }
}