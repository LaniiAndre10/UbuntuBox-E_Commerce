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
    }
}