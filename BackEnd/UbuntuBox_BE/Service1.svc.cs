using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace UbuntuBox_BE
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public string RegisterUser(string Usernames, string UserEmail, string UserPhone, string UserPass, bool IsAdmin)
        {
            string ProcessResult = " ";

            //1. first check if the user's entered email doesnt exist in the database//

            foreach (var user in dbaUbuntuBox.Users)
            {
                if (UserEmail.Equals(user.Email))
                {
                    //this means that we have a matching email//
                    ProcessResult = "Failed to create account as Email already exists in the database!, try logging in.";
                    return ProcessResult; // escape from the process as Email is found//
                }

            }

            //this means that we do not have a matching email - meaning the user can be registered//

            User NewUser = new User
            {

                Usernames = Usernames,
                Email = UserEmail,
                PhoneNum = UserPhone,
                PasswordHash = UserPass, //remember to hash this//
                IsAdmin = IsAdmin

            };

            dbaUbuntuBox.Users.InsertOnSubmit(NewUser);
            dbaUbuntuBox.SubmitChanges();

            ProcessResult = "Success";



            return ProcessResult;

        }
        
    }
}
