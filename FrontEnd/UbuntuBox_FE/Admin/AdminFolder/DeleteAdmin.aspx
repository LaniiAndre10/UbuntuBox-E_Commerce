<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteAdmin.aspx.cs" Inherits="UbuntuBox_FE.Admin.AdminFolder.DeleteAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>👤Administrator Management: Delete Admin.👥</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Admin Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../AdminControl.aspx">
                    <img  Id="View Products" src="../User Management/Icons/icons8-people-50.png" alt="Sales Logo" width="40px">
                    <span>View Active Admins.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./AddAdmin.aspx">
                    <img  Id="P_Orders" src="../User Management/Icons/icons8-add-user-50.png" alt="Sales Logo" width="40px">
                    <span>Add Admin.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./UpdateAdmin.aspx">
                    <img  Id="BestSeller" src="../User Management/Icons/icons8-update-user-64.png" alt="Sales Logo" width="40px">
                    <span>Update Admin Details.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="#">
                    <img  Id="Errors" src="../User Management/Icons/icons8-delete-user-50.png" alt="Sales Logo" width="40px">
                    <span>Delete Admin.</span>
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
                <label for="AdminEmail">Admin Work Email Address:</label>
                <input id="AdminEmail" runat="server" required="required" type="email" placeholder=" Enter Admin Work Email Address">
              
                <asp:Button ID="btnSearch" runat="server" CssClass="Updated" Text="Search Admin." OnClick="btnSearch_Click" />

            </div>

                <div class="input2">
                    <label>Administrator ID: <asp:Label ID="AdminID" runat="server" Text=""></asp:Label></label>
                    <label>Administrator Names: <asp:Label ID="AdminNames" runat="server" Text=""></asp:Label></label>
                    <label>Administrator Privilages: <asp:Label ID="AdminPrivilages" runat="server" Text=""></asp:Label></label>
                    <label>Administrator Status: <asp:Label ID="AdminStatus" runat="server" Text=""></asp:Label></label>
                    <label>Date Added: <asp:Label ID="AdminDateAdded" runat="server" Text=""></asp:Label></label>
                </div>

                <asp:Label ID="StatusUpdate" runat="server" CssClass="Submitform" Text=""></asp:Label>

                <asp:Button ID="BtnDelete" runat="server" CssClass="Delete" Text="Delete Admin." OnClick="BtnDelete_Click" />

            </div>
            
        </div>

    </div>

</asp:Content>
