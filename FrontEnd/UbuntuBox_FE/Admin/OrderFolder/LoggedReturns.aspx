<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="LoggedReturns.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderFolder.LoggedReturns" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Logged Returns.🧾</h2>
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

                    <a href="#">
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
        <div>Product ID</div>
        <div>Product Name</div>
        <div>Return Date</div>
        <div>Status</div>
        <div>Reason For Return</div>
    </div>

    <div class="Rowcontainer">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>

                <div class="ProductRow">

                    <div><%# Eval("OrderID") %></div>
                    <div><%# Eval("ProductID") %></div>
                    <div><%# Eval("ProductName") %></div>
                    <div><%# Eval("ReturnDateLog") %></div>
                    <div><%# Eval("Status") %></div>
                    <div><%# Eval("ReturnReason") %></div>

                </div>

            </ItemTemplate>

        </asp:Repeater>


    </div>
</div>


    </div>


</asp:Content>
