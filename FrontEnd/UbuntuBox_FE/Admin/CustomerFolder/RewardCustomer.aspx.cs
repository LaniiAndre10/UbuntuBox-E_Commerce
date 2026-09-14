using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.CustomerFolder
{
    public partial class RewardCustomer : System.Web.UI.Page
    {
        ServiceReference1.Service1Client DataClient = new Service1Client();

        //this page is all about customer rewarding: @LaniiAndre10. //

        protected void Page_Load(object sender, EventArgs e)
        {
            ImgContainer.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";
        }

        //Create a function to Retrieve the searched User..//
        protected void BtnSearchUser_Click(object sender, EventArgs e)
        {

            var TargetUser = DataClient.SearchCustomer(txtCustomerID.Value);
            var TargetUserDetails = DataClient.SearchCustomerDetails(txtCustomerID.Value);

            //clear the lbl status data//
            LblStatus.Text = null;


            if( TargetUser != null)
            {
                lblCustomerID.Text = TargetUser.UserID.ToString();
                lblCustomerNames.Text = TargetUser.Usernames;
                lblCustomerEmail.Text = TargetUser.Email;
                ImgContainer.ImageUrl = TargetUser.ProfileImgURL;

                if(TargetUserDetails != null) { 

                    lblCustomerType.Text = TargetUserDetails.CustomerType;
                    lblNumtimesRewarded.Text = TargetUserDetails.TimesRewarded.ToString();
                    lblTotalBought.Text = TargetUserDetails.TotalProductsBought.ToString();
                    lblTotalSpent.Text = TargetUserDetails.TotalMoneySpent.ToString();

                }
                else
                {
                    lblCustomerType.Text = "Not Recorded In Customer Data!";
                    lblNumtimesRewarded.Text = "Not Recorded In Customer Data!";
                    lblTotalBought.Text = "Not Recorded In Customer Data!";
                    lblTotalSpent.Text = "Not Recorded In Customer Data!";

                }

            }
            else
            {
                lblCustomerID.Text = "User Not Found In Database";
            }

        }

        protected void BtnReward_Click(object sender, EventArgs e)
        {
            int Rewardpercentage = int.Parse(txtReward.Value);

            if (Rewardpercentage == null)
            {
                Rewardpercentage = 0;
            }

            LblStatus.Text = DataClient.GrantUserReward(txtCustomerID.Value, Rewardpercentage);

            //Clear data & leave the log//

            lblCustomerID.Text = null;
            lblCustomerNames.Text = null;
            lblCustomerEmail.Text = null;
            ImgContainer.ImageUrl = null;
            lblCustomerType.Text = null;
            lblNumtimesRewarded.Text = null;
            lblTotalBought.Text = null;
            lblTotalSpent.Text = null;
            txtCustomerID.Value = null;
            txtCustomerID.Value = null;
            ImgContainer.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";

        }
    }



}