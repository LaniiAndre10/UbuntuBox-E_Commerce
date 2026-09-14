using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.Admin
{
    public class CustomerManagement
    {
        //This class is meant to contain the logic for the Customer Management UI: @LaniiAndre10.//

        UbuntuBox_BE.dbaUbuntuBoxDataContext UbuntuBoxDatabase = new dbaUbuntuBoxDataContext();

        //1. Create a function which will return a list of users in the database...//
        public List<User> ReturnCustomers()
        {

            //turn off deferredloading to avoid that socketException error.//
            UbuntuBoxDatabase.DeferredLoadingEnabled = false;

            var Customers = (from U in UbuntuBoxDatabase.Users where U.IsAdmin==false select U).ToList();

            return Customers;

        }

        //2. Create a function to return a customer searched by ID//
        public User SearchCustomer(String CustomerID)
        {
            //turn off deferredloading to avoid that socketException error.//
            UbuntuBoxDatabase.DeferredLoadingEnabled = false;

            int CustomID = int.Parse(CustomerID);

            var Customer = (from U in UbuntuBoxDatabase.Users where U.IsAdmin == false && U.UserID == CustomID select U).SingleOrDefault();

            return Customer;

        }

        //3. Create a function to get a customer by Id, and set their status to blocked//
        public bool BlockUser(String CustomerID)
        {
            //turn off deferredloading to avoid that socketException error.//
            UbuntuBoxDatabase.DeferredLoadingEnabled = false;

            bool isBlocked = false;

            var Customer = SearchCustomer(CustomerID);

            if(Customer != null)
            {

                //set their status to blocked, and update the database//
                Customer.UserStatus = "Blocked.";
                UbuntuBoxDatabase.SubmitChanges();

                isBlocked = true;

                return isBlocked;
            }
            else
            {
                return isBlocked;
            }
        }
    }

}