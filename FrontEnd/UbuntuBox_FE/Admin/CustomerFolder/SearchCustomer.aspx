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
                <img src="https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png" alt="ProductImg">
            </div>

            <div class="form2">

                <div class="input2">
                <label for="ProductLink">Customer ID:</label>
                <input id="ProductLink" type="number" placeholder=" Enter Customer ID">
                <button type="submit">Search Customer.</button>
                </div>

                <div class="input2">

                    <label>Customer ID:</label>
                    <label>Customer Email:</label>
                    <label>Customer Names:</label>
                    <label>Customer Type:</label>
                    <label>Customer Account Status:</label>
                    <label>Total Products Bought:</label>
                    <label>Total Orders Cancelled:</label>
                    <label>Total Orders Returned:</label>
                    <label>Total Money Spent:</label>
                    <label>Date Joined:</label>
                    <Label>Times Rewarded:</Label>
                    
                </div>

            </div>
            
        </div>

    </div>

</asp:Content>
