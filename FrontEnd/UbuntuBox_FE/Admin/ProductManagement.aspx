<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductManagement.aspx.cs" Inherits="UbuntuBox_FE.Admin.ProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <div class="pagecontent">
        <h2>🎁Product Management: Active Products.📦</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Product Controls.</h3>

                <div class="AnalyticControl">

                    <a href="#">
                    <img  Id="View Products" src="./Product Management/Icons/icons8-look-48.png" alt="Sales Logo" width="40px">
                    <span>View Active Products.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./ProductFolder/AddProduct.aspx">
                    <img  Id="P_Orders" src="./Product Management/Icons/icons8-add-product-32.png" alt="Sales Logo" width="40px">
                    <span>Add Product.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./ProductFolder/UpdateProduct.aspx">
                    <img  Id="BestSeller" src="./Product Management/Icons/icons8-update-product-32.png" alt="Sales Logo" width="40px">
                    <span>Update Product.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./ProductFolder/DeleteProduct.aspx">
                    <img  Id="Errors" src="./Product Management/Icons/icons8-delete-48.png" alt="Sales Logo" width="40px">
                    <span>Delete Product.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="cover">
    <div class="TopHeader">
        <div>Product Image</div>
        <div>Product Id</div>
        <div>Product Name</div>
        <div>Category</div>
        <div>Date Created</div>
        <div>Status</div>
    </div>

    <div class="Rowcontainer">
        <div class="ProductRow">
            <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJm0C-TyiqL5ytdVgFdPdewTiVikanc0yh2vvxTAgUpg&s=10" width="100"></div>
            <div>01</div>
            <div>African Gourd</div>
            <div>Standard Box</div>
            <div>2026-06-05</div>
            <div>Active</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDYx-UowMbTFJy6QFTGe8Uye_XVbtxy2Tl5XqYEvBlKg&s=10" width="100"></div>
            <div>02</div>
            <div>Golden Rhino</div>
            <div>Premium Box</div>
            <div>2026-08-21</div>
            <div>Unactive.</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzNEm3AJYgNc9WkUCdWmtrxfzxbLDZocGoJFGBYXrWig&s=10" width="100"></div>
             <div>03</div>
            <div>Rural Fish Sculpture</div>
            <div>Standard Box</div>
            <div>2026-08-31</div>
            <div>Active</div>
        </div>

        <div class="ProductRow">
            <div><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGd6trSjyv4sWadtz_KBasklrZpck-bgQ9wC4YszXzUQ&s=10" width="100"></div>
             <div>04</div>
            <div>San Cave Artwork</div>
            <div>Premium box</div>
            <div>2026-04-21</div>
            <div>Active</div>
        </div>
    </div>
</div>


    </div>

</asp:Content>
