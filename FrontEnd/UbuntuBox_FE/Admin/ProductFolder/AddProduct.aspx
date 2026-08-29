<%@ Page Title="" Language="C#" MasterPageFile="~/AdminInnerMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="UbuntuBox_FE.Admin.ProductFolder.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagecontent">
        <h2>🎁Product Management: Add Product.📦</h2>
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

                    <a href="#">
                    <img  Id="P_Orders" src="../Product Management/Icons/icons8-add-product-32.png" alt="Sales Logo" width="40px">
                    <span>Add Product.</span>
                    </a>
                    
                </div>

                <div class="AnalyticControl">

                    <a href="UpdateProduct.aspx">
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
        
        <div class="charts">

            <div class="form">

                <div class="input">
                <label for="ProductLink">Product Image Link:</label>
                <input id="lblProductLink" runat="server" type="url" required="required" placeholder=" Enter Product Image Link">
                </div>
                
                <div class="input">
                <label for="ProductLink2">Product Image 2 Link:</label>
                <input id="lblProductLink2" runat="server" required="required" type="url" placeholder=" Enter Product Image Link">
                </div>

                <div class="input">
                <label for="ProductName">Product Name:</label>
                <input id="lblProductName" runat="server" required="required" type="text" placeholder="Enter Product Name">
                </div>

                <h4>Product Category:</h4>

                <div class="Category">

                    
                    <div class="boxtype">
                        <label for="Standard">Standard Box:</label>
                        <input id="Standardcheck" type="radio" runat="server" name="StandardBox">
                    </div>

                    <div class="boxtype">
                        <label for="Standard">Premium Box:</label>
                        <input id="PremiumCheck" type="radio" runat="server" name="Premium">
                    </div>

                    <div class="boxtype">
                        <label for="Standard">Mystery Box:</label>
                        <input id="MysteryCheck" type="radio" runat="server" name="Mystery">
                    </div>

                </div>

            </div>

            <div class="form">

                <div class="input">
                <label for="ProductPrice">Product Price:</label>
                <input id="lblProductPrice" runat="server" required="required"  type="number" step="0.01" placeholder="Enter Product Price">
                </div>

                <div class="input">
                <label for="ProductDescription">Product Description:</label>
                <textarea name="ProductDescContainer" runat="server" required="required" id="lblProductDescription" placeholder="Enter Product Description Here." wrap="soft" rows="10" cols="10"></textarea>
                </div>

                <asp:Label CssClass="submitform" ID="lblSubmitstatus" runat="server" Text="Submission Status"></asp:Label>

                <a href="#">
                    <asp:Button  CssClass="submitchange" ID="Button1" runat="server" Text="Add Product To Sale Inventory." OnClick="Button1_Click" />
                </a>

            </div>
            
        </div>

    </div>

</asp:Content>
