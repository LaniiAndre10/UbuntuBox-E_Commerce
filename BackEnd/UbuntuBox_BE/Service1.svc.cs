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
    //External Classes used: 1. Secrecy.cs for Password Hashing.//

    public class Service1 : IService1
    {
        //1. For password Encryption, Secrecy method is static, meaning that it can be called without creation on obj: @LaniiAndre10.//

        //2. Create the ORM of the database.//
        dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext(); //Gets database ORM//

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
                PasswordHash = UbuntuBox_BE.Secrecy.Secrecy.HashPassword(UserPass), //Hashed//
                IsAdmin = IsAdmin

            };

            dbaUbuntuBox.Users.InsertOnSubmit(NewUser);
            dbaUbuntuBox.SubmitChanges();

            ProcessResult = "Success";

            return ProcessResult;

        }

        public int LoginUser(string email, string password)
        {
                var checkInput = (from m in dbaUbuntuBox.Users where m.Email.Equals(email) && m.PasswordHash.Equals(UbuntuBox_BE.Secrecy.Secrecy.HashPassword(password)) select m).SingleOrDefault();

                if (checkInput != null && checkInput.IsAdmin==true)
                {
                    return 1;
                }
                else if(checkInput != null && checkInput.IsAdmin == false)
                {
                    return 2;
                }
                else
                {
                    return 0;
                }
              
        }

        public List<ProductWithImages> viewProducts()
        {
            //The goal is to return active products: @laniiAndre10//

            UbuntuBox_BE.Admin.ProductManagement productManagement = new Admin.ProductManagement();
            List<ProductWithImages> products = new List<ProductWithImages>();

            products = productManagement.ViewActiveProducts();

            return products;
            
        }

        public bool AddProduct(string imglink, string imglink2, string ProductName, string ProductCategory, string productDescription, double ProductPrice)
        {
            //The goal is to add a new product into the system: @LaniiAndre10//
            bool isSuccess = false;

            UbuntuBox_BE.Admin.ProductManagement productManagement = new Admin.ProductManagement();

            isSuccess = productManagement.AddProduct(imglink, imglink2, ProductName, ProductPrice, productDescription, ProductCategory);

            return isSuccess;

        }

        public bool UpdateProduct(string ProductID, string imglink, string imglink2, string ProductName, string ProductCategory, string productDescription, double ProductPrice)
        {
            //The goal is to Update an existing Product: @LaniiAndre10//

            bool IsUpdated = false;

            Admin.ProductManagement productManagement = new Admin.ProductManagement();

            IsUpdated = productManagement.UpdateProduct(ProductID, imglink, imglink2, ProductName, ProductCategory, ProductPrice, productDescription);

            return IsUpdated;
        }

        public Product RetrieveSearchProduct(string ProductID)
        {

            //The goal here is to retrieve the product that is desired: @laniiAndre10. //

            Admin.ProductManagement productManagement = new Admin.ProductManagement();
            var Product = productManagement.ReturnSearchedProduct(ProductID);

            return Product;
            
        }

        public bool DeleteUnwantedProduct(string ProductID)
        {
            //The goal here is to delete the unwanted Product: @LaniiAndre10. //

            bool IsDeleted;

            Admin.ProductManagement productManagement = new Admin.ProductManagement();

            IsDeleted = productManagement.DeleteProduct(ProductID);

            return IsDeleted;

        }

        public List<ProductImage> RetrieveSearchProductimgs(string ProductID)
        {
            //The goal is to return the list of SearchProduct: @LaniiAndre10.//

            Admin.ProductManagement productManagement = new Admin.ProductManagement();

            var ImageList = productManagement.ReturnProductImage(ProductID);

            return ImageList;

        }

        public List<User> GetActiveAdmins()
        {
            //The goal is to return the list of all the active admins: @LaniiAndre10//

            Admin.AdminManagement adminManagement = new Admin.AdminManagement();

            List<User> ActiveAdmins = adminManagement.GetActiveAdmins();

            return ActiveAdmins;

        }

        public bool AddAdmin(string ImageUrl, string PhoneNumber, string Usernames, string UserEmail, string Password)
        {

            //The goal is to add this admin to the database of available admins: @LaniiAndre10//

            bool ISUpdated = false;

            Admin.AdminManagement adminManagement = new Admin.AdminManagement();

            ISUpdated = adminManagement.AddAdmin(ImageUrl, PhoneNumber, Usernames, UserEmail, Password);

            return ISUpdated;

        }

        public User SearchAdmin(string WorkEmailAddress)
        {
            //The goal is to retrieve this admin using their EmailAddress : @LaniiAndre10//

            Admin.AdminManagement adminManagement = new Admin.AdminManagement();

            User ReqUser = adminManagement.SearchAdmin(WorkEmailAddress);

            return ReqUser;

        }

        public bool UpdateAdmin(string WorkEmail, string AdminImgUrl, string AdminName, string NewNumber)
        {
            //The goal is to update the data of a certain admin: @LaniiAndre10.//

            bool Isupdated;
            Admin.AdminManagement management = new Admin.AdminManagement();

           
            Isupdated = management.UpdateAdmin(WorkEmail, AdminImgUrl, AdminName, NewNumber);

            return Isupdated;

        }

        public bool RemoveAdmin(string WorkEmail)
        {
            //The goal is to remove an admin from the database: @LaniiAndre10.//

            Admin.AdminManagement adminManagement = new Admin.AdminManagement();

            bool IsDeleted = adminManagement.RemoveAdmin(WorkEmail);

            return IsDeleted;
            
        }
    }
}
