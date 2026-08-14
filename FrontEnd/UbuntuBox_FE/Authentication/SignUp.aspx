<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="UbuntuBox_FE.Authentication.SignUp" %>

<!DOCTYPE html>

<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>UbuntuBox: SignUp.</title>
        <link rel="stylesheet" href="./Styles/Register.css">
        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.3.0/css/all.min.css"
          integrity="sha512-ApSLB1Pd3/bZN8fWB/RG9YhN/7bd9Hkf3AGaE2mPfebjrxagjuBtx2GcgdqIlJkUzwylBo61r9Xa9NmgBI0swA=="
          crossorigin="anonymous"
          referrerpolicy="no-referrer">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">

    </head>

<body>
    <form id="form1" runat="server">
        <div>

            <div class="register-container">

        <div class="register-image">
            <img src="./Styles/images/956848f7d698994bca3c03767bb48ff70c9996fe20522e2a068f5c4a7c74431c.png" alt="Register Image" width="350" height="350">
        </div>

        <div class="register-form">

            <h1>Create <span>Account!</span></h1>

            <form>

                <label for="name">Name &amp; Surname</label>

                <div class="input-container">

                    <i class="fa-solid fa-user"></i>
                    <input type="text" runat="server" ID="name" placeholder="Enter your name and surname" required>

                </div>

                <label for="email">Email</label>

                <div class="input-container">

                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" runat="server" ID="email" placeholder="Enter your email" required>

                </div>

                <label for="phone">Phone Number</label>

                <div class="input-container">

                    <i class="fa-solid fa-phone"></i>
                    <input type="tel" runat="server" ID="phone" placeholder="Enter your phone number" required>

                </div>

                <label for="password">Password</label>

                <div class="input-container">

                    <i class="fa-solid fa-lock"></i>
                    <input type="password" runat="server" ID="password" placeholder="Create a password" required>

                </div>

                <label for="confirm-password">Confirm Password</label>

                <div class="input-container">

                    <i class="fa-solid fa-lock"></i>
                    <input type="password" runat="server" ID="confirm" placeholder="Confirm your password" required>

                </div>

                <label for="IsAdmin">Create an Admin type of account?</label>
                <asp:CheckBox ID="IsAdmincheck" runat="server" /> 

                <hr />

                <asp:Button ID="CreateAcc" type="submit" runat="server" Text="Create Account." OnClick="CreateAcc_Click" />

                <br />
                <br />

                <asp:Label ID="ServerResponse" runat="server" Text=""></asp:Label>

            </form>

            <hr>

            <p class="login-link">Already have an account?<a href="Login.aspx">&nbsp;Login</a></p>

        </div>

    </div>

        </div>
    </form>
</body>
</html>
