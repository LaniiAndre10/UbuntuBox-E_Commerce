<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="UbuntuBox_FE.Admin.ProductFolder.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🎁Product Management: Update Product.📦</h2>
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

                    <a href="#">
                    <img  Id="BestSeller" src="../Product Management/Icons/icons8-update-product-32.png" alt="Sales Logo" width="40px">
                    <span>Update Product.</span>
                    </a>
                    
                </div>

                <div id="Errors" class="AnalyticControl">

                    <a href="./DeleteProduct.aspx">
                    <img  Id="Errors" src="../Product Management/Icons/icons8-delete-48.png" alt="Sales Logo" width="40px">
                    <span>Delete Product.</span>
                    </a>
                    
                </div>

            </div>
        </div>
        
        <div class="background">


            <div class="form1">
                <asp:Image ID="ImageHolder" runat="server" AlternateText="ProductImg" />
            </div>

            <div class="form1">

                <div class="input1">
                <label for="ProductLink">Product ID:</label>
                <input id="txtProductID" runat="server" type="Number" placeholder=" Enter Product Id">
       
                 <asp:Button ID="SearchProduct" CssClass="ClickSubmit" runat="server" Text="Search Product." OnClick="SearchProduct_Click" />

                </div>
                
                <div class="input1">
                <label for="ProductLink1">Update Product Image 1 Link:</label>
                <input id="txtProductLink1" runat="server" type="url" placeholder=" Search Product to retrieve product Image Link">
                </div>

                <div class="input1">
                <label for="ProductLink2">Update Product Image 2 Link:</label>
                <input id="txtProductLink2" runat="server" type="url" placeholder=" Search Product to retrieve product Image Link">
                </div>

                <div class="input1">
                <label for="ProductName">Update Product Name:</label>
                <input id="txtProductName" runat="server" type="text" placeholder="Search Product to retrieve product Name">
                </div>

                <div class="input1">
                <label for="ProductCategory">Update Product Category:</label>
                <input id="txtProductCategory" runat="server" type="text" placeholder="Search Product to retrieve product Category">
                </div>

            </div>

            <div class="form1">

                <div class="input1">
                <label for="ProductPrice">Update Product Price:</label>
                <input id="txtProductPrice" runat="server" type="number" placeholder="Search Product to retrieve product Price">
                </div>

                <div class="input1">
                <label for="ProductDescription">Update Product Description:</label>
                <textarea name="ProductDescContainer" runat="server" id="txtProductDescription" placeholder="Search Product to retrieve product Description." wrap="soft" rows="10" cols="10"></textarea>
                </div>

                <asp:Label CssClass="submitform" ID="lblSubmitstatus" runat="server" Text="Update Status."></asp:Label>

                
       
                <asp:Button CssClass="Update" ID="UpdateProductbtn" runat="server" Text="Update Product." />

               

            </div>
            
        </div>

    </div>

</asp:Content>
