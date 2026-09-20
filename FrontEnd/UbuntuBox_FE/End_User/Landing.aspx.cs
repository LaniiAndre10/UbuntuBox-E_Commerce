using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UbuntuBox_FE.ServiceReference1;

namespace UbuntuBox_FE.End_User
{
    public partial class Landing : System.Web.UI.Page
    {
        ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                showAttractions();
            }
        }

        private void showAttractions()
        {
            List<AttractionDetails> allattractions = client.getAttractionList().ToList();
            rptAttractions.DataSource = allattractions;
            rptAttractions.DataBind();
        }
    }
}