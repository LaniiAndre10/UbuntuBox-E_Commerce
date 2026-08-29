using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.ProductFolder
{
    public partial class DeleteProduct : System.Web.UI.Page
    {
        ServiceReference1.Service1Client DataClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {
            ImageHolder.ImageUrl = "https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png";
        }

        protected void BtnSearchProduct_Click(object sender, EventArgs e)
        {
            var ProductID = txtProductID.Value;

            Product DesiredProduct = DataClient.RetrieveSearchProduct(ProductID);

            //then update the label to showcase the data for the product//

            try { 

                if (DesiredProduct != null)
                {

                    lblProductName.Text = DesiredProduct.ProductName;
                    lblProductID.Text = DesiredProduct.ProductID.ToString();
                    lblProductCategory.Text = DesiredProduct.BoxCategory;
                    lblProductPrice.Text = DesiredProduct.Price.ToString();
                    lblDateAdded.Text = DesiredProduct.ProductDateAdded.ToString();

                }
                else
                {
                    lblDeleteStatus.Text = "Product with that ID Doesn't exist!";
                }
            }
            catch
            {
                //just for Robustness//
            }
            

            //then display the image//
            try
            {

                var ProductImage = DataClient.RetrieveSearchProductimgs(ProductID);
                ImageHolder.ImageUrl = ProductImage[0].ImageURL;

            }
            catch
            {

                //if image doesnt exist display the 404 Image not available on server//
                ImageHolder.ImageUrl = "https://support.heberjahiz.com/hc/article_attachments/21013076295570";

            }

        }

        protected void btnDeleteProduct_Click(object sender, EventArgs e)
        {
            bool Deleted = false;

            //then here you just call the delete function to do the work//
            try
            {
                Deleted = DataClient.DeleteUnwantedProduct(txtProductID.Value);
              
            }
            catch
            {
                //do nothing: try catch is just for robustness.//
            }

            if (Deleted)
            {

                lblDeleteStatus.Text = "Successfully Deleted Product!";

            }
            else
            {
                lblDeleteStatus.Text = "Failed to Delete Product!";
            }
        }
    }
}