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
                IsAdmin = IsAdmin,
                UserStatus = "Active"

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

            Admin.ProductManagement productManagement = new Admin.ProductManagement();
            List<ProductWithImages> products = productManagement.ViewActiveProducts();

            //products = productManagement.ViewActiveProducts();

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

        public List<AttractionDetails> getAttractionList()
        {
            LandingPage.PopulationManagement populationManagement = new LandingPage.PopulationManagement();

            List<AttractionDetails> attractions = populationManagement.getAttractionList();

            return attractions;

        }

        public List<User> ReturnCustomers()
        {

            //The goal is to return a list of customers from the database: @LaniiAndre10. //

            Admin.CustomerManagement customerManagement = new Admin.CustomerManagement();

            var Customers = customerManagement.ReturnCustomers();

            return Customers;

        }

        public User SearchCustomer(string CustomerID)
        {
            //The goal is to retrieve a customer searched by ID: @LaniiAndre10. //

            Admin.CustomerManagement customerManagement = new Admin.CustomerManagement();

            var Customer = customerManagement.SearchCustomer(CustomerID);

            return Customer;

        }

        public bool BlockUser(string CustomerID)
        {
            //The goal here is to change the user status from Active to blocked!: @LaniiAndre10. //

            bool IsBlocked = false;
            Admin.CustomerManagement customerManagement = new Admin.CustomerManagement();

            IsBlocked = customerManagement.BlockUser(CustomerID);

            return IsBlocked;
            
        }

        public List<OrderDetails> ReturnPendingOrders()
        {

            //The goal here is to return all the orders that are pending: @LaniiAndre10. //

            Admin.OrderManagement orderManagement = new Admin.OrderManagement();

            List<OrderDetails> Orders = orderManagement.ReturnPendingOrders();

            return Orders;

        }

        public bool CompleteOrder(string OrderID)
        {

            //The goal here is to change the status of a pending order to complete: @LaniiAndre10. //

            bool IsUpdated = false;
            Admin.OrderManagement orderManagement = new Admin.OrderManagement();

            IsUpdated = orderManagement.CompleteOrder(OrderID);

            return IsUpdated;
            
        }

        public List<OrderDetails> ReturnCompleteOrders()
        {
            //The goal here is to return all the orders that are Completed: @LaniiAndre10. //

            Admin.OrderManagement orderManagement = new Admin.OrderManagement();

            List<OrderDetails> Orders = orderManagement.ReturnCompleteOrders();

            return Orders;

        }

        public List<OrderReturns> ReturnOrdersWithReturns()
        {
            //The goal here is to return all returned orders: @LaniiAndre. //

            Admin.OrderManagement orderManagement = new Admin.OrderManagement();

            List<OrderReturns> LoggedReturns = orderManagement.ReturnOrdersWithReturns();


            return LoggedReturns;

        }

        public List<CancelledOrders> ReturnCancelledOrders()
        {
            //The goal is to return all the cancelled Orders: @LaniiAndre10. //

            Admin.OrderManagement orderManagement = new Admin.OrderManagement();

            var CancelledOrders = orderManagement.ReturnCancelledOrders();

            return CancelledOrders;

        }

        public string GrantUserReward(string CustomerID, int PercentageOff)
        {
            //The goal here is to grant our user the given percent off: @LaniiAndre10.

            Admin.CustomerManagement customerManagement = new Admin.CustomerManagement();

            String Results = customerManagement.GrantUserReward(CustomerID, PercentageOff);

            return Results;

        }

        public CustomerStat SearchCustomerDetails(string CustomerID)
        {
            //The goal here is to retrieve data from the customer stats table: @LaniiAndre10.

            Admin.CustomerManagement customerManagement = new Admin.CustomerManagement();

            var CustomerData = customerManagement.SearchCustomerDetails(CustomerID);

            return CustomerData;

        }

        public bool AddToCart(int userID, int productID)
        {
            CartPage.CartManagement cartManagement = new CartPage.CartManagement();

            bool result = cartManagement.AddToCart(userID, productID);

            return result;
        }

        public bool RemoveFromCart(int userID, int productID)
        {
            CartPage.CartManagement cartManagement = new CartPage.CartManagement();

            bool Isremoved = cartManagement.RemoveFromCart(userID, productID);

            return Isremoved;
        }

        public bool IncreaseQuantity(int userID, int productID)
        {
            CartPage.CartManagement cartManagement = new CartPage.CartManagement();

            bool QIncreased = cartManagement.IncreaseQuantity(userID, productID);

            return QIncreased;
        }

        public bool DecreaseQuantity(int userID, int productID)
        {
            CartPage.CartManagement cartManagement = new CartPage.CartManagement();

            bool QDecreased = cartManagement.DecreaseQuantity(userID, productID);

            return QDecreased;
        }

        public List<Product> getProducts()
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();

            List<Product> products = productManagement.getProducts();

            return products;
        }

        public int GetUserId(string email)
        {
            var userId = (from u in dbaUbuntuBox.Users
                          where u.Email == email
                          select u).SingleOrDefault();

            if (userId == null)
            {
                return 0;
            }

            return userId.UserID;
        }

        public ProductWithImages GetProductId(int productID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();

            ProductWithImages products = productManagement.GetProductId(productID);

            return products;
        }

        public AttractionDetails GetAttractionId(int attractionID)
        {
            LandingPage.PopulationManagement populationManagement = new LandingPage.PopulationManagement();

            var attraction = populationManagement.GetAttractionId(attractionID);

            return attraction;
        }

        public List<ProductWithImages> GetProductsByDestination(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();

            List<ProductWithImages> products = productManagement.GetProductsByDestination(attractionID);

            return products;
        }

        //Product Management - Filter by Standard box: @LaniiAndre10.//
        public List<ProductWithImages> GetStandardProducts(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.GetStandardProducts(attractionID);
            return products;
        }

        //Product Management - Filter by Premium box: @LaniiAndre10.//
        public List<ProductWithImages> GetPremiumProducts(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.GetPremiumProducts(attractionID);
            return products;
        }

        //Product Management - Filter by Mystery box: @LaniiAndre10.//
        public List<ProductWithImages> GetMysteryProducts(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.GetMysteryProducts(attractionID);
            return products;
        }

        //Product Management - Sort by Ascending Price: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyAscPrice(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.SortProductsbyAscPrice(attractionID);
            return products;
        }

        //Product Management - Sort by Descending Price: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyDescPrice(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.SortProductsbyDescPrice(attractionID);
            return products;
        }

        //Product Management - Sort by Latest Date: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyLatestDate(int attractionID)
        {
            ProductPage.ProductManage productManagement = new ProductPage.ProductManage();
            List<ProductWithImages> products = productManagement.SortProductsbyLatestDate(attractionID);
            return products;
        }

    }
}
