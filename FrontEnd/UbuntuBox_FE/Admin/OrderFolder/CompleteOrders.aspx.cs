using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.OrderFolder
{
    public partial class CompleteOrders : System.Web.UI.Page
    {
        ServiceReference1.Service1Client DataClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DisplayCompletedOrders();

            }
        }

        public void DisplayCompletedOrders()
        {
            //The goal is to display all the orders which are completed: @LaniiAndre10. //

            //get the data source//
            var CompleteOrders = DataClient.ReturnCompleteOrders();

            Repeater1.DataSource = CompleteOrders;
            Repeater1.DataBind();

        }

    }
}