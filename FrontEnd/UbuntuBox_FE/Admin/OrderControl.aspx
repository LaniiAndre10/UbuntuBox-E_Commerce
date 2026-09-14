<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="OrderControl.aspx.cs" Inherits="UbuntuBox_FE.Admin.OrderManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🖋️Order Management: Pending Orders.🧾</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Order Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="View Products" src="./OrderManagement/Logo/icons8-status-30.png" alt="Sales Logo" width="40px">
                    <span>View Pending Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./OrderFolder/CompleteOrders.aspx">
                    <img  Id="P_Orders" src="./OrderManagement/Logo/icons8-pass-50.png" alt="Sales Logo" width="40px">
                    <span>View Complete Orders.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./OrderFolder/LoggedReturns.aspx">
                    <img  Id="BestSeller" src="./OrderManagement/Logo/icons8-return-50.png" alt="Sales Logo" width="40px">
                    <span>View Logged Returns.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./OrderFolder/CancelledOrders.aspx">
                    <img  Id="Errors" src="./OrderManagement/Logo/icons8-cancel-48.png" alt="Sales Logo" width="40px">
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
        <div>Customer ID</div>
        <div>Date Ordered</div>
        <div>Status</div>

    </div>

    <div class="Rowcontainer">

        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>

                <div class="ProductRow">

                    <div><%# Eval("OrderID") %></div>
                    <div><%# Eval("ProductID") %></div>
                    <div><%# Eval("ProductName") %></div>
                    <div><%# Eval("UserID") %></div>
                    <div><%# Eval("OrderDate") %></div>
                    <div><%# Eval("OrderStatus") %></div>

                </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>
</div>


    </div>

    <div class="Functionality">


        <h4>Complete An Order.</h4>

        
        <label for="OrderContainer">Enter Order Number</label>
        <input required="required" runat="server" id="OrderContainer" min="0" type="number" placeholder="Enter the Order ID">

        <Label>Update Status: <asp:Label ID="LblUpdate" runat="server" Text=""></asp:Label></Label>

        <asp:Button ID="BtnCompleteOrder" CssClass="OrderClosed" runat="server" Text="Complete Order." OnClick="BtnCompleteOrder_Click" />

    </div>

</asp:Content>
