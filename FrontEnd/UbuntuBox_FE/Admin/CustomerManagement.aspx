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
        
        <div class="ProductRow">
            <div>C041</div>
            <div>Thabo Mokoena</div>
            <div>thabo.mokoena@example.com</div>
            <div>2026-01-12</div>
            <div>Active</div>
            <div>Retained</div>
        </div>
        <div class="ProductRow">
            <div>C042</div>
            <div>Ayesha Patel</div>
            <div>ayesha.patel@example.com</div>
            <div>2026-02-03</div>
            <div>Blocked</div>
            <div>Inappropriate User</div>
        </div>
        <div class="ProductRow">
            <div>C043</div>
            <div>Michael Dlamini</div>
            <div>michael.dlamini@example.com</div>
            <div>2026-02-15</div>
            <div>Active</div>
            <div>Occasional Buyer</div>
        </div>
        <div class="ProductRow">
            <div>C044</div>
            <div>Lerato Khumalo</div>
            <div>lerato.khumalo@example.com</div>
            <div>2026-03-01</div>
            <div>Inactive</div>
            <div>Account Deactivated</div>
        </div>
        <div class="ProductRow">
            <div>C045</div>
            <div>David Smith</div>
            <div>david.smith@example.com</div>
            <div>2026-03-10</div>
            <div>Active</div>
            <div>Retained</div>
        </div>
        <div class="ProductRow">
            <div>C046</div>
            <div>Nomsa Zulu</div>
            <div>nomsa.zulu@example.com</div>
            <div>2026-03-22</div>
            <div>Blocked</div>
            <div>Inappropriate User</div>
        </div>
        <div class="ProductRow">
            <div>C047</div>
            <div>Peter van der Merwe</div>
            <div>peter.vandermerwe@example.com</div>
            <div>2026-04-05</div>
            <div>Active</div>
            <div>Occasional Buyer</div>
        </div>
        <div class="ProductRow">
            <div>C048</div>
            <div>Sarah Nkosi</div>
            <div>sarah.nkosi@example.com</div>
            <div>2026-04-18</div>
            <div>Active</div>
            <div>Retained</div>
        </div>
        <div class="ProductRow">
            <div>C049</div>
            <div>John Maseko</div>
            <div>john.maseko@example.com</div>
            <div>2026-05-02</div>
            <div>Inactive</div>
            <div>Account Deactivated</div>
        </div>
        <div class="ProductRow">
            <div>C050</div>
            <div>Priya Naidoo</div>
            <div>priya.naidoo@example.com</div>
            <div>2026-05-15</div>
            <div>Active</div>
            <div>Retained</div>
        </div>


    </div>
</div>


    </div>

</asp:Content>
