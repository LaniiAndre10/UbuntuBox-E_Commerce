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
        <div class="ProductRow">
            <div><img src="https://images.generated.photos/dzU-WrTKhSYaa1sGl9lGF08tp7mXk9TkMzp9gw8TuFs/rs:fit:512:512/wm:1:re:0:0:0.8/att:0/czM6Ly9yMi1pY29u/czgtZ3Bob3Rvcy1w/cm9kLXBob3Rvcy92/M18wNzMyODEwLmpw/Zw.jpg" width="100"></div>
            <div>01</div>
            <div>MMalatji@UbuntuBox.com</div>
            <div>Moshe Malatji</div>
            <div>2026-06-05</div>
            <div>Active</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://images.generated.photos/gEy4ff4edf5HsK5O6uGYv5dZmxmkGPmaca9yUeByO_U/rs:fit:512:512/wm:1:re:0:0:0.8/att:0/czM6Ly9yMi1pY29u/czgtZ3Bob3Rvcy1w/cm9kLXBob3Rvcy92/M18wNTIzMTk1Lmpw/Zw.jpg" width="100"></div>
            <div>02</div>
            <div>LMokoena@Ubuntubox.com</div>
            <div>Lydia Mokoena</div>
            <div>2026-08-21</div>
            <div>Unactive.</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://images.generated.photos/RLC4cpgjHsaDqP_h-4xcdqcGzMUtYSgGTLRpigBXH0M/rs:fit:512:512/wm:1:re:0:0:0.8/att:0/czM6Ly9yMi1pY29u/czgtZ3Bob3Rvcy1w/cm9kLXBob3Rvcy92/M18wMTcyODc4Lmpw/Zw.jpg" width="100"></div>
             <div>03</div>
            <div>JBrooks@UbuntuBox.com</div>
            <div>Jeanen Brooks</div>
            <div>2026-08-31</div>
            <div>Active</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://images.generated.photos/5d5SFIn7Ae7TPZj5cOdXTjUcxpmMlD3tJZt1A8z_tPU/rs:fit:512:512/wm:1:re:0:0:0.8/att:0/czM6Ly9yMi1pY29u/czgtZ3Bob3Rvcy1w/cm9kLXBob3Rvcy92/M18wOTk4Mzk3Lmpw/Zw.jpg" width="100"></div>
             <div>04</div>
            <div>SMarks@Ubuntubox.com</div>
            <div>Simon Mark</div>
            <div>2026-04-21</div>
            <div>Active</div>
        </div>
    </div>
</div>


    </div>

</asp:Content>
