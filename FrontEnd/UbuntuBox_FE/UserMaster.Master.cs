using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE
{
    
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showCartCount();
            }
        }

        public void showCartCount()
        {
            int userID = Convert.ToInt32(Session["UserID"]);
            int count = client.GetCartItemCount(userID);
            lblCartCount.Text = count.ToString();
        }

    }
}