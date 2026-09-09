using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.AdminFolder
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        //Implement the function to add the admin to the db: @LaniiAndre10. //

        ServiceReference1.Service1Client Service1Client = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddAdmin_Click(object sender, EventArgs e)
        {

            String DefaultNotUploadedImage = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJxuZwQpeSio0s2wncsyRJ6qcXok0dlyj5wRw1Xe17sw&s=10";
            bool Success = false;

            try { 

                var UserPPLink = txtAdminPPLink.Value;
                var UserNames = txtProductName.Value;
                var UserEmail = txtEmail.Value;
                var UserPhone = TxtPhoneNumber.Value;
                var UserPassWord = txtPassword.Value;

                if (String.IsNullOrEmpty(UserPPLink))
                {
                    UserPPLink = DefaultNotUploadedImage; // No profile picture uploaded, Upload Default//
                }

                //then add the item to database//
                Success = Service1Client.AddAdmin(UserPPLink, UserPhone, UserNames, UserEmail, UserPassWord);


                if (Success)
                {
                    lblAddStatus.Text = "Successfully Added Admin!";
                }
                else
                {
                    lblAddStatus.Text = "Failed to add Admin, Credentials Already Exist.";
                }

            }
            catch
            { 
                //void//
            }
        }
    }
}