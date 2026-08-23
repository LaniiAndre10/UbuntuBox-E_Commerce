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
                <img src="https://www.vhv.rs/dpng/d/476-4764937_insert-image-here-icon-hd-png-download.png" alt="ProductImg">
            </div>

            <div class="form2">

                <div class="input2">
                <label for="ProductLink">Admin Work Email Address:</label>
                <input id="ProductLink" type="email" placeholder=" Enter Admin Work Email Address">
                <button type="submit">Search Admin.</button>
                </div>

                <div class="input2">
                    <label>Administrator ID:</label>
                    <label>Administrator Names:</label>
                    <label>Administrator Privilages:</label>
                    <label>Administrator Status:</label>
                    <label>Date Added:</label>
                </div>

                <a href="#">
                    <button class="Delete" type="submit">Delete Admin.</button>
                </a>

            </div>
            
        </div>

    </div>

</asp:Content>
