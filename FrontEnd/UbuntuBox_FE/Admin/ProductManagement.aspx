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

        <asp:Repeater ID="RowRepeater" runat="server">
            <ItemTemplate>
                <div class="ProductRow">

                    <div>
                        <img src='<%# ((string[])Eval("ImageUrls")).Length > 0 
                                      ? ((string[])Eval("ImageUrls"))[0] 
                                      : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU04LdgC-OUYvOGFuUUlBBpmpXw87OobWRT1ggG49lWw&s=10" %>' 
                             width="80" />
                    </div>

                    <div><asp:Label ID="lblProductID" runat="server" Text=<%# Eval("ProductID") %>></asp:Label></div>
                    <div><asp:Label ID="lblProductName" runat="server" Text=<%# Eval("ProductName") %>></asp:Label></div>
                    <div><asp:Label ID="lblProductCategory" runat="server" Text=<%# Eval("BoxCategory") %>></asp:Label></div>
                    <div><asp:Label ID="lblDateAdded" runat="server" Text=<%# Eval("DateAdded") %>></asp:Label></div>
                    <div><asp:Label ID="lblStatus" runat="server" Text=<%# Eval("ProductStatus") %>></asp:Label></div>

                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
    </div>


    </div>

</asp:Content>
