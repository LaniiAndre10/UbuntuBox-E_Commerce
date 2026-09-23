<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="UbuntuBox_FE.End_User.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="cart.css" runat="server" />
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="cart-section">

    <div class="cart-items">

        <h4>Cart</h4>
        <br />
        <br />
        <br />
        <br />

        <asp:Repeater ID="rptCartItems" runat="server">
        <ItemTemplate>
        <div class="cart-item">
            <div class="cart-item-image">
                <!--<img src="Logo/Mock Standard.png" alt="Standard Box">-->
                 <img class="image" src= '<%# ((string[])Eval("ImageUrls")).Length > 0
                             ? ((string[])Eval("ImageUrls"))[0]
                             :"https://th.bing.com/th?q=Shien+Art+South+Africa" %>'/>
            </div>
            <div class="cart-item-details">
                <!--<h4>Standard Box</h4>-->
                 <h4><%# Eval("ProductName") %></h4>
                <!--<div class="price">R 320.00</div>-->
                <div class="price">R <%# ((decimal)Eval("Price")).ToString("F2") %></div>
            </div>
            <div class="quantity-control">
                <!--<button>−</button>-->
                <asp:Button ID="DecreaseQuantity" runat="server" CommandArgument='<%# Eval("ProductID") %>'  Text="-" OnClick="DecreaseQuantity_Click" />
                <!--<span>1</span>-->
                <span><%# Eval("Quantity") %></span>
                <!--<button>+</button>-->
                <asp:Button ID="IncreaseQuantity" runat="server" CommandArgument='<%# Eval("ProductID") %>'  Text="+" OnClick="IncreaseQuantity_Click" />
            </div>
            <!--<div class="item-total">R 320.00</div>-->
            <div class="item-total">R<%# ((decimal)Eval("ItemPrice")).ToString("F2") %></div>
            <!--<button class="remove-btn" ><i class="fa-solid fa-trash-can"></i></button>-->
            <asp:LinkButton class="remove-btn" ID="trash" runat="server" CommandArgument='<%# Eval("ProductID") %>' OnClick="RemoveItem_Click" ><i class="fa-solid fa-trash-can"></i></asp:LinkButton>
        </div>
      </ItemTemplate>
      </asp:Repeater>

        <a href="Landing.aspx" class="continue-shopping">
            <i class="fa-solid fa-arrow-left"></i> Continue Shopping
        </a>
    </div>

    <div class="order-summary">
        <h2>Order Summary</h2>

        <div class="summary-row">
            <span>Subtotal</span>
            <span>R****</span>
        </div>

        <div class="summary-row">
            <span>Shipping (Estimated)</span>
            <span>R 99.00</span>
        </div>

        <div class="summary-row total">
            <span>Total</span>
            <span class="amount">R *****</span>
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
