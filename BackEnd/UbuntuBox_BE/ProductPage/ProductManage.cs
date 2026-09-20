using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.ProductPage
{
    public class ProductManage
    {
        UbuntuBox_BE.dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();
        public List<Product> getProducts()
        {
            var products = (from u in dbaUbuntuBox.Products
                            select u).ToList();

            return products;
        }

        public ProductWithImages GetProductId(int productID)
        {

            var product = (from p in dbaUbuntuBox.Products where
                            p.ProductID == productID select p).SingleOrDefault();

            if (product == null)
            { return null; }

            ProductWithImages result = new ProductWithImages();

            result.ProductID = product.ProductID;
            result.ProductName = product.ProductName;
            result.ProductDescription = product.Description;
            result.ProductPrice = product.Price;
            result.BoxCategory = product.BoxCategory;
            result.ProductStatus = product.ProductStatus;
            result.DateAdded = product.ProductDateAdded;
            

            return result;
        
        }

        public List<ProductWithImages> GetProductsByDestination(int attractionID)
        {

            
            var products = (from p in dbaUbuntuBox.Products where
                            p.AttractionID == attractionID select new ProductWithImages
                            {

                                ProductID = p.ProductID,
                                AttractionID = p.AttractionID,
                                ProductName = p.ProductName,
                                ProductDescription = p.Description,
                                ProductPrice = p.Price,
                                BoxCategory = p.BoxCategory,
                                ProductStatus = p.ProductStatus,
                                DateAdded = p.ProductDateAdded

                              });


            return products.ToList();
        
        }


        public List<AttractionDetails> getAttractionList()
        {
            var attractions = (from u in dbaUbuntuBox.Attractions
                               select new AttractionDetails
                               {

                                   AttractionID = u.AttractionID,
                                   AttractionName = u.AttractionName,
                                   AttractionDescription = u.AttractionDescription,
                                   Province = u.Province,
                                   AttractionImageUrls = u.AttractionImageURL

                               });


            return attractions.ToList();
        }
    }
}