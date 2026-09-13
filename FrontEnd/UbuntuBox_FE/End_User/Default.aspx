<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="User_Management._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="hero-section">
    <div class="hero-text">
        <h1>Gifts with a <span>South African Story</span></h1>
        <div class="hero-line"></div>
        <p>Discover mystery and meaning in every box. Curated gifts from iconic South African places, packed with culture, crafted with love.</p>
        <button class="btn-gold">Shop Mystery Boxes <i class="fa-solid fa-arrow-right"></i></button>
        <button class="btn-outline"><i class="fa-solid fa-play"></i> How it Works</button>
    </div>
</section>

<div class="features-section">
    <div class="feature-box">
        <i class="fa-solid fa-box-open"></i>
        <div>
            <h4>Curated Boxes</h4>
            <p>Thoughtfully curated with local treasures</p>
        </div>
    </div>
    <div class="feature-box">
        <i class="fa-solid fa-location-dot"></i>
        <div>
            <h4>From Iconic Places</h4>
            <p>Inspired by South Africa's most loved attractions</p>
        </div>
    </div>
    <div class="feature-box">
        <i class="fa-solid fa-lock"></i>
        <div>
            <h4>Secure Checkout</h4>
            <p>Safe, fast and trusted payments</p>
        </div>
    </div>
    <div class="feature-box">
        <i class="fa-solid fa-truck-fast"></i>
        <div>
            <h4>Nationwide Delivery</h4>
            <p>Bringing South Africa to your doorstep</p>
        </div>
    </div>
</div>

<section class="attractions-section" id="attractions">
    <h2 class="section-title">Featured <span>Attractions</span></h2>

    <div class="attraction-grid">
        <div class="attraction-card">
            <img src="Logo/TMAC-Table_Mountain_Aerial_Cableway.jpg" alt="Table Mountain">
            <div class="attr-info">
                <div>
                    <h3>Table Mountain</h3>
                    <p>Cape Town</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/images-durban.jpg" alt="Drakensberg">
            <div class="attr-info">
                <div>
                    <h3>Drakensberg</h3>
                    <p>KwaZulu-Natal</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/Mansi-Tour-Image-5-780x470.jpeg" alt="Kruger Park">
            <div class="attr-info">
                <div>
                    <h3>Kruger Park</h3>
                    <p>Limpopo</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/images-wc.jpg" alt="Sunset Coast">
            <div class="attr-info">
                <div>
                    <h3>Sunset Coast</h3>
                    <p>Western Cape</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/palace-homepage-hero.jpg" alt="Sunset Coast">
            <div class="attr-info">
                <div>
                    <h3>Sun City Resort</h3>
                    <p>North West</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/images.jpg" alt="Sunset Coast">
            <div class="attr-info">
                <div>
                    <h3>uShaka Marine World</h3>
                    <p>KwaZulu-Natal</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/images 2.jpg" alt="Sunset Coast">
            <div class="attr-info">
                <div>
                    <h3>Soweto</h3>
                    <p>Gauteng</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>

        <div class="attraction-card">
            <img src="Logo/images 3.jpg" alt="Sunset Coast">
            <div class="attr-info">
                <div>
                    <h3>Augrabies Falls National Park</h3>
                    <p>Northern Cape</p>
                </div>
                <i class="fa-solid fa-arrow-right"></i>
            </div>
        </div>
    </div>
    <a href="#" class="view-all">View all attractions <i class="fa-solid fa-arrow-right"></i></a>
</section>

<section class="discover-section" id="about">
    <div class="discover-container">
        <div class="discover-content">
            <h2>Discover the heart of <span>South Africa</span> in every UbuntuBox</h2>
            <p>Each box is a journey through South Africa's rich culture, connecting you to the places, people, and stories that make this country extraordinary.</p>
            <div class="discover-features">
                <div class="discover-feature">
                    <i class="fa-solid fa-hand-holding-heart"></i>
                    <div>
                        <h4>Support Local Artisans</h4>
                        <p>Every purchase supports local craftspeople and their communities.</p>
                    </div>
                </div>
                <div class="discover-feature">
                    <i class="fa-solid fa-leaf"></i>
                    <div>
                        <h4>Sustainably Sourced</h4>
                        <p>We prioritize ethical, sustainable materials and practices.</p>
                    </div>
                </div>
                <div class="discover-feature">
                    <i class="fa-solid fa-book-open"></i>
                    <div>
                        <h4>Tell a Story</h4>
                        <p>Each item comes with a story card sharing its cultural significance.</p>
                    </div>
                </div>
            </div>
            <a href="Products.html" class="btn-gold">Explore Our Boxes <i class="fa-solid fa-arrow-right"></i></a>
        </div>
    </div>
</section>

<section class="faq-section" id="faqs">
    <h2 class="section-title">Frequently Asked <span>Questions</span></h2>
    
    <div class="faq-container">
        <div class="faq-item">
            <div class="faq-question">
                <h4>What is UbuntuBox?</h4>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
                <p>UbuntuBox is a curated gift box service that brings South African culture to your doorstep. Each box is filled with handcrafted, locally sourced items that tell a unique story about South Africa's heritage and people.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                <h4>How do I choose the right box?</h4>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
                <p>We offer three types of boxes: Mystery Box (surprise selection), Standard Box (curated classics), and Premium Box (luxury items). You can also shop by attraction or province to find gifts from specific regions.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                <h4>Where do you deliver?</h4>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
                <p>We deliver nationwide across South Africa. Our shipping partners ensure your box arrives safely and on time, no matter where you are in the country.</p>
            </div>
        </div>

        <div class="faq-item">
            <div class="faq-question">
                <h4>Can I customise my box?</h4>
                <i class="fa-solid fa-chevron-down"></i>
            </div>
            <div class="faq-answer">
                <p>Yes! We offer customisation options for corporate gifts, special events, and personal occasions. Contact our team to create a bespoke UbuntuBox experience.</p>
            </div>
        </div>
    </div>
</section>

</asp:Content>
