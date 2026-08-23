<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="CompleteOrders.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderFolder.CompleteOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Complete Orders.🧾</h2>
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

                    <a href="#">
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

                    <a href="./CancelledOrders.aspx">
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
        <div>Product ID</div>
        <div>Product Price</div>
        <div>Date Ordered</div>
        <div>Date Delivered</div>
    </div>

    <div class="Rowcontainer">

        <div class="ProductRow">
            <div>21</div>
            <div>C011</div>
            <div>022</div>
            <div>R175.00</div>
            <div>2026-05-02</div>
            <div>2026-05-05</div>
        </div>
        <div class="ProductRow">
            <div>22</div>
            <div>C012</div>
            <div>023</div>
            <div>R90.00</div>
            <div>2026-05-03</div>
            <div>2026-05-06</div>
        </div>
        <div class="ProductRow">
            <div>23</div>
            <div>C013</div>
            <div>024</div>
            <div>R210.00</div>
            <div>2026-05-04</div>
            <div>2026-05-08</div>
        </div>
        <div class="ProductRow">
            <div>24</div>
            <div>C014</div>
            <div>025</div>
            <div>R260.00</div>
            <div>2026-05-05</div>
            <div>2026-05-09</div>
        </div>
        <div class="ProductRow">
            <div>25</div>
            <div>C015</div>
            <div>026</div>
            <div>R320.00</div>
            <div>2026-05-06</div>
            <div>2026-05-10</div>
        </div>
        <div class="ProductRow">
            <div>26</div>
            <div>C016</div>
            <div>027</div>
            <div>R185.00</div>
            <div>2026-05-07</div>
            <div>2026-05-11</div>
        </div>
        <div class="ProductRow">
            <div>27</div>
            <div>C017</div>
            <div>028</div>
            <div>R75.00</div>
            <div>2026-05-08</div>
            <div>2026-05-12</div>
        </div>
        <div class="ProductRow">
            <div>28</div>
            <div>C018</div>
            <div>029</div>
            <div>R420.00</div>
            <div>2026-05-09</div>
            <div>2026-05-14</div>
        </div>
        <div class="ProductRow">
            <div>29</div>
            <div>C019</div>
            <div>030</div>
            <div>R135.00</div>
            <div>2026-05-10</div>
            <div>2026-05-15</div>
        </div>
        <div class="ProductRow">
            <div>30</div>
            <div>C020</div>
            <div>031</div>
            <div>R240.00</div>
            <div>2026-05-11</div>
            <div>2026-05-16</div>
        </div>


    </div>
</div>


    </div>

</asp:Content>
