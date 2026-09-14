using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.OrderFolder
{
    public partial class CancelledOrders : System.Web.UI.Page
    {

        ServiceReference1.Service1Client ServiceClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ShowCancelledOrders();

            }

        }

        //Create a function to show all the orders that have been cancelled: @LaniiAndre10//
        public void ShowCancelledOrders()
        {

            var CancelledOrders = ServiceClient.ReturnCancelledOrders();

            Repeater1.DataSource = CancelledOrders;
            Repeater1.DataBind();

        }
    }
}