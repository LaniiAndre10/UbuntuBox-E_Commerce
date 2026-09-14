<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="BlockCustomer.aspx.cs" Inherits="UbuntuBox_FE.Admin.CustomerFolder.BlockCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🧑🏿Customer Management: Block Customer.🧑</h2>
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

                    <a href="./SearchCustomer.aspx">
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

                    <a href="#">
                    <img  Id="Errors" src="../Customer Management/Icons/icons8-denied-50.png" alt="Sales Logo" width="40px">
                    <span>Block Customer.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="background">


            <div class="form2">
                <asp:Image ID="CustomerImg" runat="server" />
            </div>

            <div class="form3">

                <div class="input3">
                <label for="CustomerID">Customer ID:</label>
                <input id="txtCustomerID" required="required" runat="server" type="number" placeholder=" Enter Customer ID">

                <asp:Button ID="BtnSearchUser" CssClass="Updated" runat="server" Text="Search Customer." OnClick="BtnSearchUser_Click" />

            </div>

                <div class="input3">

                    <label>Customer ID: <asp:Label ID="lblID" runat="server" Text=""></asp:Label></label>
                    <label>Customer Names: <asp:Label ID="lblNames" runat="server" Text=""></asp:Label></label>
                    <label>Total Orders Made: <asp:Label ID="lblOrdersMade" runat="server" Text=""></asp:Label></label>
                    <label>Total Orders Cancelled: <asp:Label ID="lblOrdersCancelled" runat="server" Text=""></asp:Label></label>
                    <label>User Type By Actitity: <asp:Label ID="lblUserType" runat="server" Text=""></asp:Label></label>
                    
                </div>

                <div class="input3">

                <label><b>NB:</b> Once you block a customer, the action is permanent; they cannot be unblocked later. Blocking is reserved strictly for <b>Inappropriate Users</b>, such as those who repeatedly order and cancel, disrupting the system. Please ensure this step is taken only when necessary, as it will deactivate their access indefinitely.</label>

                </div>

                <asp:Button ID="BtnBlockUser" CssClass="Delete" runat="server" Text="Block Customer." OnClick="BtnBlockUser_Click" />

            </div>
            
        </div>

    </div>


</asp:Content>
