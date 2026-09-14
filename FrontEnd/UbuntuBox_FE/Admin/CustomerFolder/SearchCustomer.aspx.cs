using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.CustomerFolder
{
    public partial class SearchCustomer : System.Web.UI.Page
    {

        //create the client//
        ServiceReference1.Service1Client ServiceClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            imgHolder.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";
        }

        //Create a function to use the client function to retrieve searched data: @LaniiAndre10. //
        protected void BtnSeekCustomer_Click(object sender, EventArgs e)
        {

            var User = ServiceClient.SearchCustomer(TxtUserID.Value);
            var UserDetails = ServiceClient.SearchCustomerDetails(TxtUserID.Value);

            if(User != null)
            {
                //display the data of that current customer//
                lblID.Text = User.UserID.ToString();
                Lblnames.Text = User.Usernames;
                LblEmail.Text = User.Email;
                lblDateJoined.Text = User.UserDateAdded.ToString();
                imgHolder.ImageUrl = User.ProfileImgURL;

                if(UserDetails != null)
                {

                    lblOrdersCancelled.Text = UserDetails.TotalOrdersCancelled.ToString();
                    lblordersRet.Text = UserDetails.TotalOrdersReturned.ToString();
                    lblProdsBought.Text = UserDetails.TotalProductsBought.ToString();
                    lblTimesRewarded.Text = UserDetails.TimesRewarded.ToString();
                    lblTotalSpent.Text = UserDetails.TotalMoneySpent.ToString();
                    lblCustomerType.Text = UserDetails.CustomerType;
                }
                else{

                    lblOrdersCancelled.Text = "Data not Captured.";
                    lblordersRet.Text = "Data not Captured.";
                    lblProdsBought.Text = "Data not Captured.";
                    lblTimesRewarded.Text = "Data not Captured.";
                    lblTotalSpent.Text = "Data not Captured.";

                }

            }
            else
            {
                lblID.Text = "A User with that ID doesn't Exist!";
                Lblnames.Text = null;
                LblEmail.Text = null;
                lblDateJoined.Text = null;
                imgHolder.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";

            }

        }

    }
}