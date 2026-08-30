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
    
}
