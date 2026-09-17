<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="User_Management.checkout" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="checkout.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="checkout-section">

    <div class="checkout-left">

        <div class="delivery-details">
            <div class="section-title">
                <span class="number">1</span> Delivery Details
            </div>
            <div class="delivery-info">
                <div class="label">Send to</div>
                <div class="name">Thabo Molefe</div>
                <div class="address">
                    123 Ocean Drive, Plettenberg Bay<br />
                    Western Cape, 6600<br />
                    South Africa
                </div>
                <div class="phone"><i class="fa-solid fa-phone"></i> 072 123 4567</div>
            </div>
        </div>

        <div class="payment-method">
            <div class="section-title">
                <span class="number">2</span> Payment Method
            </div>
            <div class="payment-info">
                <div class="label">Pay Now</div>
                <div class="pay-now">Capitec Pay</div>
                <div class="card-number">•••• 4242</div>
            </div>
        </div>

        <div class="capitec-pay">
            <div class="secure-label"><i class="fa-solid fa-lock"></i> Secure Payment with Capitec Pay</div>
            <div class="capitec-brand">
                <span class="logo-box">CAPITEC</span>
                <span class="card-number-display">•••• 4242</span>
            </div>
            <div class="amount-row">
                <span class="label">Amount to pay</span>
                <span class="amount">R 3,695.00</span>
            </div>
            <button class="btn-approve"><i class="fa-solid fa-check-circle"></i> Approve Payment</button>
        </div>

    </div>

    <div class="order-summary">
        <h2>Order Summary</h2>

        <div class="order-item">
            <span class="name">Garden Route Deluxe Box</span>
            <span class="price">R 899.00</span>
        </div>

        <div class="order-item">
            <span class="name">Zulu Heritage Box</span>
            <span class="price">R 899.00</span>
        </div>

        <div class="order-item">
            <span class="name">Mystery Box - Premium <span class="qty">(x2)</span></span>
            <span class="price">R 1,998.00</span>
        </div>

        <hr class="summary-divider" />

        <div class="summary-row">
            <span class="label">Subtotal</span>
            <span class="value">R 3,596.00</span>
        </div>

        <div class="summary-row">
            <span class="label">Shipping</span>
            <span class="value">R 99.00</span>
        </div>

        <div class="summary-row total">
            <span>Total</span>
            <span class="value">R 3,695.00</span>
        </div>

        <button class="btn-pay-now"><i class="fa-solid fa-credit-card"></i> Pay Now</button>

        <div class="payment-icons">
            <span class="label">We accept</span>
            <span class="icon visa">VISA</span>
            <span class="icon eft">EFT</span>
            <span class="icon snapscan">SnapScan</span>
        </div>

        <div class="secure-checkout">
            <i class="fa-solid fa-lock"></i> Secure Checkout — Your payment information is safe with us.
        </div>
    </div>

</section>

</asp:Content>
