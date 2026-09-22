<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mysterybox.aspx.cs" Inherits="User_Management.mysterybox" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
        <link rel="stylesheet" href="Boxes.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="breadcrumb-bar">
    <div class="container">
        <a href="Default.aspx">Home</a>
        <span class="separator">/</span>
        <a href="Shop.aspx">Shop</a>
        <span class="separator">/</span>
        <span class="current">Mystery Box</span>
    </div>
</div>

<div class="product-detail">

    <div class="product-grid">

        <div class="product-image-section">
            <div class="main-image">
                <img src="Logo/Mock Mystery.png" alt="Mystery Box" />
            </div>

            <div class="product-badges">
                <span class="badge"><i class="fa-solid fa-gift"></i> Surprise Inside</span>
                <span class="badge"><i class="fa-solid fa-rotate-left"></i> 7 Day Returns</span>
                <span class="badge"><i class="fa-solid fa-truck-fast"></i> Nationwide Delivery</span>
            </div>
        </div>

        <div class="product-info-section">
            <h1 class="product-title">Mystery Box</h1>
            <div class="product-location"><i class="fa-solid fa-dice"></i> <span>Surprise Edition</span></div>

            <div class="rating">
                <span class="stars">★★★★★</span>
                <span class="count">(156 reviews)</span>
            </div>

            <div class="price">R 450.00</div>

            <p class="description">
                A carefully curated surprise filled with authentic South African treasures. Each box is unique and contains a selection of handcrafted items, cultural keepsakes, and local delights.
            </p>

            <div class="product-tags">
                <span class="tag"><i class="fa-solid fa-gift"></i> Surprise</span>
                <span class="tag"><i class="fa-solid fa-hand-holding-heart"></i> Handmade</span>
                <span class="tag"><i class="fa-solid fa-basket-shopping"></i> Local Crafts</span>
            </div>

            <div class="product-actions">
                <button class="btn-add-to-cart"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                <button class="btn-wishlist"><i class="fa-regular fa-heart"></i> Add to Wishlist</button>
            </div>
        </div>
    </div>

    

    <div class="whats-inside">
        <h2>Description</h2>
        <p class="description-text">
            This handcrafted Mystery Box is carefully curated from a variety of South African artisans. Each box is uniquely assembled with a selection of handcrafted items from beaded jewelry to cultural keepsakes. You never know what treasures you'll discover, but every item is authentic, meaningful, and tells a story.
        </p>

        <h2 style="margin-top:30px;">What's Inside</h2>
        <div class="items-grid">
            <div class="item"><i class="fa-solid fa-circle-check"></i> Handcrafted Jewelry</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Cultural Keepsake</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Local Artisan Product</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Story Card</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Surprise Item</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> And more...</div>
        </div>
    </div>

    <div class="reviews-section">
        <h2>Product Reviews</h2>

        <div class="reviews-layout">
            <div class="rating-summary">
                <div class="big-number">4.8</div>
                <div class="big-stars">★★★★★</div>
                <div class="total-reviews">Based on 156 reviews</div>

                <div class="rating-breakdown">
                    <div class="rating-row">
                        <span class="stars-label">5 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 78%;"></div></div>
                        <span class="count-label">122</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">4 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 14%;"></div></div>
                        <span class="count-label">22</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">3 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 5%;"></div></div>
                        <span class="count-label">8</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">2 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 2%;"></div></div>
                        <span class="count-label">3</span>
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
                        <span class="review-name">Thandi N.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">I absolutely loved my Mystery Box! Every item felt like a little discovery. The beaded bracelet and the handmade soap were my favourites. I can't wait to order another one!</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Sipho K.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">The Mystery Box was the highlight of my month! I received a beautiful wooden carving and some delicious rooibos tea. The surprise element makes it so exciting. Highly recommend!</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Zanele M.</span>
                        <span class="review-stars">★★★★☆</span>
                    </div>
                    <p class="review-text">Great concept and lovely products. The only reason I'm giving 4 stars is that I wished there was a bit more variety in the items. But overall, a wonderful experience!</p>
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
                    <img src="Logo/Mock Standard.png" alt="Standard Box" />
                </div>
                <div class="info">
                    <div class="name"><a href="standard-box.html">Standard Box</a></div>
                    <div class="description">A thoughtfully curated collection of South African-inspired gifts. Perfect for any occasion.</div>
                    <div class="rating">★★★★★ (89 reviews)</div>
                    <div class="price">R 320.00</div>
                    <a href="standard-box.html" class="view-btn">View Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>

            <div class="similar-card">
                <div class="thumb">
                    <img src="Logo/Mock Premium.png" alt="Premium Box" />
                </div> 
                <div class="info">
                    <div class="name"><a href="premium-box.html">Premium Box</a></div>
                    <div class="description">A luxurious selection of premium South African-inspired gifts. Designed for special occasions.</div>
                    <div class="rating">★★★★★ (203 reviews)</div>
                    <div class="price">R 650.00</div>
                    <a href="premium-box.html" class="view-btn">View Box <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>

</div>

</asp:Content>
