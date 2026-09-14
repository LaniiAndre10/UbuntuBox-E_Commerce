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
                <asp:Image ID="ImageHolder" runat="server" AlternateText="Product Image." />
            </div>

            <div class="form2">

                <div class="input2">
                <label for="ProductLink">Product ID:</label>
                <input id="txtProductID" runat="server" min="0" required="required" type="Number" placeholder=" Enter Product Id">
                <asp:Button CssClass="Updated" ID="BtnSearchProduct" runat="server" Text="Search Product" OnClick="BtnSearchProduct_Click" />
                </div>

                <div class="input2">
                    <label>Product ID:  <asp:Label ID="lblProductID" runat="server" Text=""></asp:Label></label>
                    <label>Product Name:  <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></label>
                    <label>Product Category:  <asp:Label ID="lblProductCategory" runat="server" Text=""></asp:Label></label>
                    <label>Product Price: R <asp:Label ID="lblProductPrice" runat="server" Text=""></asp:Label></label>
                    <label>Date Added:  <asp:Label ID="lblDateAdded" runat="server" Text=""></asp:Label></label>
                </div>

                <asp:Label CssClass="submitform" ID="lblDeleteStatus" runat="server" Text=""></asp:Label>

                    <asp:Button CssClass="Delete" ID="btnDeleteProduct" runat="server" Text="Delete Product." OnClick="btnDeleteProduct_Click" />
      

            </div>
            
        </div>

    </div>

    

</asp:Content>
