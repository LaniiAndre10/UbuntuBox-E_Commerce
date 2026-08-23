<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="CancelledOrders.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderFolder.CancelledOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Cancelled Orders.🧾</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Order Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../OrderControl.aspx">
                    <img  Id="View Products" src="../OrderManagement/Logo/icons8-status-30.png" alt="Sales Logo" width="40px">
                    <span>View Pending Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./CompleteOrders.aspx">
                    <img  Id="P_Orders" src="../OrderManagement/Logo/icons8-pass-50.png" alt="Sales Logo" width="40px">
                    <span>View Complete Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./LoggedReturns.aspx">
                    <img  Id="BestSeller" src="../OrderManagement/Logo/icons8-return-50.png" alt="Sales Logo" width="40px">
                    <span>View Logged Returns.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="#">
                    <img  Id="Errors" src="../OrderManagement/Logo/icons8-cancel-48.png" alt="Sales Logo" width="40px">
                    <span>View Cancelled Orders.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="cover">
    <div class="TopHeader">
        <div>Order ID</div>
        <div>Customer ID</div>
        <div>Product Name</div>
        <div>Product ID</div>
        <div>Cancellation Date</div>
        <div>Reason for Cancellation</div>
    </div>

    <div class="Rowcontainer">

        <div class="ProductRow">
            <div>71</div>
            <div>C021</div>
            <div>Ndebele Pattern Necklace</div>
            <div>072</div>
            <div>2026-06-26</div>
            <div>Out of stock</div>
        </div>
        <div class="ProductRow">
            <div>72</div>
            <div>C022</div>
            <div>Zulu Beaded Earrings</div>
            <div>073</div>
            <div>2026-06-27</div>
            <div>Customer request</div>
        </div>
        <div class="ProductRow">
            <div>73</div>
            <div>C023</div>
            <div>Xhosa Traditional Shawl</div>
            <div>074</div>
            <div>2026-06-28</div>
            <div>Payment failure</div>
        </div>
        <div class="ProductRow">
            <div>74</div>
            <div>C024</div>
            <div>Tsonga Handwoven Basket</div>
            <div>075</div>
            <div>2026-06-29</div>
            <div>Fraud check</div>
        </div>
        <div class="ProductRow">
            <div>75</div>
            <div>C025</div>
            <div>Sotho Wool Blanket</div>
            <div>076</div>
            <div>2026-06-30</div>
            <div>Duplicate order</div>
        </div>
        <div class="ProductRow">
            <div>76</div>
            <div>C026</div>
            <div>Swazi Clay Pot</div>
            <div>077</div>
            <div>2026-07-01</div>
            <div>Supplier delay</div>
        </div>
        <div class="ProductRow">
            <div>77</div>
            <div>C027</div>
            <div>Venda Drum Keychain</div>
            <div>078</div>
            <div>2026-07-02</div>
            <div>Customer cancelled before shipping</div>
        </div>
        <div class="ProductRow">
            <div>78</div>
            <div>C028</div>
            <div>Zulu Shield Wall Art</div>
            <div>079</div>
            <div>2026-07-03</div>
            <div>Incorrect address</div>
        </div>
        <div class="ProductRow">
            <div>79</div>
            <div>C029</div>
            <div>Xhosa Headwrap</div>
            <div>080</div>
            <div>2026-07-04</div>
            <div>Customer dissatisfaction</div>
        </div>
        <div class="ProductRow">
            <div>80</div>
            <div>C030</div>
            <div>Tswana Leather Sandals</div>
            <div>081</div>
            <div>2026-07-05</div>
            <div>Stock miscount</div>
        </div>



    </div>
</div>


    </div>

</asp:Content>
