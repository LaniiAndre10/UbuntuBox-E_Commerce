<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.master" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="UbuntuBox_FE.Admin.AdminFolder.AddAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>👤Administrator Management: Add Admin.👥</h2>
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

                    <a href="#">
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

                    <a href="./DeleteAdmin.aspx">
                    <img  Id="Errors" src="../User Management/Icons/icons8-delete-user-50.png" alt="Sales Logo" width="40px">
                    <span>Delete Admin.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="charts">

            <div class="form">

                <div class="input">
                <label for="ProductLink">Profile Image Link:</label>
                <input id="ProductLink" type="url" placeholder=" Enter Admin Image Link">
                </div>
                

                <div class="input">
                <label for="ProductName">Administrator Name:</label>
                <input id="ProductName" type="text" placeholder="Enter Admin Name">
                </div>

                <h4>Admin Privilages:</h4>

                <div class="Category">

                    
                    <div class="boxtype">
                        <label for="Standard">Super Admin:</label>
                        <input type="radio" name="StandardBox" id="Standard">
                    </div>

                    <div class="boxtype">
                        <label for="Standard">Store Manager:</label>
                        <input type="radio" name="Premium" id="Premium">
                    </div>

                    <div class="boxtype">
                        <label for="Standard">Analytics Admin:</label>
                        <input type="radio" name="Mystery" id="Mystery">
                    </div>

                </div>

            </div>

            <div class="form">

                <div class="input">
                <label for="ProductPrice">Admin Work Email Address:</label>
                <input id="ProductPrice" type="text" placeholder="Enter Admin Work Email Address">
                </div>

                <div class="input">
                <label for="ProductPrice">Admin Temporary Password:</label>
                <input id="ProductPrice" type="password" placeholder="Enter Admin Password">
                </div>

                <a href="#">
                    <button type="submit">Add Admin Account.</button>
                </a>

            </div>
            
        </div>

    </div>

</asp:Content>
