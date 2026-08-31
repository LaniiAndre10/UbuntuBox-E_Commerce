<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="User_Management.Shop" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
        <link rel="stylesheet" href="Shop.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="shop-section">
    <div class="shop-container">

        <aside class="shop-sidebar">
            <div class="category-box">
                <h3><i class="fa-solid fa-tags"></i> Shop by Category</h3>
           
                <div class="category-dropdown active">
                    <div class="dropdown-btn">
                        <span><i class="fa-solid fa-box"></i> Box Type</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa-solid fa-crown"></i> Premium Boxes</a></li>
                        <li><a href="#"><i class="fa-solid fa-gift"></i> Standard Boxes</a></li>
                        <li><a href="#"><i class="fa-solid fa-circle-question"></i> Mystery Boxes</a></li>
                    </ul>
                </div>

                <div class="category-dropdown">
                    <div class="dropdown-btn">
                        <span><i class="fa-solid fa-map-pin"></i> Province</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Western Cape</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Eastern Cape</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> KwaZulu-Natal</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Gauteng</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Mpumalanga</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Limpopo</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Free State</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> North West</a></li>
                        <li><a href="#"><i class="fa-solid fa-location-dot"></i> Northern Cape</a></li>
                    </ul>
                </div>

                <div class="category-dropdown">
                    <div class="dropdown-btn">
                        <span><i class="fa-solid fa-landmark"></i> Attraction</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </div>
                    <ul class="dropdown-menu">
                        <li><a href="#"><i class="fa-solid fa-mountain"></i> Table Mountain</a></li>
                        <li><a href="#"><i class="fa-solid fa-umbrella-beach"></i> Cape Point</a></li>
                        <li><a href="#"><i class="fa-solid fa-tree"></i> Kruger National Park</a></li>
                        <li><a href="#"><i class="fa-solid fa-water"></i> Garden Route</a></li>
                        <li><a href="#"><i class="fa-solid fa-city"></i> Robben Island</a></li>
                        <li><a href="#"><i class="fa-solid fa-wine-bottle"></i> Stellenbosch Winelands</a></li>
                        <li><a href="#"><i class="fa-solid fa-sun"></i> Durban Beachfront</a></li>
                        <li><a href="#"><i class="fa-solid fa-hotel"></i> Soweto</a></li>
                    </ul>
                </div>
            </div>
        </aside>

        <div class="box-grid">

            <div class="box-card">
                <div class="box-card-image">
                    <img src="Logo/Mock Mystery.png" alt="Mystery Box">
                </div>
                <div class="box-card-content">
                    <h2>Mystery Box</h2>
                    <div class="price">R 450 <span>R 600</span></div>
                    <p>A carefully curated surprise filled with authentic South African treasures.</p>
                    <ul class="features-preview">
                        <li>5&ndash;7 unique items</li>
                        <li>Handcrafted by local artisans</li>
                        <li>Includes story card</li>
                    </ul>
                    <a href="mysterybox.aspx" class="btn-select">View Mystery Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>

            <div class="box-card">
                <div class="box-card-image">
                    <img src="Logo/Mock Standard.png" alt="Standard Box">
                </div>
                <div class="box-card-content">
                    <h2>Standard Box</h2>
                    <div class="price">R 320 <span>R 400</span></div>
                    <p>A thoughtfully curated collection of South African-inspired gifts. Perfect for any occasion.</p>
                    <ul class="features-preview">
                        <li>4&ndash;6 curated items</li>
                        <li>Handmade by local artisans</li>
                        <li>Beautifully packaged</li>
                    </ul>
                    <a href="standardbox.aspx" class="btn-select">View Standard Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>

            <div class="box-card">
                <div class="box-card-image">
                    <img src="Logo/Mock Premium.png" alt="Premium Box">
                </div>
                <div class="box-card-content">
                    <h2>Premium Box</h2>
                    <div class="price">R 650 <span>R 800</span></div>
                    <p>A luxurious selection of premium South African-inspired gifts for special occasions.</p>
                    <ul class="features-preview">
                        <li>6&ndash;8 premium items</li>
                        <li>Exclusive artisan products</li>
                        <li>Luxury packaging</li>
                    </ul>
                    <a href="premiumbox.aspx" class="btn-select">View Premium Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>
