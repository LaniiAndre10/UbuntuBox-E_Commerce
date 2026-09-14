using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin
{
    public partial class OrderManagement : System.Web.UI.Page
    {
        UbuntuBox_FE.ServiceReference1.Service1Client DataClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                DisplayAvailableOrders();

            }

        }

        //The main goal here is to display the list of orders that are in the database: @LaniiAndre10. //
        public void DisplayAvailableOrders()
        {

            //get the list from the database..
            var Orders = DataClient.ReturnPendingOrders();

            Repeater1.DataSource = Orders;
            Repeater1.DataBind();

        }

        protected void BtnCompleteOrder_Click(object sender, EventArgs e)
        {

            //the main goal is to change the status of an order from pending to complete: @LaniiAndre10. //

            bool IsUpdated = false;

            //get the order number from the inputbox//
            IsUpdated = DataClient.CompleteOrder(OrderContainer.Value);

            if (IsUpdated)
            {
                //it means the update was a success.
                LblUpdate.Text = "Successfully Completed Order " + OrderContainer.Value+".";
                OrderContainer.Value = null;

                //then display the updated Product.//
                DisplayAvailableOrders();

            }
            else
            {
                LblUpdate.Text = "Failed to Update the Order status, as it is Already Complete or doesn't exist!";

            }

        }
    }
}