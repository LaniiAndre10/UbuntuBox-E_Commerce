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
            int attractionId = int.Parse(Request.QueryString["Id"]);

            if (!IsPostBack)
            {

                var products = client.GetProductsByDestination(attractionId);
                rptProducts.DataSource = products;
                rptProducts.DataBind();

            }

           
            AttractionDetails selectedAttraction = client.GetAttractionId(attractionId);

            if (selectedAttraction != null)
            {
                 
                AttractionImage.ImageUrl = selectedAttraction.AttractionImageUrls;
                lblAttractionName.Text = selectedAttraction.AttractionName;
                lblAttractionDes.Text = selectedAttraction.AttractionDescription;
                
            }

        }

        protected void BoxFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Box Filtering: @LaniiAndre10.//

            string selectedValue = BoxFilter.Value;
            int attractionId = int.Parse(Request.QueryString["Id"]);

            switch (selectedValue)
            {
                case "All":
                    {

                        //Set the data source to display all the items..//
                        var Allproducts = client.GetProductsByDestination(attractionId);

                        rptProducts.DataSource = Allproducts;

                        break;

                    }

                case "Standard":
                    {

                        //Set the data source to display all the  Standard items..//
                        var Standardproducts = client.GetStandardProducts(attractionId);

                        rptProducts.DataSource = Standardproducts;

                        break;

                    }
                case "Premium":
                    {

                        //Set the data source to display all the  Premium items..//
                        var Premiumproducts = client.GetPremiumProducts(attractionId);

                        rptProducts.DataSource = Premiumproducts;

                        break;

                    }
                case "Mystery":
                    {

                        //Set the data source to display all the  Standard items..//
                        var Mysteryproducts = client.GetMysteryProducts(attractionId);

                        rptProducts.DataSource = Mysteryproducts;

                        break;

                    }
            }

            rptProducts.DataBind();
        }


        protected void ProductSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Product Sorting: @LaniiAndre10.//

            string selectedValue = ProductSorter.Value;
            int attractionId = int.Parse(Request.QueryString["Id"]);

            switch (selectedValue)
            {
                case "PriceAsc":
                    {

                        //Set the data source to display all the items, by asc price..//
                        var Cheapproducts = client.SortProductsbyAscPrice(attractionId);

                        rptProducts.DataSource = Cheapproducts;

                        break;

                    }

                case "PriceDesc":
                    {

                        //Set the data source to display all the items by Desc Price..//
                        var Expensiveproducts = client.SortProductsbyDescPrice(attractionId);

                        rptProducts.DataSource = Expensiveproducts;

                        break;

                    }
                case "DateDesc":
                    {

                        //Set the data source to display all the items by latest added date..//
                        var Latestproducts = client.SortProductsbyLatestDate(attractionId);

                        rptProducts.DataSource = Latestproducts;

                        break;

                    }
            }

            rptProducts.DataBind();
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

    }
}
