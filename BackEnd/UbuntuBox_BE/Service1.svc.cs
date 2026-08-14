using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Security.Cryptography;
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

        //create a hashing function to hash the passwords into the database//
        public static string HashPassword(string password)
        {
            SHA1 algorithm = SHA1.Create();
            byte[] byteArray = null;
            byteArray = algorithm.ComputeHash(Encoding.Default.GetBytes(password));
            string hashedPassword = "";
            for (int i = 0; i < byteArray.Length - 1; i++)
            {
                hashedPassword += byteArray[i].ToString("x2");
            }
            return hashedPassword;
        }


        public string RegisterUser(string Usernames, string UserEmail, string UserPhone, string UserPass, bool IsAdmin)
        {
            /*
             * @author: LaniiAndre10.
             * @version: 1.0.
             */
            string ProcessResult = " ";

            //1. first check if the user's entered email doesnt exist in the database//

            foreach (var user in dbaUbuntuBox.Users)
            {
                if (UserEmail.Equals(user.Email))
                {
                    //this means that we have a matching email//
                    ProcessResult = "Email already exists!, try logging in.";
                    return ProcessResult; // escape from the process as Email is found//
                }

                //also test for the phone numbers so that the SQL exeption may not break our application//
                if (UserPhone.Equals(user.PhoneNum))
                {
                    //this means we have a matching phone number//
                    ProcessResult = "Phone Number already exists, try another one or Log in!";
                    return ProcessResult;

                }

            }

            //this means that we do not have a matching phone number nor email - meaning the user can be registered//

            User NewUser = new User
            {

                Usernames = Usernames,
                Email = UserEmail,
                PhoneNum = UserPhone,
                PasswordHash = HashPassword(UserPass), //Hashed//
                IsAdmin = IsAdmin

            };

            dbaUbuntuBox.Users.InsertOnSubmit(NewUser);
            dbaUbuntuBox.SubmitChanges();

            ProcessResult = "Success";

            return ProcessResult;

        }
        
    }
}
