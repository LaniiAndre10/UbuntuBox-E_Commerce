using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.Admin
{
    public partial class CustomerManagement : System.Web.UI.Page
    {
        ServiceReference1.Service1Client ServiceClient = new Service1Client();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                showCustomers();
            }

        }

        //Create a function to show customers in the Ui: @LaniiAndre10. //
        public void showCustomers()
        {

            //create retrieve a list of customers in the database//

            var Customers = ServiceClient.ReturnCustomers();

            Repeater1.DataSource = Customers;
            Repeater1.DataBind();

        }
    }
}