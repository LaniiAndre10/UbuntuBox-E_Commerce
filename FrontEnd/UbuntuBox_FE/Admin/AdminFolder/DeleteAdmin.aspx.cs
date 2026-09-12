using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;


namespace UbuntuBox_FE.Admin.AdminFolder
{
    public partial class DeleteAdmin : System.Web.UI.Page
    {
        ServiceReference1.Service1Client Service1Client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            ImgContainer.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            //retrieve the required User, and display their data!: @LaniiAndre10//

            User NewUser = Service1Client.SearchAdmin(AdminEmail.Value);

            if (NewUser != null)
            {
                //display their data//

                AdminEmail.Disabled = true; //lock the email, so we can delete the data, using Email//

                AdminID.Text = NewUser.UserID.ToString();
                AdminNames.Text = NewUser.Usernames;
                AdminPrivilages.Text = "Feature Under Development!";
                AdminDateAdded.Text = NewUser.UserDateAdded.ToString();
                AdminStatus.Text = NewUser.UserStatus;

                ImgContainer.ImageUrl = NewUser.ProfileImgURL;

            }
            else
            {

                StatusUpdate.Text = "Admin Not Found in the database!";

            }

        }//

        protected void BtnDelete_Click(object sender, EventArgs e)
        {

            //delete the admin from the database: @LaniiAndre10//

            bool isDeleted = Service1Client.RemoveAdmin(AdminEmail.Value);

            if (isDeleted)
            {
                StatusUpdate.Text = "Successfully deleted the admin from the database!";

                //then clear the user controls//
                AdminEmail.Disabled = false;

                AdminEmail.Value = null;
                AdminDateAdded.Text = null;
                AdminID.Text = null;
                AdminNames.Text = null;
                AdminStatus.Text = null;
                AdminPrivilages.Text = null;
            }
            else
            {
                AdminEmail.Disabled = false;
                StatusUpdate.Text = "Failed to delete the admin from the database!";

            }

        }
    }
}