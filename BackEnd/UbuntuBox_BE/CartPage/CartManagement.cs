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
            }catch(Exception)
            { return false; }

            return true;
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
            }catch(Exception)
            { return false; }

            return true;
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

                if (cartItem.Quantity > 1)
                {
                    cartItem.Quantity--;

                    dbaUbuntuBox.SubmitChanges();

                    return true;
                }
            }catch(Exception)
            {  }

            return false;
        }
    }
}