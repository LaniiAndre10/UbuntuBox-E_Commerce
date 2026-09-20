using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.End_User
{
    public partial class standardbox : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            int productID = int.Parse(Request.QueryString["id"]);
            ProductWithImages selectedProduct = client.GetProductId(productID);

            if (selectedProduct != null)
            {
                lblCategory.Text = selectedProduct.BoxCategory;
                lblPrice.Text = selectedProduct.ProductPrice.ToString();
                lblDes.Text = selectedProduct.ProductDescription;
            }
        }
    }
}