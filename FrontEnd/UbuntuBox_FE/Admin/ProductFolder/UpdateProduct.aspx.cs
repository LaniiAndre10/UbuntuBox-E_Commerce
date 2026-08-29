using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.ProductFolder
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        ServiceReference1.Service1Client DataClient = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

            ImageHolder.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png"; //create the default image that will be displayed before image is searched//

        }

        protected void SearchProduct_Click(object sender, EventArgs e)
        {

            var RequiredProductId = txtProductID.Value; //get the productID//

            var ReqProduct = DataClient.RetrieveSearchProduct(RequiredProductId);

            //then populate the Textboxes with the data of that product//

            txtProductName.Value = ReqProduct.ProductName;
            txtProductPrice.Value = ReqProduct.Price.ToString();
            txtProductCategory.Value = ReqProduct.BoxCategory;
            txtProductDescription.Value = ReqProduct.Description;

            var ReqproductImages = DataClient.RetrieveSearchProductimgs(RequiredProductId);

            //retrieve data for the images//
            try { 
                txtProductLink1.Value = ReqproductImages[0].ImageURL;
                txtProductLink2.Value = ReqproductImages[1].ImageURL;

                //Then also display the product image : We use DTO only when we have dynamically populated products, else keep it simple//

                ImageHolder.ImageUrl = ReqproductImages[0].ImageURL; //then display the required Product image upon returning search results//
            }
            catch
            {
                //do nothing, this is just for robustness of the platform//

            }

            //then call the update function so that it can take any changes made to the text and push them to the database//
        }

    }
}