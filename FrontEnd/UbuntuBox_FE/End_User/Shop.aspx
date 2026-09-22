<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="UbuntuBox_FE.End_User.Shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UbuntuBox Shop Page</title>
    

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link rel="stylesheet" href="Shop.css" />
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700;800&display=swap" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="hero-section" 
        style='<%= "background-image: linear-gradient(to right, rgba(0,0,0,0.9), rgba(0,0,0,0.6)), url(" + AttractionImage.ImageUrl + ");" %>'>
    
        <asp:Image ID="AttractionImage" runat="server" CssClass="hidden-bg-source" />

        <div class="hero-text">
            <h1>
                <asp:Label ID="lblAttractionName" runat="server" Text=""></asp:Label>
            </h1>
            <p>
                <asp:Label ID="lblAttractionDes" runat="server" Text=""></asp:Label>
            </p>

            <a href="https://computicket.com/page/home" class="btn-gold" >Buy Attraction Ticket <i class="fa-solid fa-arrow-right"></i></a>
        </div>
    </section>



<section class="categories">

    <div class="sort-options">
        <p>Box Filter: <select id="BoxFilter" runat="server" onserverchange="BoxFilter_SelectedIndexChanged" onchange="this.form.submit();">
            <option value="All">All Boxes</option>
            <option value="Standard">Standard Box</option>
            <option value="Premium">Premium Box</option>
            <option value="Mystery">Mystery Box</option>
        </select></p>
    </div>

    
    <div class="sort-options">
    <p>Sort By: 
        <select id="ProductSorter" runat="server" 
                onserverchange="ProductSort_SelectedIndexChanged" 
                onchange="this.form.submit();">
            <option value="PriceAsc">Price: Low to High</option>
            <option value="PriceDesc">Price: High to Low</option>
            <option value="DateDesc">Newest Arrivals</option>
        </select>
    </p>
</div>


</section>

<section class="attractions-section" id="attractions">
    
    <!--<h2 class="section-title">Standard <span>Boxes</span></h2>-->
    <div class="attraction-grid">

        <asp:Repeater ID="rptProducts" runat="server">

            <ItemTemplate>
                
                <div class="attraction-card">
                    
                    <img class="image" src="Logo/Mock Standard.png" alt="Table Mountain" />
                     
                    <div class="attr-info">
                        <h5><%# Eval("ProductName") %></h5>
                        
                        <div class="price">R <%# Eval("ProductPrice") %></div>
                        
                        <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>

                        <div class="shopbuttons">
                            <!--<button class="Seebutton"> See Product </button>-->
                            <a class="Seebutton" href="standardbox.aspx?Id=<%# Eval("ProductID") %>">
                                See Product
                            </a>
                            <!--<button> Add to Cart </button>-->
                            <asp:Button ID="tocart" CssClass="tocart" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductID") %>' OnClick="tocart_Click" />
                        </div>
                    </div>
                </div>

            </ItemTemplate>
        </asp:Repeater>
    </div>

</section>



</asp:Content>

    


