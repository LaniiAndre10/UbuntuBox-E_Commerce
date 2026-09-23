using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace UbuntuBox_BE.CartPage
{
    public class CartManagement
    {
        UbuntuBox_BE.dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();
        public bool AddToCart(int userID, int productID)
        {

            try
            {

                var cart = (from c in dbaUbuntuBox.Carts
                            where c.UserID == userID
                            select c).SingleOrDefault();

                if (cart == null)
                {
                    cart = new Cart
                    {
                        UserID = userID,
                        CartDate = DateTime.Now,
                        //TotalAmount = 0,
                    };

                    dbaUbuntuBox.Carts.InsertOnSubmit(cart);
                    dbaUbuntuBox.SubmitChanges();
                }

                var cartItem = (from ci in dbaUbuntuBox.CartItems
                                where ci.CartID == cart.CartID
                                && ci.ProductID == productID
                                select ci).SingleOrDefault();

                if (cartItem != null)
                {
                    cartItem.Quantity++;
                }
                else
                {
                    var product = (from p in dbaUbuntuBox.Products
                                   where p.ProductID == productID
                                   select p).SingleOrDefault();

                    if (product == null)
                    {
                        return false;
                    }

                    CartItem newItem = new CartItem
                    {
                        CartID = cart.CartID,
                        ProductID = productID,
                        Quantity = 1,
                        //UnitPrice = product.Price
                    };
                    dbaUbuntuBox.CartItems.InsertOnSubmit(newItem);
                }
                dbaUbuntuBox.SubmitChanges();
               
            }
            catch (Exception) { return false; }

            return true;
        }


        public List<CartProductDetails> GetCartItems(int UserId)
        {
            var CartItems = (from ci in dbaUbuntuBox.CartItems
                             join c in dbaUbuntuBox.Carts on
                             ci.CartID equals c.CartID
                             join p in dbaUbuntuBox.Products on
                             ci.ProductID equals p.ProductID
                             where c.UserID == UserId
                             select new CartProductDetails
                             {
                                 CartItemID = ci.CartItemID,
                                 ProductID = ci.ProductID,
                                 ProductName = p.ProductName,
                                 Price = p.Price,
                                 BoxCategory = p.BoxCategory,
                                 Quantity = ci.Quantity,
                                 ItemPrice = (p.Price)*(ci.Quantity),
                                 ImageUrls = dbaUbuntuBox.ProductImages
                                 .Where(i => i.ProductID == ci.ProductID)
                                 .Select(i => i.ImageURL).ToList()
                             });

            return CartItems.ToList();
        
        }

        public bool RemoveFromCart(int userID, int productID)
        {
            try
            {

                var cart = (from c in dbaUbuntuBox.Carts
                            where c.UserID == userID
                            select c).SingleOrDefault();

                if (cart == null)
                { return false; }


                var cartItem = (from ci in dbaUbuntuBox.CartItems
                                where ci.CartID == cart.CartID
                                && ci.ProductID == productID
                                select ci).SingleOrDefault();

                if (cartItem == null)
                { return false; }


                dbaUbuntuBox.CartItems.DeleteOnSubmit(cartItem);
                dbaUbuntuBox.SubmitChanges();

                return true;

            }
            catch(Exception)
            { return false; }

        }

        public bool IncreaseQuantity(int userID, int productID)
        {
            try
            {

                var cart = (from c in dbaUbuntuBox.Carts
                            where c.UserID == userID
                            select c).SingleOrDefault();

                if (cart == null)
                { return false; }

                var cartItem = (from ci in dbaUbuntuBox.CartItems
                                where ci.CartID == cart.CartID
                                && ci.ProductID == productID
                                select ci).SingleOrDefault();

                if (cartItem == null)
                { return false; }


                cartItem.Quantity++;

                dbaUbuntuBox.SubmitChanges();

                return true;

            }
            catch(Exception)
            { return false; }

            
        }

        public bool DecreaseQuantity(int userID, int productID)
        {
            try
            {

                var cart = (from c in dbaUbuntuBox.Carts
                            where c.UserID == userID
                            select c).SingleOrDefault();

                if (cart == null)
                { return false; }

                var cartItem = (from ci in dbaUbuntuBox.CartItems
                                where ci.CartID == cart.CartID
                                && ci.ProductID == productID
                                select ci).SingleOrDefault();

                if (cartItem == null)
                { return false; }

                if (cartItem.Quantity <= 1)
                {
                    return false;
                }

                cartItem.Quantity--;

                dbaUbuntuBox.SubmitChanges();

                return true;

            }
            catch(Exception)
            { return false; }

        }

        public int GetCartItemCount(int UserID)
        {
            var cart = (from c in dbaUbuntuBox.Carts where
                        c.UserID == UserID
                        select c).SingleOrDefault();

            if (cart == null)
            { return 0; }


            int count = (from ct in dbaUbuntuBox.CartItems where
                         ct.CartID == cart.CartID select ct).Count();


            return count;

        }
    }
}