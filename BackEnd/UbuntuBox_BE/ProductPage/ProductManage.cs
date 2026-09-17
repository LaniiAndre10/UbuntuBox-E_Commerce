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
            var products = (from u in dbaUbuntuBox.Products select u).ToList();

            return products;
        }
    }
}