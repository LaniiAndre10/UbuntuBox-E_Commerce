using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace UbuntuBox_BE.Checkout
{
    public class Checkout
    {

        dbaUbuntuBoxDataContext dbaUbuntuBox = new dbaUbuntuBoxDataContext();

        //Checkout the items in the cart by adding them to the ordertable//
        public bool CheckoutCart(int userID)
        {
            try
            {
                // Get the user cart//
                var cart = dbaUbuntuBox.Carts.SingleOrDefault(c => c.UserID == userID);
                if (cart == null) return false;

                // Create a new order instance//
                Order newOrder = new Order
                {
                    UserID = userID,
                    OrderStatus = "Pending",
                    OrderDate = DateTime.Now //add the order time to now//
                };

                dbaUbuntuBox.Orders.InsertOnSubmit(newOrder);
                dbaUbuntuBox.SubmitChanges(); // Save to create an order it we will use in the bridging table//

                // Then push the items from the cart to the order bridging table //
                var cartItems = dbaUbuntuBox.CartItems.Where(ci => ci.CartID == cart.CartID).ToList();

                foreach (var ci in cartItems)
                {
                    OrderItem orderItem = new OrderItem
                    {
                        OrderID = newOrder.OrderID,
                        ProductID = ci.ProductID,
                        Quantity = ci.Quantity,
                        UnitPrice = dbaUbuntuBox.Products
                                    .Where(p => p.ProductID == ci.ProductID)
                                    .Select(p => p.Price)
                                    .SingleOrDefault()
                    };
                    dbaUbuntuBox.OrderItems.InsertOnSubmit(orderItem); //Then insert all the order items in the table//
                }

                // then clean the cart so that they can reuse the clean cart, if the order was checked out//
                dbaUbuntuBox.CartItems.DeleteAllOnSubmit(cartItems);
                dbaUbuntuBox.Carts.DeleteOnSubmit(cart);

                dbaUbuntuBox.SubmitChanges();
                return true;
            }
            catch
            {
                //Failed to place Order//
                return false;
            }

        }//end checkout//

        //Then add the function to generate an invoice for the placed order: Use text (IO) file writing, and format like a tillslip//
        public string GenerateTillSlip(int orderID)
        {
            var order = dbaUbuntuBox.Orders.SingleOrDefault(o => o.OrderID == orderID);
            var orderItems = (from oi in dbaUbuntuBox.OrderItems
                              join p in dbaUbuntuBox.Products on oi.ProductID equals p.ProductID
                              where oi.OrderID == orderID
                              select new { p.ProductName, oi.Quantity, oi.UnitPrice }).ToList();

            StringBuilder sb = new StringBuilder();

            sb.AppendLine("===================================");
            sb.AppendLine("         UBUNTUBOX RECEIPT         ");
            sb.AppendLine("===================================");
            sb.AppendLine($"Order ID: {order.OrderID}");
            sb.AppendLine($"Date: {DateTime.Now}");
            sb.AppendLine("-----------------------------------");
            sb.AppendLine("Item                Qty   Price   Total");
            sb.AppendLine("-----------------------------------");

            decimal grandTotal = 0;
            foreach (var item in orderItems)
            {
                decimal total = item.Quantity * item.UnitPrice;
                grandTotal += total;

                // Format with padding to get a till slip look. //
                sb.AppendLine($"{item.ProductName.PadRight(15)} {item.Quantity.ToString().PadLeft(3)}  R{item.UnitPrice,6:F2}  R{total,6:F2}");
            }

            sb.AppendLine("-----------------------------------");
            sb.AppendLine($"GRAND TOTAL:                R{grandTotal:F2}");
            sb.AppendLine("===================================");
            sb.AppendLine("   Thank you for shopping!        ");
            sb.AppendLine("===================================");

            return sb.ToString();
        }


    }
}