using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin
{
    public partial class ProductManagement : System.Web.UI.Page
    {
        //The goal is to dynamically display active Products: @LaniiAndre10. //
        UbuntuBox_FE.ServiceReference1.Service1Client FunctionalityClient = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                displayActiveProducts();

            }

        }

        private void displayActiveProducts()
        {

            // WCF returns arrays, so we need to convert the Array to a list//
             ProductWithImages[] productWithImages = FunctionalityClient.viewProducts();
            List<ProductWithImages> productsArray = productWithImages.ToList();

            // Bind the data to a repeater//
            RowRepeater.DataSource = productsArray;
            RowRepeater.DataBind();

        }

    }
}