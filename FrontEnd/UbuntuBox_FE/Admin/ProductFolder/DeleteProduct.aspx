<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="UbuntuBox_FE.Admin.ProductFolder.DeleteProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🎁Product Management: Delete Product.📦</h2>
    </div>

    <div class="AnalyticsGrid">

        <div class="Controls">

            <div class="buttons">

                <h3>Product Controls.</h3>

                <div class="AnalyticControl">

                    <a href="../ProductManagement.aspx">
                    <img  Id="View Products" src="../Product Management/Icons/icons8-look-48.png" alt="Sales Logo" width="40px">
                    <span>View Active Products.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./AddProduct.aspx">
                    <img  Id="P_Orders" src="../Product Management/Icons/icons8-add-product-32.png" alt="Sales Logo" width="40px">
                    <span>Add Product.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="./UpdateProduct.aspx">
                    <img  Id="BestSeller" src="../Product Management/Icons/icons8-update-product-32.png" alt="Sales Logo" width="40px">
                    <span>Update Product.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="#">
                    <img  Id="Errors" src="../Product Management/Icons/icons8-delete-48.png" alt="Sales Logo" width="40px">
                    <span>Delete Product.</span>
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
                <label for="ProductLink">Product ID:</label>
                <input id="ProductLink" type="url" placeholder=" Enter Product Id">
                <button type="submit">Search Product</button>
                </div>

                <div class="input2">
                    <label>Product ID:</label>
                    <label>Product Name:</label>
                    <label>Product Category:</label>
                    <label>Product Price:</label>
                    <label>Date Added:</label>
                </div>

                <a href="#">
                    <button class="Delete" type="submit">Delete Product.</button>
                </a>

            </div>
            
        </div>

    </div>

    

</asp:Content>
