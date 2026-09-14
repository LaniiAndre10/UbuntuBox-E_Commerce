using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.OrderFolder
{
    public partial class LoggedReturns : System.Web.UI.Page
    {
        //the main goal of this class is to show the orders that have been returned: @LaniiAndre10. //

        ServiceReference1.Service1Client ServiceClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                ShowReturnOrderLog();

            }
            
        }


        //Create a function to retreive all the data in the returnedOrders database table..//
        public void ShowReturnOrderLog()
        {

            var LoggedReturns = ServiceClient.ReturnOrdersWithReturns();

            Repeater1.DataSource = LoggedReturns;
            Repeater1.DataBind();

        }


    }
}