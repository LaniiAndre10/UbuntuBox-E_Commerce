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
                tocart.CommandArgument = selectedProduct.ProductID.ToString();
                towishlist.CommandArgument = selectedProduct.ProductID.ToString();
                
            }

        }

        protected void tocart_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button btnclick = (System.Web.UI.WebControls.Button)sender;
            int productID = Convert.ToInt32(btnclick.CommandArgument);

            int userID = Convert.ToInt32(Session["UserID"]);
            bool IsAdded = client.AddToCart(userID, productID);

            if (IsAdded)
            {
                UserMaster master = (UserMaster)this.Master;
                master.showCartCount();
                Response.Write("Product added to cart");
            }
            else
            {
                Response.Write("Could not add product to cart");
            }
        }

        protected void towishlist_Click(object sender, EventArgs e)
        {
        }
    }
}