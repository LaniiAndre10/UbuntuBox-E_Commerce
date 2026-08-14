using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Authentication
{
    public partial class SignUp : System.Web.UI.Page
    {
        ServiceReference1.Service1Client service = new ServiceReference1.Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateAcc_Click(object sender, EventArgs e)
        {
            //here we will create the endpoint logic for handling the Create account event//

            //1. Collect the data from the user//
            string Username = name.Value;
            string User_Email = email.Value;
            string User_Phone = phone.Value;
            string Userpass = password.Value.Trim();
            string UserCpass = confirm.Value.Trim();
            bool IsAdmin = false;

            if (IsAdmincheck.Checked)
            {
                IsAdmin = true;

            }

            //2. Check if the entered password and the Confirm password are matching or what.

            if (!Userpass.Equals(UserCpass)){

                //notify the user of passwords not matching, and break the submission so they can restart the interaction//
                int temppasslenght = password.Value.Length;
                password.Value.Remove(0, temppasslenght);
                int tempCpasslenght = confirm.Value.Length;
                confirm.Value.Remove(0, tempCpasslenght);

                ServerResponse.Text = "The entered password and the confirm password do not match, Try entering them again";

                return; //End the progress//

            }
            else
            {

                //ServerResponse.Visible = false; //remove the warming logo//

                password.Value = "........."; //simulating password is correct//
                password.Value = "........."; //simulating password is correct //


                //push the data into the database to check for email visibility//
                string results = service.RegisterUser(Username, User_Email, User_Phone, Userpass, IsAdmin);
                //return a string in the service for an error and display it on the serverresponse//

                //else delay and redirect to sign up page//
                ServerResponse.Text = results;

                //call the service function to add the user into the database//



            }


        }
    }
}
