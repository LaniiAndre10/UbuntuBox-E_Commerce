<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CustomerManagement.aspx.cs" Inherits="UbuntuBox_FE.Admin.CustomerManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🧑🏿Customer Management: Active Customers.🧑</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Customer Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="View Products" src="./Customer Management/Icons/icons8-user-groups-50.png" alt="Sales Logo" width="40px">
                    <span>View Active Customers.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./CustomerFolder/SearchCustomer.aspx">
                    <img  Id="P_Orders" src="./Customer Management/Icons/icons8-find-user-male-50.png" alt="Sales Logo" width="40px">
                    <span>Search Customer.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./CustomerFolder/RewardCustomer.aspx">
                    <img  Id="BestSeller" src="./Customer Management/Icons/icons8-reward-50.png" alt="Sales Logo" width="40px">
                    <span>Reward Customer.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./CustomerFolder/BlockCustomer.aspx">
                    <img  Id="Errors" src="./Customer Management/Icons/icons8-denied-50.png" alt="Sales Logo" width="40px">
                    <span>Block Customer.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="cover">
    <div class="TopHeader">

        <div>Customer ID</div>
        <div>Customer Name</div>
        <div>Customer Email Address</div>
        <div>Date Joined</div>
        <div>Status</div>
        <div>Customer Type</div>
        
    </div>

    <div class="Rowcontainer">
        
        <asp:Repeater ID="Repeater1" runat="server">

            <ItemTemplate>

                 <div class="ProductRow">
                    <div><%# Eval("UserID") %></div>
                    <div><%# Eval("Usernames") %></div>
                    <div><%# Eval("Email") %></div>
                    <div><%# Eval("UserDateAdded") %></asp:Label></div>
                    <div><%# Eval("UserStatus") %></div>
                    <div>
                        <p>-</p>
                    </div>
                </div>

            </ItemTemplate>

        </asp:Repeater>
        
        <!-- Retained (Active) | Inappropriate User (Block) | Occasional Buyer (Active) -->

    </div>
</div>


    </div>

</asp:Content>
