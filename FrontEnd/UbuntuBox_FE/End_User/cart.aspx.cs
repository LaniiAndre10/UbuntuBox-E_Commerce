using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.End_User
{
    public partial class cart : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showCartItems();
            }
        }

        protected void RemoveItem_Click(object sender, EventArgs e)
        {

            System.Web.UI.WebControls.LinkButton btnclick = (System.Web.UI.WebControls.LinkButton)sender;
            int productID = Convert.ToInt32(btnclick.CommandArgument);

            int userID = Convert.ToInt32(Session["UserID"]);

            bool IsRemoved = client.RemoveFromCart(userID, productID);

            if (IsRemoved)
            {
               
                Response.Redirect("cart.aspx"); 
            }
            else 
            {
                Response.Write("Could not remove product from cart");
            }

        }

        protected void DecreaseQuantity_Click(object sender, EventArgs e)
        {

            System.Web.UI.WebControls.Button btnclick = (System.Web.UI.WebControls.Button)sender;
            int productID = Convert.ToInt32(btnclick.CommandArgument);

            int userID = Convert.ToInt32(Session["UserID"]);

            bool IsDecreased = client.DecreaseQuantity(userID, productID);

            if (IsDecreased)
            {
                showCartItems();
                Response.Write("Product quantity decreased");
            }
            else
            {
                Response.Write("Could not decrease quantity below 1");
            }

        }

        protected void IncreaseQuantity_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Button btnclick = (System.Web.UI.WebControls.Button)sender;
            int productID = Convert.ToInt32(btnclick.CommandArgument);

            int userID = Convert.ToInt32(Session["UserID"]);

            bool IsIncreasd = client.IncreaseQuantity(userID, productID);

            if (IsIncreasd)
            {
                showCartItems();
                Response.Write("Product quantity increased");
            }
            else
            {
                Response.Write("could not increase quantity");
            }

        }


        private void showCartItems()
        {
            int userID = Convert.ToInt32(Session["UserID"]);
            var items = client.GetCartItems(userID).ToList();
            rptCartItems.DataSource = items;
            rptCartItems.DataBind();
        }

    }
}