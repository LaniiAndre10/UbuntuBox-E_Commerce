using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.CustomerFolder
{
    public partial class BlockCustomer : System.Web.UI.Page
    {
        UbuntuBox_FE.ServiceReference1.Service1Client ServiceClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            CustomerImg.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";
        }

        protected void BtnSearchUser_Click(object sender, EventArgs e)
        {

            //then search and retrieve a customer using their user ID: @LaniiAndre10 //

            var Customer = ServiceClient.SearchCustomer(txtCustomerID.Value);
            var CustomerData = ServiceClient.SearchCustomerDetails(txtCustomerID.Value);

            if (Customer != null)
            {
                CustomerImg.ImageUrl = Customer.ProfileImgURL;
                lblID.Text = Customer.UserID.ToString();
                lblNames.Text = Customer.Usernames;

                if(CustomerData != null)
                {

                    lblOrdersCancelled.Text = CustomerData.TotalOrdersCancelled.ToString();
                    lblOrdersMade.Text = CustomerData.TotalProductsBought.ToString();
                    lblUserType.Text = CustomerData.CustomerType;

                }
                else
                {
                    lblOrdersCancelled.Text = "Data About Customer not Captured.";
                    lblOrdersMade.Text = "Data About Customer not Captured.";
                    lblUserType.Text = "Data About Customer not Captured.";
                }
                

            }
            else
            {
                lblID.Text = "User with that ID doesn't exist!";
            }

        }

        protected void BtnBlockUser_Click(object sender, EventArgs e)
        {
            //Then here, we want to block the customer's status to blocked for platform misuse: @LaniiAndre10.//

            bool IsBlocked = false;

            IsBlocked = ServiceClient.BlockUser(txtCustomerID.Value);

            if(IsBlocked == true)
            {
                lblID.Text = "Successfully Blocked User!";
            }
            else
            {
                lblID.Text = "Failed to block User, as they don't exist in DBA.";
            }
            
        }
    }
}