using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.Admin
{
    public class AdminManagement
    {
        //This class is meant to contain the logic for the Admin Management UI: @LaniiAndre10.//

        UbuntuBox_BE.dbaUbuntuBoxDataContext UbuntuBoxDatabase = new dbaUbuntuBoxDataContext();

        //1.1: Define the function to return all users who are type admin and their User Statuses are active//
        public List<User> GetActiveAdmins()
        {
            UbuntuBoxDatabase.DeferredLoadingEnabled = false; //avoiding SocketConnection error//

            List<User> ActiveAdmins = (from u in UbuntuBoxDatabase.Users where u.IsAdmin == true && u.UserStatus.Equals("Active") select u).ToList();

            return ActiveAdmins;

        }

        //1.2: Define the function to add an admin to the database//
        public bool AddAdmin(string imageUrl, string phoneNumber, string username, string userEmail, string password)
        {
            bool isadded = false;

            try
            {
                // Check if a user exists with BOTH the same PhoneNum AND Email
                var existingAdmin = (from u in UbuntuBoxDatabase.Users
                                     where u.PhoneNum == phoneNumber && u.Email == userEmail
                                     select u).SingleOrDefault();

                if (existingAdmin == null)
                {
                    var newAdmin = new User
                    {
                        Usernames = username,
                        IsAdmin = true,
                        ProfileImgURL = imageUrl,
                        PhoneNum = phoneNumber,
                        Email = userEmail,
                        UserStatus = "Active",
                        UserDateAdded = DateTime.Now,
                        PasswordHash = Secrecy.Secrecy.HashPassword(password)
                    };

                    UbuntuBoxDatabase.Users.InsertOnSubmit(newAdmin);
                    UbuntuBoxDatabase.SubmitChanges();
                    isadded = true;
                }
                // else: user with BOTH phone AND email exists, return false

                return isadded;
            }
            catch
            {
                // Log the errors
                return false;
            }
        }
    }

}