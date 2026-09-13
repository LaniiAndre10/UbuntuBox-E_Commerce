<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="premiumbox.aspx.cs" Inherits="User_Management.premiumbox" %>

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
        <span class="current">Premium Box</span>
    </div>
</div>

<div class="product-detail">

    <div class="product-grid">

        <div class="product-image-section">
            <div class="main-image">
                <img src="Logo/Mock Premium.png" alt="Premium Box" />
            </div>

            <div class="product-badges">
                <span class="badge"><i class="fa-solid fa-star"></i> Premium Quality</span>
                <span class="badge"><i class="fa-solid fa-rotate-left"></i> 7 Day Returns</span>
                <span class="badge"><i class="fa-solid fa-truck-fast"></i> Nationwide Delivery</span>
            </div>
        </div>

        <div class="product-info-section">
            <h1 class="product-title">Premium Box</h1>
            <div class="product-location"><i class="fa-solid fa-earth-africa"></i> <span>South Africa</span></div>

            <div class="rating">
                <span class="stars">★★★★★</span>
                <span class="count">(203 reviews)</span>
            </div>

            <div class="price">R 650.00</div>

            <p class="description">
                The UbuntuBox Premium Box brings together a luxurious selection of South African-inspired gifts. Designed for special occasions, meaningful celebrations, and unforgettable gifts. This is the ultimate cultural experience.
            </p>

            <div class="product-tags">
                <span class="tag"><i class="fa-solid fa-star"></i> Premium</span>
                <span class="tag"><i class="fa-solid fa-hand-holding-heart"></i> Handmade</span>
                <span class="tag"><i class="fa-solid fa-gift"></i> Luxury Gift</span>
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
            The UbuntuBox Premium Box is the epitome of South African luxury. Each box features premium, handcrafted items from the country's most talented artisans.<br />
            From exclusive beadwork to bespoke leather goods, every item is selected for its quality, craftsmanship, and cultural significance.
        </p>
    </div>

    <div class="attraction-location">
        <h2>Attraction Location</h2>
        <div class="location-name"><i class="fa-solid fa-location-dot"></i> Cape Town, South Africa</div>
        <div class="map-placeholder">
            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/View_of_Table_Mountain_from_Signal_Hill_1.jpg/1280px-View_of_Table_Mountain_from_Signal_Hill_1.jpg" alt="Cape Town, South Africa" />
        </div>
    </div>

    <div class="whats-inside">
        <h2>Description</h2>
        <p class="description-text">
            This handcrafted Premium Box is meticulously curated from the finest South African craftsmanship. Each item is selected to bring you an authentic luxury experience from premium beadwork to bespoke leather goods. The box includes a variety of exclusive handcrafted items that showcase the pinnacle of local artisan skill.
        </p>

        <h2 style="margin-top:30px;">What's Inside</h2>
        <div class="items-grid">
            <div class="item"><i class="fa-solid fa-circle-check"></i> Premium Beaded Jewelry</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Leather Goods</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Exclusive Artisan Product</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Cultural Story Book</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> Luxury Keepsake</div>
            <div class="item"><i class="fa-solid fa-circle-check"></i> And more...</div>
        </div>
    </div>

    <div class="reviews-section">
        <h2>Product Reviews</h2>

        <div class="reviews-layout">
            <div class="rating-summary">
                <div class="big-number">4.9</div>
                <div class="big-stars">★★★★★</div>
                <div class="total-reviews">Based on 203 reviews</div>

                <div class="rating-breakdown">
                    <div class="rating-row">
                        <span class="stars-label">5 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 82%;"></div></div>
                        <span class="count-label">166</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">4 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 12%;"></div></div>
                        <span class="count-label">24</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">3 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 4%;"></div></div>
                        <span class="count-label">8</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">2 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 1%;"></div></div>
                        <span class="count-label">3</span>
                    </div>
                    <div class="rating-row">
                        <span class="stars-label">1 ★</span>
                        <div class="bar-track"><div class="bar-fill" style="width: 1%;"></div></div>
                        <span class="count-label">2</span>
                    </div>
                </div>
            </div>

            <div class="review-list">
                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Sibusiso D.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">The Premium Box is absolutely stunning! The quality of every item is exceptional. I purchased it as a gift for my mother and she was overwhelmed with joy. Worth every cent!</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Aisha P.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">This is the third time I've ordered the Premium Box and it never disappoints. The curated items are always unique and beautifully crafted. The attention to detail is remarkable.</p>
                </div>

                <div class="review-card">
                    <div class="review-top">
                        <span class="review-name">Kgomotso M.</span>
                        <span class="review-stars">★★★★★</span>
                    </div>
                    <p class="review-text">I received the Premium Box as a corporate gift and was blown away. The craftsmanship, the presentation, the stories behind each item, it was truly a memorable experience. Highly recommended!</p>
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
                    <img src="Logo/Mock Mystery.png" alt="Mystery Box" />
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
