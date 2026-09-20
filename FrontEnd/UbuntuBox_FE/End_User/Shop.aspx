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

    <section class="hero-section">
    <div class="hero-text">
        <h1>
            <!--Table <span>Mountain.</span>-->
            <asp:Label ID="lblAttractionName" runat="server" Text=""></asp:Label>
        </h1>
        <div >
            <asp:Image class="hero-line" ID="AttractionImage" runat="server" />
        </div>
        <p>  
        <!--“Rising majestically above Cape Town, Table Mountain is a world‑renowned natural wonder. Its flat summit offers breathtaking panoramic views of the city, ocean, and surrounding peaks. A symbol of South Africa’s beauty, it’s the perfect blend of adventure and serenity.”-->
            <asp:Label ID="lblAttractionDes" runat="server" Text=""></asp:Label>
        </p>
        <button class="btn-gold">Buy Attaction Ticket. <i class="fa-solid fa-arrow-right"></i></button>
    </div>
</section>

<section class="categories">
    
    <div class="sort-options">
        <p>Sort By: <select>
            <option>Price: Low to High</option>
            <option>Price: High to Low</option>
            <option>Top Rated</option>
            <option>Newest Arrivals</option>
        </select></p>
        <i class="fa-solid fa-table-cells-large"></i>
        <i class="fa-solid fa-list"></i>
    </div>
</section>

<section class="attractions-section" id="attractions">

    <!--<h2 class="section-title">Standard <span>Boxes</span></h2>-->
     <h2 class="section-title">
        Boxes Available for <asp:Label ID="lblAttractionNam" runat="server" Text="Label"></asp:Label>
     </h2>
    <div class="attraction-grid">
        <asp:Repeater ID="rptProducts" runat="server">
        <itemTemplate>
        <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
             
            <div class="attr-info">
                    <h5><%# Eval("ProductName") %></h5>
                    <div class="price">R <%# Eval("ProductPrice") %> </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>

                    <div class="shopbuttons">
                        <!--<button class="Seebutton"> See Product </button>-->
                        <a class="Seebutton" href="standardbox.aspx?Id=<%# Eval("ProductID") %>" >
                            See Product
                        </a>
                        <!--<button> Add to Cart </button>-->
                        <asp:button CssClass="tocart" ID="tocart" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductID") %>' OnClick="tocart_Click" />
                    </div>
                    
            </div>
        </div>
             </itemTemplate>
           </asp:Repeater>
    </div>

</section>

  <!-- <section class="attractions-section" id="attractions">
            <h2 class="section-title">Premium <span>Boxes</span></h2>
             <h2 class="section-title">
                 <%# Eval("Key") %>
             </h2>
            <div class="attraction-grid">
                <asp:Repeater DataSource="<%# Container %>" runat="server">
                    <itemTemplate>
                <div class="attraction-card">
                    <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">

                    <div class="attr-info">
                            <h5>Standard Box - Drakensberg</h5>
                            <h5><%# Eval("ProductName") %></h5>
                            <div class="price">R 2500 </div>
                            <div class="price">R <%# Eval("ProductPrice") %> </div>
                            <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>

                            <div class="shopbuttons">

                                <button class="Seebutton"> See Product </button>
                                <button> Add to Cart </button>
                                <asp:Button class="Addtocartbutton" ID="tocart" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductID") %>' OnClick="tocart_Click" />
                            </div>
                            
                    </div>
                </div>
                  </itemTemplate>
            </asp:Repeater>
           
            </div>
    </section>-->

   <!--<section class="attractions-section" id="attractions">
    <h2 class="section-title">Mystery <span>Boxes</span></h2>

    <div class="attraction-grid">
         <asp:Repeater ID="Repeater1" runat="server">
              <itemTemplate>
        <div class="attraction-card">
                    <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
                <div class="attr-info">
                        <h5>Standard Box - Drakensberg</h5>
                <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>

                <div class="shopbuttons">

                    <button class="Seebutton"> See Product </button>
                    <button> Add to Cart </button>
                                
                </div>
                            
            </div>
        </div>
              </itemTemplate>
         </asp:Repeater>
                                
                </div>

</section>-->


</asp:Content>

    


