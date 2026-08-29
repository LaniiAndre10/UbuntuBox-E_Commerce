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
            txtProductPrice.Value = ReqProduct.Price.ToString(System.Globalization.CultureInfo.InvariantCulture);
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
                //if it reaches this stage it means that the product image was not found, display the 404 picture//
                ImageHolder.ImageUrl = "https://support.heberjahiz.com/hc/article_attachments/21013076295570";

            }

            //finally make the productID box readonly so they cannot change the productID//
            txtProductID.Disabled = true;
        }

        protected void UpdateProductbtn_Click(object sender, EventArgs e)
        {

            //then call the update function so that it can take any changes made to the text and push them to the database//
            var UpdatedProductName = txtProductName.Value;
            var UpdatedProductPrice = double.Parse(txtProductPrice.Value, System.Globalization.CultureInfo.InvariantCulture);
            var UpdatedProductCategory = txtProductCategory.Value;
            var UpdatedProductDescription = txtProductDescription.Value;

            var UpdatedProductImagelink1 = txtProductLink1.Value;
            var UpdatedProductImagelink2 = txtProductLink2.Value;

            bool Isupdated = false;

            try
            {
                DataClient.UpdateProduct(txtProductID.Value, UpdatedProductImagelink1, UpdatedProductImagelink2, UpdatedProductName, UpdatedProductCategory, UpdatedProductDescription, UpdatedProductPrice);
                Isupdated = true;

            }
            catch
            {
                //Do nothing//
            }

            if (Isupdated)
            {
                lblSubmitstatus.Text = "Successfully Updated Product.";
            }
            else
            {
                lblSubmitstatus.Text = "Failed to Update Product.";
            }

            txtProductID.Disabled = false; //they can not temper with the product ID post update//

        }
    }
}