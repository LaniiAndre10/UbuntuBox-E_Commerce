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
                <div class="label">Ship to</div>
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
                <div class="card-number">•••••••242</div>
            </div>
        </div>

        <div class="capitec-pay">
            <div class="secure-label"><i class="fa-solid fa-lock"></i> Secure Payment with Capitec Pay</div>
            <div class="capitec-brand">
                <span class="logo-box">CAPITEC</span>
                <span class="card-number-display">•••••••242</span>
            </div>
            <div class="amount-row">
                <span class="label">    🔔If Invoice Downloads, Your purchase was successful.✅</span>
            </div>

            <div class="amount-row">
                <span class="label">    🔔If not, Your purchase was Unsuccessful.❌</span>
            </div>

            <asp:Button ID="BtnApprove" CssClass="btn-approve" runat="server" Text="Approve Payment" OnClick="BtnApprove_Click" />

        </div>

    </div>

    <div class="order-summary">
        <h2>Other Payment Methods.</h2>

        <button disabled="disabled" class="btn-pay-now"><i class="fa-solid fa-credit-card"></i>Other Payment Method.</button>

        <div class="payment-icons">
            <span class="label">We accept</span>
            <span class="icon visa">VISA</span>
            <span class="icon eft">EFT</span>
            <span class="icon snapscan">SnapScan</span>
        </div>

        <div class="secure-checkout">
            <i class="fa-solid fa-lock"></i> Secure Checkout: Your payment information is safe with us.
        </div>
    </div>

</section>

</asp:Content>
