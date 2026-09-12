<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="SearchCustomer.aspx.cs" Inherits="UbuntuBox_FE.Admin.CustomerFolder.SearchCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🧑🏿Customer Management: Search Customer.🧑</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Customer Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../CustomerManagement.aspx">
                    <img  Id="View Products" src="../Customer Management/Icons/icons8-user-groups-50.png" alt="Sales Logo" width="40px">
                    <span>View Active Customers.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="P_Orders" src="../Customer Management/Icons/icons8-find-user-male-50.png" alt="Sales Logo" width="40px">
                    <span>Search Customer.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./RewardCustomer.aspx">
                    <img  Id="BestSeller" src="../Customer Management/Icons/icons8-reward-50.png" alt="Sales Logo" width="40px">
                    <span>Reward Customer.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./BlockCustomer.aspx">
                    <img  Id="Errors" src="../Customer Management/Icons/icons8-denied-50.png" alt="Sales Logo" width="40px">
                    <span>Block Customer.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="background">


            <div class="form2">
                
                <asp:Image ID="imgHolder" runat="server" />

            </div>

            <div class="form2">

                <div class="input2">
                <label for="TxtUserID">Customer ID:</label>
                <input id="TxtUserID" runat="server" type="number" placeholder=" Enter Customer ID">

                <asp:Button ID="BtnSeekCustomer" runat="server" CssClass="Updated" Text="Search Customer." OnClick="BtnSeekCustomer_Click" />

                </div>

                <div class="input2">

                    <label>Customer ID: <asp:Label ID="lblID" runat="server" Text=""></asp:Label></label>
                    <label>Customer Email: <asp:Label ID="LblEmail" runat="server" Text=""></asp:Label></label>
                    <label>Customer Names: <asp:Label ID="Lblnames" runat="server" Text=""></asp:Label></label>
                    <label>Customer Type: - </label>
                    <label>Customer Account Status: <asp:Label ID="CustomerStatus" runat="server" Text=""></asp:Label></label>
                    <label>Total Products Bought: - </label>
                    <label>Total Orders Cancelled: - </label>
                    <label>Total Orders Returned: - </label>
                    <label>Total Money Spent: - </label>
                    <label>Date Joined: <asp:Label ID="lblDateJoined" runat="server" Text=""></asp:Label></label>
                    <Label>Times Rewarded: - </Label>
                    
                </div>

            </div>
            
        </div>

    </div>

</asp:Content>
