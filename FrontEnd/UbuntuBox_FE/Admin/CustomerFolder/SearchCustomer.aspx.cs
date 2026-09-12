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

            if(User!= null)
            {
                //display the data of that current customer//
                lblID.Text = User.UserID.ToString();
                Lblnames.Text = User.Usernames;
                LblEmail.Text = User.Email;
                lblDateJoined.Text = User.UserDateAdded.ToString();
                imgHolder.ImageUrl = User.ProfileImgURL;

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