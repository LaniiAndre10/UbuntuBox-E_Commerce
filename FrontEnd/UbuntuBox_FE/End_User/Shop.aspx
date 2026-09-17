<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="shoppage.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero-section">
    <div class="hero-text">
        <h1>Table <span>Mountain.</span></h1>
        <div class="hero-line"></div>
        <p>  
        “Rising majestically above Cape Town, Table Mountain is a world‑renowned natural wonder. Its flat summit offers breathtaking panoramic views of the city, ocean, and surrounding peaks. A symbol of South Africa’s beauty, it’s the perfect blend of adventure and serenity.”
        </p>
        <button class="btn-gold">Buy Attaction Ticket. <i class="fa-solid fa-arrow-right"></i></button>
    </div>
</section>
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="UbuntuBox_FE.End_User.Shop" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="Shop.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
    <h2 class="section-title">Standard <span>Boxes</span></h2>

    <div class="attraction-grid">
        <asp:Repeater ID="rptProducts" runat="server">
            <ItemTemplate>
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
                    
                    <!--<h3>Standard Box - Drakensberg</h3>-->
                    <h3><%# Eval("ProductName") %> </h3>
                    <!--<div class="price">R 2500 </div>-->
                    <div class="price">R <%# Eval("Price") %></div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <!--<button> Add to Cart </button>-->
                <asp:Button ID="tocart" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("ProductID") %>' OnClick="tocart_Click" />
            </div>
        </div>
              </ItemTemplate>
      </asp:Repeater>

       <!--<div class="attraction-card">
            <img class="image" src="Logo/Mock Standard.png" alt="Drakensberg">
            <div class="attr-info">
                    <h3>Standard Box - Soweto</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button
                <asp:Button ID="tocart" runat="server" Text="Add To Cart" OnClick="tocart_Click"/>
            </div>
        </div>-->

        <!--<div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Kruger Park">
            <div class="attr-info">
                    <h3>Standard Box - Table Mountain</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

        <!--<div class="attraction-card">
            <img class="image"src="Logo/Mock Mystery.png" alt="Sunset Coast">
            <div class="attr-info">
                    <h3>Mystery Box - Soweto</h3>
                    <div class="price">R 4000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

        <!--<div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Coffer Bay</h3>
                    <div class="price">R 3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

        <!--<div class="attraction-card">
            <img class="image"src="Logo/Mock Mystery.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Mystery Box - uShaka Marine World</h3>
                    <div class="price">R 4000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

        <!--<div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Sun City Resort</h3>
                    <div class="price">R 3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

       <!-- <div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Coffee Bay</h3>
                    <div class="price">R3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

       <!-- <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Standard Box - Table Mountain</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>-->

       <!-- <div class="attraction-card">
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

    </div>

</section>

        <section class="attractions-section" id="attractions">
            <h2 class="section-title">Premium <span>Boxes</span></h2>

            <div class="attraction-grid">
                
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

            </div>

        </section>

        <section class="attractions-section" id="attractions">
    <h2 class="section-title">Mystery <span>Boxes</span></h2>

    <div class="attraction-grid">
        
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
        </div>-->

    </div>

</section>

</asp:Content>
