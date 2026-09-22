using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.WishlistPage
{
    public class WishlistManagement
    {
        dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();

        public bool AddToWishlist(int userID, int productID)
        {

            var existingItem = (from wishlist in dbaUbuntuBox.Wishlists where wishlist.UserID == userID
                                && wishlist.ProductID == productID select wishlist).SingleOrDefault();

            if(existingItem != null)
            {
                return false;
            }

            //Creating a new wishlist item. //
            Wishlist newWishlistItem = new Wishlist
            {
                UserID = userID,
                ProductID = productID
            };

            //Inserting the wishlist item into the database. //
            dbaUbuntuBox.Wishlists.InsertOnSubmit(newWishlistItem);

            dbaUbuntuBox.SubmitChanges();

            return true;
        }

        public bool RemoveFromWishlist(int userID, int productID)
        {
            var wishlistItem = (from wishlist in dbaUbuntuBox.Wishlists where wishlist.UserID == userID
                                && wishlist.ProductID == productID select wishlist).SingleOrDefault();


            if (wishlistItem == null)
            {
                return false;
            }

            //Removiming the product from the Wishlist table. //
            dbaUbuntuBox.Wishlists.DeleteOnSubmit(wishlistItem);

            dbaUbuntuBox.SubmitChanges();


            return true;
        }

        public List<ProductWithImages> GetWishlist(int userID)
        {
            //Gettting  the products that belong to this users wishlist. //
            var wishlistProducts =
                (from wishlist in dbaUbuntuBox.Wishlists

                 join product in dbaUbuntuBox.Products
                 on wishlist.ProductID equals product.ProductID

                 where wishlist.UserID == userID

                 select new ProductWithImages
                 {
                     ProductID = product.ProductID,
                     AttractionID = product.AttractionID,
                     ProductName = product.ProductName,
                     ProductDescription = product.Description,
                     ProductPrice = product.Price,
                     BoxCategory = product.BoxCategory,
                     DateAdded = product.ProductDateAdded,
                     ProductStatus = product.ProductStatus,

             //Getting all images belonging to this product. //
             ImageUrls = (from image in dbaUbuntuBox.ProductImages
                                  where image.ProductID == product.ProductID
                                  select image.ImageURL).ToList()

                 }).ToList();


            return wishlistProducts;
        }
    }
}