<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="User_Management.Shop" %>

    <asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
        <link rel="stylesheet" href="Shop.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<section class="categories">
    <div class="category-buttons">
        <table>
            <tr>
                <td>Standard Boxes</td>
                <td>Premium Boxes</td>
                <td>Mystery Boxes</td>
            </tr>
        </table>
    </div>
    
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

<section class="categories">
    <div class="category-buttons">
        <table>
            <tr>
                <td>Standard Boxes</td>
                <td>Premium Boxes</td>
                <td>Mystery Boxes</td>
            </tr>
        </table>
    </div>
    
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
    <h2 class="section-title">Featured <span>Boxes</span></h2>

    <div class="attraction-grid">
        <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Standard Box - Drakensberg</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image" src="Logo/Mock Standard.png" alt="Drakensberg">
            <div class="attr-info">
                    <h3>Standard Box - Soweto</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Kruger Park">
            <div class="attr-info">
                    <h3>Standard Box - Table Mountain</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Mystery.png" alt="Sunset Coast">
            <div class="attr-info">
                    <h3>Mystery Box - Soweto</h3>
                    <div class="price">R 4000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>

            
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Coffer Bay</h3>
                    <div class="price">R 3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Mystery.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Mystery Box - uShaka Marine World</h3>
                    <div class="price">R 4000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Sun City Resort</h3>
                    <div class="price">R 3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Premium.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Premium Box - Coffee Bay</h3>
                    <div class="price">R3000 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>
        <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Standard Box - Table Mountain</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

        <div class="attraction-card">
            <img class="image"src="Logo/Mock Standard.png" alt="Table Mountain">
            <div class="attr-info">
                    <h3>Standard Box - Soweto</h3>
                    <div class="price">R 2500 </div>
                    <p><i class="fa-solid fa-star"></i>&nbsp;4.9 (50)</p>
                    <button> Add to Cart </button>
            </div>
        </div>

    </div>

</section>

</asp:Content>
