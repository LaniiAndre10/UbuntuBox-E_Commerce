using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin.ProductFolder
{
    public partial class AddProduct : System.Web.UI.Page
    {
        UbuntuBox_FE.ServiceReference1.Service1Client service1Client = new Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //The key here is to add data into the database..//
            string ProductName = lblProductName.Value;
            string ProductImgUrl1 = lblProductLink.Value;
            string ProductImgUrl2 = lblProductLink2.Value;

            string category = "";

            if (Standardcheck.Checked)
            {

                //uncheck all the boxes//
                PremiumCheck.Disabled = true;
                MysteryCheck.Disabled = true;

                category = "Standard";

            }
            else if (PremiumCheck.Checked)
            {

                //uncheck all the boxes//
                Standardcheck.Disabled = true;
                MysteryCheck.Disabled = true;

                category = "Premium";

            }
            else if (MysteryCheck.Checked)
            {

                //uncheck all the boxes//
                PremiumCheck.Disabled = true;
                Standardcheck.Disabled = true;

                category = "Mystery";

            }

            double ProductPrice;

            //using tryparse to handle the exception of . and , variations //

            if(!string.IsNullOrEmpty(lblProductPrice.Value) && double.TryParse(lblProductPrice.Value,System.Globalization.NumberStyles.Any,System.Globalization.CultureInfo.InvariantCulture,out ProductPrice)){
                
                //the price is valid
            }
            else{

                ProductPrice = 0;
            }

            var ProductDescription = lblProductDescription.Value;

            bool isadded = false;

            try
            {
                isadded = service1Client.AddProduct(ProductImgUrl1, ProductImgUrl2, ProductName,category, ProductDescription, ProductPrice);

                if (isadded)
                {
                    lblSubmitstatus.Text = "Successfully Added Product!";
                }
            }
            catch
            {
                if (!isadded)
                {
                    lblSubmitstatus.Text = "Failed to App Product!";
                }
            }
        }
    }
}