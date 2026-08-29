using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.Admin
{

    //1. This class is meant for creating all the admin functions related to Product Management. ( The Facade DP.): by LaniiAndre10. //

    public class ProductManagement
    {
        dbaUbuntuBoxDataContext Ubuntuboxdatabase = new dbaUbuntuBoxDataContext();//Access to dba ORM//

        //1.1: View Active Product Function.. returns a DTO: Tested.//
        public List<ProductWithImages> ViewActiveProducts()
        {
            //They say add this method to tackle the binding error//
            Ubuntuboxdatabase.DeferredLoadingEnabled = false;

            var ProductWithImages = from u in Ubuntuboxdatabase.Products
                                    where u.ProductStatus == true
                                    select new ProductWithImages
                                    {

                                        ProductID = u.ProductID,
                                        ProductName = u.ProductName,
                                        ProductDescription = u.Description,
                                        ProductPrice = u.Price,
                                        BoxCategory = u.BoxCategory,
                                        DateAdded = u.ProductDateAdded,
                                        ProductStatus = u.ProductStatus,
                                        ImageUrls = u.ProductImages.Select(i => i.ImageURL).ToList()

                                    };

            return ProductWithImages.ToList();
            
        }

        //1.2: Add Product Function: Tested.//
        public bool AddProduct(string imglink, string imglink2, string ProductName,
                        double ProductPrice, string ProductDescription, string Category)
        {
            try
            {
                // 1. Add the product
                var NewProduct = new Product
                {
                    ProductName = ProductName,
                    Price = (decimal)ProductPrice,
                    BoxCategory = Category,
                    Description = ProductDescription,
                    ProductStatus = true,
                    ProductDateAdded = DateTime.Now
                };

                Ubuntuboxdatabase.Products.InsertOnSubmit(NewProduct);
                Ubuntuboxdatabase.SubmitChanges();

                // 2. Add product images
                var DesiredProductImages = new List<ProductImage>();

                string defaultImage = "https://support.heberjahiz.com/hc/article_attachments/21013076295570"; //use a default image so that if they have nothing on the image URL, we could display a default, to avoid the out of bound excep..//

                // First image
                DesiredProductImages.Add(new ProductImage
                {
                    ProductID = NewProduct.ProductID,
                    ImageURL = string.IsNullOrEmpty(imglink) ? defaultImage : imglink
                });

                // Second image
                DesiredProductImages.Add(new ProductImage
                {
                    ProductID = NewProduct.ProductID,
                    ImageURL = string.IsNullOrEmpty(imglink2) ? defaultImage : imglink2
                });

                Ubuntuboxdatabase.ProductImages.InsertAllOnSubmit(DesiredProductImages);
                Ubuntuboxdatabase.SubmitChanges();

                return true;
            }
            catch
            {
                return false;
            }

        }


        //utility function to return desired product: Use this in the product search button event handle//
        public Product ReturnSearchedProduct(String ProductID)
        {

            var Productreq = (from u in Ubuntuboxdatabase.Products where u.ProductID.Equals(ProductID) select u).SingleOrDefault();

            return Productreq;

        }

        //Utility function forced by the SocketException, meant to return a ProductImage object//
        public List<ProductImage> ReturnProductImage()
        {
            //The challenge here may be that we have 2 images of the same productID//
            var DesiredImage = (from u in Ubuntuboxdatabase.ProductImages select u).ToList();

            return DesiredImage;

        }

        //1.3: Update Product function//
        public bool UpdateProduct(string productID, string imglink1, string imglink2, string ProductName, String ProductCategory, double ProductPrice, string ProductDescription)
        {

            bool isUpdated = false;

            /*the key here is to return a desired item found by the ProductID, then... display the data to the gui controls in the FE, then set the variables we take as params as data,
            that is in that controls, and push an update to the database regardless of the change state, this will update the data in the database*/

            //1.3.1: First return the desired Item; by helper//
            var DesiredProduct = ReturnSearchedProduct(productID);

            try { 

                // then push the text in the gui controls which is from the database into the params, and push params to function//
                //if the text changed, it will update it, if not, it will push the same text into the object, making no difference.//

                DesiredProduct.ProductName = ProductName;
                DesiredProduct.BoxCategory = ProductCategory;
                DesiredProduct.Price = (decimal)ProductPrice;
                DesiredProduct.Description = ProductDescription;

                //there are 2 images at max for a single product, find a list of all of them//
                List<ProductImage> DesiredProductImages = new List<ProductImage>();

                foreach(var Productwithimages in Ubuntuboxdatabase.ProductImages)
                {
                    if (Productwithimages.ProductID.Equals(productID))
                    {
                        DesiredProductImages.Add(Productwithimages);

                    }
                }

                //logical, at max, there must be 2 items in the list, so go through each index and update the productimages//
                DesiredProductImages[0].ImageURL = imglink1;
                DesiredProductImages[1].ImageURL = imglink2;

                Ubuntuboxdatabase.SubmitChanges();

                isUpdated = true;

            }
            catch
            {

                //the update process failed//
                isUpdated = false;

            }

            return isUpdated;

        }

        //1.4: Add the delete product function//
        public bool DeleteProduct(string ProductID)
        {

            bool isdeleted = false;

            //in the Ui you will run the Search product by student number and return the data to the user ( stats ).
            //then here you will delete the product with the give IP upon the delete product click//
            try
            {
                var UnwantedProduct = (from u in Ubuntuboxdatabase.Products where u.ProductID.Equals(ProductID) select u).SingleOrDefault();
                Ubuntuboxdatabase.Products.DeleteOnSubmit(UnwantedProduct);

                Ubuntuboxdatabase.SubmitChanges();

                isdeleted = true;
            }
            catch
            {
                isdeleted = false;

            }

            return isdeleted;
        }


    }
}