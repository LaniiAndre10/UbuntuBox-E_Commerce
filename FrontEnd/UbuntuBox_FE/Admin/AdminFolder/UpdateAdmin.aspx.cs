using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.AdminFolder
{
    public partial class UpdateAdmin : System.Web.UI.Page
    {
        UbuntuBox_FE.ServiceReference1.Service1Client client = new UbuntuBox_FE.ServiceReference1.Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            Adminimg.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";

        }

        protected void BtnSearchAdmin_Click(object sender, EventArgs e)
        {

            String AdminEmail = Adminemail.Value;

            User RequiredUser = client.SearchAdmin(AdminEmail);

            if(RequiredUser != null)
            {
                Adminemail.Disabled = true;

                Adminimg.ImageUrl = RequiredUser.ProfileImgURL;
                AdminImage.Value = RequiredUser.ProfileImgURL;
                Adminname.Value = RequiredUser.Usernames;
                Adminphone.Value = RequiredUser.PhoneNum;

            }
            else
            {
                StatusUpdate.Text = "Admin with that email address doesn't exist!";

            }
        }

        protected void btnpushUpdate_Click(object sender, EventArgs e)
        {

            //Then force an update if the text is overridden//
            bool IsUpdated = client.UpdateAdmin(Adminemail.Value, AdminImage.Value, Adminname.Value, Adminphone.Value);

            //print status//
            if (IsUpdated)
            {
                StatusUpdate.Text = "Successfully Updated Admin Data!";

                //then create the Textboxes//
                Adminemail.Disabled = false;
                Adminemail.Value = null;

                Adminimg.ImageUrl = null;
                AdminImage.Value = null;
                Adminname.Value = null;
                Adminphone.Value = null;

                Adminimg.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";

            }
            else
            {

                StatusUpdate.Text = "Failed to Update Admin Data!";

            }

        }
    }
}