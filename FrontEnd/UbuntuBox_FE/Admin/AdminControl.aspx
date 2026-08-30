<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminControl.aspx.cs" Inherits="UbuntuBox_FE.Admin.AdminManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>👤Administrator Management: Active Admins.👥</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Admin Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="View Products" src="./User Management/Icons/icons8-people-50.png" alt="Sales Logo" width="40px">
                    <span>View Active Admins.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./AdminFolder/AddAdmin.aspx">
                    <img  Id="P_Orders" src="./User Management/Icons/icons8-add-user-50.png" alt="Sales Logo" width="40px">
                    <span>Add Admin.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./AdminFolder/UpdateAdmin.aspx">
                    <img  Id="BestSeller" src="./User Management/Icons/icons8-update-user-64.png" alt="Sales Logo" width="40px">
                    <span>Update Admin Details.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./AdminFolder/DeleteAdmin.aspx">
                    <img  Id="Errors" src="./User Management/Icons/icons8-delete-user-50.png" alt="Sales Logo" width="40px">
                    <span>Delete Admin.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="cover">
    <div class="TopHeader">

        <div>Profile Image</div>
        <div>Admin Id</div>
        <div>Gmail Account</div>
        <div>Admin Name</div>
        <div>Date Created</div>
        <div>Status</div>

    </div>

    <div class="Rowcontainer">

        <asp:Repeater ID="AdminRepeater" runat="server">

            <ItemTemplate>

                <div class="ProductRow">

                        <div><img src=<%# Eval("ProfileImgURL") %> alt="AdminPP" width="100" runat="server" id="Imageholder" /></div>
                        <div><%# Eval("UserID") %></div>
                        <div><%# Eval("Email") %></div>
                        <div><%# Eval("Usernames") %></div>
                        <div><%# Eval("UserDateAdded") %></div>
                        <div><%# Eval("UserStatus") %></div>

                 </div>

            </ItemTemplate>

        </asp:Repeater>

    </div>
   </div>


    </div>

</asp:Content>
