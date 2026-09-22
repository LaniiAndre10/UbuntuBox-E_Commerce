using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace User_Management
{
    public partial class checkout : System.Web.UI.Page
    {

        Service1Client Service = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //add the logic to check out product: @LaniiAndre10.//
        protected void BtnApprove_Click(object sender, EventArgs e)
        {
            int userID = Convert.ToInt32(Session["UserID"]);

            // Checkout the order//
            bool isCheckedout = Service.CheckoutCart(userID);

            if (isCheckedout)
            {
                

                // Get the most latest order for user //
                var order = Service.GetLatestOrder(userID);

                // Generate the slip using the orderID //
                string slipText = Service.GenerateTillSlip(order.OrderID);

                // Download | convert text file to pdf!//
                Response.ContentType = "application/txt";
                Response.AddHeader("content-disposition", "attachment;filename=Receipt.txt");
                Response.Write(slipText);
                Response.End();

            }
            
        }

    }
}