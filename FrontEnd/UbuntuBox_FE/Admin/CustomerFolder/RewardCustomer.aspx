<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="RewardCustomer.aspx.cs" Inherits="UbuntuBox_FE.Admin.CustomerFolder.RewardCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🧑🏿Customer Management: Reward Customer.🧑</h2>
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

                    <a href="#">
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
                <asp:Image ID="ImgContainer" runat="server" />
            </div>

            <div class="form2">

                <div class="input2">

                    <label for="ProductLink">Customer ID:</label>
                    <input runat="server" id="txtCustomerID" type="number" min="0" required="required" placeholder=" Enter Customer ID">
                  
                    <asp:Button ID="BtnSearchUser" runat="server" CssClass="Updated" Text="Search Customer." OnClick="BtnSearchUser_Click" />

                </div>

                <div class="input2">

                    <label>Customer ID: <asp:Label ID="lblCustomerID" runat="server" Text=""></asp:Label></label>
                    <label>Customer Email: <asp:Label ID="lblCustomerEmail" runat="server" Text=""></asp:Label></label>
                    <label>Customer Names: <asp:Label ID="lblCustomerNames" runat="server" Text=""></asp:Label></label>
                    <label>Customer Type: <asp:Label ID="lblCustomerType" runat="server" Text=""></asp:Label></label>
                    <label>Total Products Bought: <asp:Label ID="lblTotalBought" runat="server" Text=""></asp:Label></label>
                    <label>Total Money Spent: <asp:Label ID="lblTotalSpent" runat="server" Text=""></asp:Label></label>
                    <Label>Times Rewarded: <asp:Label ID="lblNumtimesRewarded" runat="server" Text=""></asp:Label></Label>
                    
                </div>
                <div class="form2">

                <div class="input2">

                        <label for="ProductLink">Percent Off Next Purchase:</label>
                        <input runat="server" id="txtReward" type="number" value="1" max="100" min="1" placeholder=" Enter Percentage Off Next Sale.">
                        
                        <br />
                        <asp:Label ID="LblStatus" CssClass="submitform" runat="server" Text=""></asp:Label>

                        <asp:Button ID="BtnReward" CssClass="Updated" runat="server" Text="Grant Reward." OnClick="BtnReward_Click" />
                </div>

                </div>


            </div>
            
        </div>

    </div>

</asp:Content>
