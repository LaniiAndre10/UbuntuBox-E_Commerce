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

        //Product Management - Filter by Standard box: @LaniiAndre10.//
        public List<ProductWithImages> GetStandardProducts(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var Standardproducts = (from u in dbaUbuntuBox.Products
                                    where u.BoxCategory.Equals("Standard")
                                       && u.AttractionID == attractionID
                                    select new ProductWithImages
                                    {
                                        ProductID = u.ProductID,
                                        AttractionID = u.AttractionID,
                                        ProductName = u.ProductName,
                                        ProductDescription = u.Description,
                                        ProductPrice = u.Price,
                                        BoxCategory = u.BoxCategory,
                                        ProductStatus = u.ProductStatus,
                                        DateAdded = u.ProductDateAdded,
                                        ImageUrls = dbaUbuntuBox.ProductImages
                                        .Where(i => i.ProductID == u.ProductID)
                                        .Select(i => i.ImageURL).ToList()
                                    }).ToList();


            return Standardproducts;
        }

        //Product Management - Filter by Premium box: @LaniiAndre10.//
        public List<ProductWithImages> GetPremiumProducts(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var Premiumproducts = (from u in dbaUbuntuBox.Products
                                   where u.BoxCategory.Equals("Premium")
                                      && u.AttractionID == attractionID
                                   select new ProductWithImages
                                   {
                                       ProductID = u.ProductID,
                                       AttractionID = u.AttractionID,
                                       ProductName = u.ProductName,
                                       ProductDescription = u.Description,
                                       ProductPrice = u.Price,
                                       BoxCategory = u.BoxCategory,
                                       ProductStatus = u.ProductStatus,
                                       DateAdded = u.ProductDateAdded,
                                        ImageUrls = dbaUbuntuBox.ProductImages
                               .Where(i => i.ProductID == u.ProductID)
                               .Select(i => i.ImageURL).ToList()
                                   }).ToList();

            return Premiumproducts;
        }

        //Product Management - Filter by Mystery box: @LaniiAndre10.//
        public List<ProductWithImages> GetMysteryProducts(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var Mysteryproducts = (from u in dbaUbuntuBox.Products
                                   where u.BoxCategory.Equals("Mystery")
                                      && u.AttractionID == attractionID
                                   select new ProductWithImages
                                   {
                                       ProductID = u.ProductID,
                                       AttractionID = u.AttractionID,
                                       ProductName = u.ProductName,
                                       ProductDescription = u.Description,
                                       ProductPrice = u.Price,
                                       BoxCategory = u.BoxCategory,
                                       ProductStatus = u.ProductStatus,
                                       DateAdded = u.ProductDateAdded,
                                        ImageUrls = dbaUbuntuBox.ProductImages
                               .Where(i => i.ProductID == u.ProductID)
                               .Select(i => i.ImageURL).ToList()
                                   }).ToList();

            return Mysteryproducts;
        }

        //Product Management - Sort by Ascending Price: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyAscPrice(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var products = (from u in dbaUbuntuBox.Products
                            where u.AttractionID == attractionID
                            orderby u.Price select new ProductWithImages
                            {
                                ProductID = u.ProductID,
                                AttractionID = u.AttractionID,
                                ProductName = u.ProductName,
                                ProductDescription = u.Description,
                                ProductPrice = u.Price,
                                BoxCategory = u.BoxCategory,
                                ProductStatus = u.ProductStatus,
                                DateAdded = u.ProductDateAdded,
                                 ImageUrls = dbaUbuntuBox.ProductImages
                               .Where(i => i.ProductID == u.ProductID)
                               .Select(i => i.ImageURL).ToList()
                            }).ToList();

            return products;
        }

        //Product Management - Sort by Descending Price: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyDescPrice(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var products = (from u in dbaUbuntuBox.Products
                            where u.AttractionID == attractionID
                            orderby u.Price descending
                            select new ProductWithImages
                            {
                                ProductID = u.ProductID,
                                AttractionID = u.AttractionID,
                                ProductName = u.ProductName,
                                ProductDescription = u.Description,
                                ProductPrice = u.Price,
                                BoxCategory = u.BoxCategory,
                                ProductStatus = u.ProductStatus,
                                DateAdded = u.ProductDateAdded,
                                 ImageUrls = dbaUbuntuBox.ProductImages
                               .Where(i => i.ProductID == u.ProductID)
                               .Select(i => i.ImageURL).ToList()
                            }).ToList();

            return products;
        }

        //Product Management - Sort by Latest Date: @LaniiAndre10.//
        public List<ProductWithImages> SortProductsbyLatestDate(int attractionID)
        {
            dbaUbuntuBox.DeferredLoadingEnabled = false;

            var products = (from u in dbaUbuntuBox.Products
                            where u.AttractionID == attractionID
                            orderby u.ProductDateAdded descending
                            select new ProductWithImages
                            {
                                ProductID = u.ProductID,
                                AttractionID = u.AttractionID,
                                ProductName = u.ProductName,
                                ProductDescription = u.Description,
                                ProductPrice = u.Price,
                                BoxCategory = u.BoxCategory,
                                ProductStatus = u.ProductStatus,
                                DateAdded = u.ProductDateAdded,
                                ImageUrls = dbaUbuntuBox.ProductImages
                               .Where(i => i.ProductID == u.ProductID)
                               .Select(i => i.ImageURL).ToList()
                            }).ToList();

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

        result.ImageUrls = dbaUbuntuBox.ProductImages
            .Where(i => i.ProductID == product.ProductID)
            .Select(i => i.ImageURL).ToList();


        return result;

    }

    public List<ProductWithImages> GetProductsByDestination(int attractionID)
    {


        var products = (from p in dbaUbuntuBox.Products
                        where p.AttractionID == attractionID
                        select new ProductWithImages
                        {

                            ProductID = p.ProductID,
                            AttractionID = p.AttractionID,
                            ProductName = p.ProductName,
                            ProductDescription = p.Description,
                            ProductPrice = p.Price,
                            BoxCategory = p.BoxCategory,
                            ProductStatus = p.ProductStatus,
                            DateAdded = p.ProductDateAdded,
                            ImageUrls = dbaUbuntuBox.ProductImages
                            .Where(i => i.ProductID == p.ProductID)
                            .Select(i => i.ImageURL).ToList()

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