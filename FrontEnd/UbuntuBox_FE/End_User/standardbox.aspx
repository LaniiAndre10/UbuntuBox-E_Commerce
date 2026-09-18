<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="standardbox.aspx.cs" Inherits="User_Management.standardbox" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="Boxes.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="breadcrumb-bar">
    <div class="container">
        <a href="Landing.aspx">Home</a>
        <span class="separator">/</span>
        <a href="Shop.aspx">Shop</a>
        <span class="separator">/</span>
        <span class="current">Standard Box</span>
    </div>
</div>

<div class="product-detail">

    <div class="product-grid">

        <div class="product-image-section">
            <div class="main-image">
                <!--<img src="Logo/Mock Standard.png" alt="Standard Box">-->
                <asp:Image ID="ProductImage" runat="server" />
            </div>
        </div>

        <div class="product-info-section">
            <!--<h1 class="product-title">Standard Box</h1>-->
             <!--<h1 class="product-title"><%# ("BoxCategory") %></h1>-->
            <div class="rating">
                <span class="stars">★★★★★</span>
                <span class="count">(89 reviews)</span>
            </div>

            <!--<div class="price">R 320.00</div>-->
            <!--<div class="price">R <%# ("ProductPrice") %></div>-->
            <p class="description">
                A thoughtfully curated collection of South African-inspired gifts. Perfect for anyone who wants to experience a taste of our culture, this box brings together meaningful, beautiful, and locally inspired treasures.
            </p>
            <!--<p class="description">
                <!--<%# ("Description") %>-->
            </p>-->

            <div class="product-tags">
                <span class="tag"><i class="fa-solid fa-hand-holding-heart"></i> Handmade</span>
                <span class="tag"><i class="fa-solid fa-basket-shopping"></i> Local Crafts</span>
                <span class="tag"><i class="fa-solid fa-gift"></i> Gift Ready</span>
            </div>

            <div class="product-actions">
                <button class="btn-add-to-cart"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                <button class="btn-wishlist"><i class="fa-regular fa-heart"></i> Add to Wishlist</button>
            </div>
        </div>
    </div>

    <div class="about-section">
        <h2>About this box</h2>
        <p>
            The UbuntuBox Standard Box is your gateway to South African culture. Each box is thoughtfully curated with handcrafted items that tell a story from traditional beadwork to locally made treasures.<br />
            Perfect for gifts, celebrations, or treating yourself.
        </p>
    </div>

    <div class="attraction-location">
        <h2>Attraction Location</h2>
        <div class="location-name"><i class="fa-solid fa-location-dot"></i> Cape Town, South Africa</div>
        <div class="map-placeholder">
            <img src="Logo/TMAC-Table_Mountain_Aerial_Cableway.jpg" alt="Cape Town, South Africa" />
        </div>
    </div>

    <div class="whats-inside">
        <h2>Description</h2>
        <p class="description-text">
            This handcrafted Standard Box is curated from a single piece of South African culture. Each item is selected to bring you an authentic experience from traditional beadwork to locally made treasures. The box includes a variety of handcrafted items that showcase the creativity and skill of local artisans.
        </p>

        <h2 style="margin-top:30px;">What's Inside</h2>
        <div class="items-grid">
            <div class="item"><i class="fa-solid fa-circle-check"></i> Beaded Bracelet</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Handcrafted Soap</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Story Card</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Local Artisan Product</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Cultural Keepsake</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> And more...</div>
        </div>
    </div>

    <div class="reviews-section">
        <h2>Product Reviews</h2>

        <div class="reviews-layout">
       
            <div class="rating-summary">
                <div class="big-number">4.7</div>
                <div class="big-stars">★★★★★</div>
                <div class="total-reviews">Based on 89 reviews</div>

                <div class="rating-breakdown">
                    <div class="rating-row">
                        <span class="stars-label">5 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 72%;"></div></div>
                        <span class="count-label">64</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">4 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 19%;"></div></div>
                        <span class="count-label">17</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">3 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 6%;"></div></div>
                        <span class="count-label">5</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">2 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 2%;"></div></div>
                        <span class="count-label">2</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">1 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 1%;"></div></div>
                        <span class="count-label">1</span>
                    </div>
                </div>
            </div>

            <div class="review-list">
                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Naledi M.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">I bought the Standard Box as a gift for my friend and she absolutely loved it! The products were beautifully presented and the quality was exceptional. Will definitely be ordering again.</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Lindiwe S.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">The Standard Box exceeded my expectations! The book about South African heritage was fascinating, and the handcrafted items were beautiful. It felt like opening a piece of home.</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">David R.</span>
                        <span class="review-stars">★★★★☆</span>
                    </div>
                    <p class="review-text">Great selection of products. The only thing I'd change is the shipping time, but overall I'm very happy with my Standard Box. The quality of the items is top-notch.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="similar-boxes">
        <div class="similar-header">
            <h2>Similar Boxes</h2>
            <a href="shop.html" class="view-all">View all <i class="fa-solid fa-arrow-right"></i></a>
        </div>

        <div class="similar-grid">

            <div class="similar-card">
                <div class="thumb">
                    <img src="Logo/Mock Premium.png" alt="Premium Box">
                </div>
                <div class="info">
                    <div class="name"><a href="premium-box.html">Premium Box</a></div>
                    <div class="description">A luxurious selection of premium South African-inspired gifts. Designed for special occasions.</div>
                    <div class="rating">★★★★★ (128 reviews)</div>
                    <div class="price">R 650.00</div>
                    <a href="premium-box.html" class="view-btn">View Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
            
            <div class="similar-card">
                <div class="thumb">
                    <img src="Logo/Mock Mystery.png" alt="Mystery Box">
                </div>
                <div class="info">
                    <div class="name"><a href="mystery-box.html">Mystery Box</a></div>
                    <div class="description">A carefully curated surprise filled with authentic South African treasures. Each box is unique!</div>
                    <div class="rating">★★★★☆ (112 reviews)</div>
                    <div class="price">R 450.00</div>
                    <a href="mystery-box.html" class="view-btn">View Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>

        </div>
    </div>

</div>

</asp:Content>
