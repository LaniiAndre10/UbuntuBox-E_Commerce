using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

namespace UbuntuBox_BE
{
    //This serves as an interface containing the core methods needed in the service...//
    [ServiceContract]
    public interface IService1
    {
        // TODO: Add your service operations here

        //add the Register function: @LaniiAndre10.//
        [OperationContract]
        public string RegisterUser(string Usernames, string UserEmail, string UserPhone, string UserPass, bool IsAdmin);

        //add the Login function: @TLethabo.//
        [OperationContract]
        public int LoginUser(string email, string password);

        //Admin - Product Management --> View Product: @laniiAndre10. //
        [OperationContract]
        public List<ProductWithImages> viewProducts();

        //Admin - Product Management --> Add Product: @laniiAndre10. //
        [OperationContract]
        public bool AddProduct(string imglink, string imglink2, string ProductName, string ProductCategory, string productDescription, double ProductPrice);

        //Admin - Product Management --> Update Product: @LaniiAndre10. //
        [OperationContract]
        public bool UpdateProduct(string ProductID, string imglink, string imglink2, string ProductName, string ProductCategory, string productDescription, double ProductPrice);

        //Admin - Product Management --> Search Product: @LaniiAndre10. //
        [OperationContract]
        public Product RetrieveSearchProduct(string ProductID);

        //Admin - Product Management --> Retrieve Search Product Images: @LaniiAndre10. //
        [OperationContract]
        public List<ProductImage> RetrieveSearchProductimgs(String ProductID);

        //Admin - Product Management --> Delete Product: @LaniiAndre10. //
        [OperationContract]
        public bool DeleteUnwantedProduct(string ProductID);

        //Admin - Admin Management --> View Active Admins: @LaniiAndre10. //
        [OperationContract]
        public List<User> GetActiveAdmins();

        //Admin - Admin Management --> Add New Admin: @LaniiAndre10. //
        [OperationContract]
        public bool AddAdmin(string ImageUrl, string PhoneNumber, string Usernames, string UserEmail, string Password);

        //Admin - Admin Managament --> Search Admin: @LaniiAndre10. //
        [OperationContract]
        public User SearchAdmin(String WorkEmailAddress);

        //Admin - Admin Management --> Update Admin Details: @LaniiAndre10. //
        [OperationContract]
        public bool UpdateAdmin(String WorkEmail, String AdminImgUrl, String AdminName, String NewNumber);

        //Admin - Admin Management --> Delete Admin from the Database: @LaniiAndre10. //
        [OperationContract]
        public bool RemoveAdmin(String WorkEmail);

        //Landing-Page - Population Management --> Populate Attractions from Database: @TLethabo. //
        [OperationContract]
        public List<Attraction> getAttractionList();
        //Admin - Customer Management --> Show A list of Customers using the platform: @LaniiAndre10.  //
        [OperationContract]
        public List<User> ReturnCustomers();

        //Admin - Customer Management --> Retrieve A customer by ID: @LaniiAndre10. //
        [OperationContract]
        public User SearchCustomer(String CustomerID);

        //Admin - Customer Management --> Block User: @LaniiAndre10.//
        [OperationContract]
        public bool BlockUser(String CustomerID);

        //Admin - Order Management --> Return pending Orders: @LaniiAndre10. //
        [OperationContract]
        public List<OrderDetails> ReturnPendingOrders();

        //Admin - Order Management --> Complete an Order: @LaniiAndre10. //
        [OperationContract]
        public bool CompleteOrder(String OrderID);

        //Admin - Order Management --> Return Completed Orders: @LaniiAndre10. //
        [OperationContract]
        public List<OrderDetails> ReturnCompleteOrders();

        //Admin - Order Management --> Return LoggedReturnOrders: @LaniiAndre10. //
        [OperationContract]
        public List<OrderReturns> ReturnOrdersWithReturns();
        //Admin - Order Management --> Return Cancelled Orders: @LaniiAndre10. //
        [OperationContract]
        public List<CancelledOrders> ReturnCancelledOrders();

        //Admin - Admin Management --> Grant User Reward: @LaniiAndre10. //
        [OperationContract]
        public String GrantUserReward(String CustomerID, int PercentageOff);

        //Admin -- Admin Management --> Retrieve Customer Stats: @LaniiAndre10. //
        [OperationContract]
        public CustomerStat SearchCustomerDetails(String CustomerID);


    }

    //Add a datacontract for Product + ProductImages to tackle the Socket/Communication Exception issue//
    [DataContract]
    public class ProductWithImages
    {
        [DataMember] public int ProductID { get; set; }
        [DataMember] public string ProductName { get; set; }
        [DataMember] public string ProductDescription { get; set; }
        [DataMember] public decimal ProductPrice { get; set; }
        [DataMember] public string BoxCategory { get; set; }
        [DataMember] public DateTime DateAdded { get; set; }
        [DataMember] public bool ProductStatus { get; set; }

        //add the list of images from the product Image table//
        [DataMember] public List<string> ImageUrls { get; set; }

    }

    //Add a datacontract for the orders, with product Name, Product ID, Price etc//
    [DataContract]
    public class OrderDetails
    {

        [DataMember] public int OrderID { get; set; }
        [DataMember] public int UserID { get; set; }
        [DataMember] public String OrderStatus { get; set; }
        [DataMember] public DateTime OrderDate { get; set; }
        [DataMember] public int ProductID { get; set; }
        [DataMember] public String ProductName { get; set; }
        [DataMember] public decimal ProductPrice { get; set; }

    }

    //Add a datacontract for the orderReturns, with ProductID, Product Name, Status, ReturnDate, Reason for Return
    [DataContract]
    public class OrderReturns
    {
        [DataMember] public int OrderID { get; set; }
        [DataMember] public int ProductID { get; set; }
        [DataMember] public String ProductName { get; set; }
        [DataMember] public DateTime ReturnDateLog { get; set; }
        [DataMember] public String Status { get; set; }
        [DataMember] public String ReturnReason { get; set; }

    }

    //Add a dataContract for the OrderCancellations, with OrderID, CustomerID, Product Name, ProductID, Cancellation Date, Reason For Cancellation. //
    [DataContract]
    public class CancelledOrders
    {
        [DataMember] public int OrderID { get; set; }
        [DataMember] public int CustomerID { get; set; }
        [DataMember] public String ProductName { get; set; }
        [DataMember] public int ProductID { get; set; }
        [DataMember] public DateTime CancellationDate { get; set; }
        [DataMember] public String CancellationReason { get; set; }

    }
    
}
