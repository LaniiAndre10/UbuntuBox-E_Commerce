using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE
{
    public partial class standardbox : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            string productID = Request.QueryString["id"];
            Product selectedProduct = client.GetProductId(productID);

            /*if (selectedProduct != null)
            { 
            ProductImage.ImageUr1 = 
            }*/
        }
    }
}