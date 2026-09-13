<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateAdmin.aspx.cs" Inherits="UbuntuBox_FE.Admin.AdminFolder.UpdateAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>👤Administrator Management: Update Admin.👥</h2>
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

                    <a href="#">
                    <img  Id="BestSeller" src="../User Management/Icons/icons8-update-user-64.png" alt="Sales Logo" width="40px">
                    <span>Update Admin Details.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./DeleteAdmin.aspx">
                    <img  Id="Errors" src="../User Management/Icons/icons8-delete-user-50.png" alt="Sales Logo" width="40px">
                    <span>Delete Admin.</span>
                    </a>
                    
                </div>

            </div>
        </div>

        <div class="background">


            <div class="form1">
                <asp:Image ID="Adminimg" runat="server" />
            </div>

            <div class="form1">

                <div class="input1">
                <label for="Adminemail">Admin Work Email Address:</label>
                <input id="Adminemail" runat="server" required="required" type="email" placeholder=" Enter Admin Work Email Address">
     
                <asp:Button ID="BtnSearchAdmin" runat="server" CssClass="Updated" Text="Search Admin." OnClick="BtnSearchAdmin_Click" />

           </div>
                
                <div class="input1">
                <label for="AdminImg">Update Admin Profile Image Link:</label>
                <input id="AdminImage" runat="server" type="url" placeholder=" Search Admin to retrieve Admin Profile Image Link">
                </div>

                <div class="input1">
                <label for="Adminname">Update Admin Name:</label>
                <input id="Adminname" runat="server" type="text" placeholder=" Search Admin to retrieve Admin Name">
                </div>


            </div>

            <div class="form1">

                <div class="input1">
                <label for="Adminphone">Update Admin Phone Number:</label>
                <input id="Adminphone" runat="server" type="text" placeholder="Search Admin to retrieve Admin Current Phone Number">
                </div>

                <div class="input1">
                <label for="ProductCategory">Update Admin Password:</label>
                <input id="ProductCategory" runat="server" disabled="disabled" type="password" placeholder="Update Admin Password">
                </div>

                <asp:Label ID="StatusUpdate" CssClass="Submitform" runat="server" Text=""></asp:Label>

                <asp:Button ID="btnpushUpdate" runat="server" CssClass="Update" Text="Update Admin Details." OnClick="btnpushUpdate_Click" />

            </div>
            
        </div>

    </div>


</asp:Content>
