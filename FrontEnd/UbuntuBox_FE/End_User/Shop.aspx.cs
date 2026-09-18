using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.End_User
{
    public partial class Shop : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showProducts();
            }

            string attractionId = Request.QueryString["Id"];
            Attraction selectedAttraction = client.GetAttractionId(attractionId);

            if (selectedAttraction != null)
            {
                AttractionImage.ImageUrl = selectedAttraction.AttractionImageURL;
                lblAttractionName.Text = selectedAttraction.AttractionName;
                lblAttractionDes.Text = selectedAttraction.AttractionDescription;
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
                Response.Write("Product added to cart");
            }
            else 
            {
                Response.Write("Could not add product to cart");
            }
        }

        private void showProducts()
        {
            List<ProductWithImages> products = client.viewProducts().ToList();

            var groupedProducts = products.GroupBy(p => p.BoxCategory).ToList();

            rptCategories.DataSource = groupedProducts;
            rptCategories.DataBind();   
        }

    }
}
