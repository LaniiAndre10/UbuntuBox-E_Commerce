<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="User_Management.cart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
        <link rel="stylesheet" href="cart.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <section class="cart-section">

    <div class="cart-items">

        <div class="cart-item">
            <div class="cart-item-image">
                <img src="Logo/Mock Standard.png" alt="Standard Box">
            </div>
            <div class="cart-item-details">
                <h4>Standard Box</h4>
                <div class="price">R 320.00</div>
            </div>
            <div class="quantity-control">
                <button>−</button>
                <span>1</span>
                <button>+</button>
            </div>
            <div class="item-total">R 320.00</div>
            <button class="remove-btn"><i class="fa-solid fa-trash-can"></i></button>
        </div>

        <div class="cart-item">
            <div class="cart-item-image">
                <img src="Logo/Mock Premium.png" alt="Premium Box">
            </div>
            <div class="cart-item-details">
                <h4>Premium Box</h4>
                <div class="price">R 650.00</div>
            </div>
            <div class="quantity-control">
                <button>−</button>
                <span>1</span>
                <button>+</button>
            </div>
            <div class="item-total">R 650.00</div>
            <button class="remove-btn"><i class="fa-solid fa-trash-can"></i></button>
        </div>

        <div class="cart-item">
            <div class="cart-item-image">
                <img src="Logo/Mock Mystery.png" alt="Mystery Box">
            </div>
            <div class="cart-item-details">
                <h4>Mystery Box</h4>
                <div class="price">R 450.00</div>
            </div>
            <div class="quantity-control">
                <button>−</button>
                <span>2</span>
                <button>+</button>
            </div>
            <div class="item-total">R 900.00</div>
            <button class="remove-btn"><i class="fa-solid fa-trash-can"></i></button>
        </div>

        <a href="shop.html" class="continue-shopping">
            <i class="fa-solid fa-arrow-left"></i> Continue Shopping
        </a>
    </div>

    <div class="order-summary">
        <h2>Order Summary</h2>

        <div class="summary-row">
            <span>Subtotal</span>
            <span>R 1,870.00</span>
        </div>

        <div class="summary-row">
            <span>Shipping (Estimated)</span>
            <span>R 99.00</span>
        </div>

        <div class="summary-row total">
            <span>Total</span>
            <span class="amount">R 1,969.00</span>
        </div>

        <div class="free-shipping">
            <i class="fa-solid fa-truck-fast"></i> Free shipping on orders over R 1,000
        </div>

        <a href="checkout.aspx" class="btn-checkout">Proceed to Checkout <i class="fa-solid fa-arrow-right"></i></a>

        <div class="shipping-estimate">
            <h3>Shipping Estimation</h3>
            <select>
                <option value="">Enter your province </option>
                <option value="eastern-cape">Eastern Cape</option>
                <option value="free-state">Free State</option>
                <option value="gauteng">Gauteng</option>
                <option value="kwazulu-natal">KwaZulu-Natal</option>
                <option value="limpopo">Limpopo</option>
                <option value="mpumalanga">Mpumalanga</option>
                <option value="northern-cape">Northern Cape</option>
                <option value="north-west">North West</option>
                <option value="western-cape">Western Cape</option>
            </select>
            <div class="note">We deliver nationwide to all 9 provinces in South Africa.</div>
        </div>
    </div>

</section>

</asp:Content>
