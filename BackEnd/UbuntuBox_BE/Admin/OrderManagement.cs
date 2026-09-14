using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using UbuntuBox_BE;

namespace UbuntuBox_BE.Admin
{
    public class OrderManagement
    {
        //This class is meant to Manage the orders placed by our customers: @LaniiAndre10. //

        dbaUbuntuBoxDataContext Mydatabase = new dbaUbuntuBoxDataContext();

        //1. First, create a function to return a list of all the pending orders in the database, Using the DTO.//
        public List<OrderDetails> ReturnPendingOrders()
        {

            //turn defferedloading off, to avoid Socket Communication Exception //
            Mydatabase.DeferredLoadingEnabled = false;
            
                var query = from o in Mydatabase.Orders
                            join oi in Mydatabase.OrderItems on o.OrderID equals oi.OrderID
                            join p in Mydatabase.Products on oi.ProductID equals p.ProductID
                            where o.OrderStatus == "Pending"
                            select new OrderDetails
                            {
                                OrderID = o.OrderID,
                                UserID = o.UserID,
                                OrderStatus = o.OrderStatus,
                                OrderDate = o.OrderDate,
                                ProductID = p.ProductID,
                                ProductName = p.ProductName,
                                ProductPrice = p.Price
                            };

                return query.ToList();
            
        }

        //2. Then create a function that takes in an orderID, and changes the status to complete.//
        public bool CompleteOrder(String OrderID)
        {
            bool isUpdated = false;

            //convert the OrderId to int//
            int ParsedID = int.Parse(OrderID);

            var TargetOrder = (from u in Mydatabase.Orders where u.OrderID == ParsedID select u).SingleOrDefault();

            if (TargetOrder != null)
            {
                //then what we need to do is change that order status, if the ID exists//

                TargetOrder.OrderStatus = "Completed";
                Mydatabase.SubmitChanges();

                isUpdated = true;

                return isUpdated;

            }
            else
            {
                return isUpdated;
            }

        }

        //3. Then, create a function to return a list of all the complete orders in the database//

        public List<OrderDetails> ReturnCompleteOrders()
        {

            //turn defferedloading off, to avoid Socket Communication Exception //
            Mydatabase.DeferredLoadingEnabled = false;

            var query = from o in Mydatabase.Orders
                        join oi in Mydatabase.OrderItems on o.OrderID equals oi.OrderID
                        join p in Mydatabase.Products on oi.ProductID equals p.ProductID
                        where o.OrderStatus == "Completed"
                        select new OrderDetails
                        {
                            OrderID = o.OrderID,
                            UserID = o.UserID,
                            OrderStatus = o.OrderStatus,
                            OrderDate = o.OrderDate,
                            ProductID = p.ProductID,
                            ProductName = p.ProductName,
                            ProductPrice = p.Price
                        };

            return query.ToList();

        }

        //4. Then create a function to return all the Orders that have been returned.
        public List<OrderReturns> ReturnOrdersWithReturns()
        {

                var query = from r in Mydatabase.OrderReturns
                            join oi in Mydatabase.OrderItems on r.OrderID equals oi.OrderID
                            join p in Mydatabase.Products on oi.ProductID equals p.ProductID
                            select new OrderReturns
                            {
                                OrderID = r.OrderID,
                                ProductID = p.ProductID,
                                ProductName = p.ProductName,
                                ReturnDateLog = r.ReturnLogDate,
                                Status = r.ReturnStatus,
                                ReturnReason = r.ReturnReason
                            };

                return query.ToList();

        }


        //5. Then create a function to return all the items that are in the cancelled.
        public List<CancelledOrders> ReturnCancelledOrders()
        {
            
                var query = from c in Mydatabase.OrderCancellations
                            join o in Mydatabase.Orders on c.OrderID equals o.OrderID
                            join oi in Mydatabase.OrderItems on o.OrderID equals oi.OrderID
                            join p in Mydatabase.Products on oi.ProductID equals p.ProductID
                            select new CancelledOrders
                            {
                                OrderID = o.OrderID,
                                CustomerID = o.UserID,
                                ProductID = p.ProductID,
                                ProductName = p.ProductName,
                                CancellationDate = c.CancellationDate,
                                CancellationReason = c.CancellationReason
                            };

                return query.ToList();
        }
        

    }

}