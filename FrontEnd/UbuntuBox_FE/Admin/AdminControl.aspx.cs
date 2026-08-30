using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin
{
    public partial class AdminManagement : System.Web.UI.Page
    {
        ServiceReference1.Service1Client service = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowActiveAdmins();

            }
        }

        //On page load, we want to show all the active admins//
        public void ShowActiveAdmins()
        {

            var ActiveAdmins = service.GetActiveAdmins();

            //then bind the repeater with the data//
            try
            {
                AdminRepeater.DataSource = ActiveAdmins;
                AdminRepeater.DataBind();

            }
            catch
            {
               //Do nothing//
            }

        }

    }
}