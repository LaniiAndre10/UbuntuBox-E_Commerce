<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UbuntuBox_FE.Authentication.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">
    
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="Styles/LoginPage.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.3.0/css/all.min.css"
      integrity="sha512-ApSLB1Pd3/bZN8fWB/RG9YhN/7bd9Hkf3AGaE2mPfebjrxagjuBtx2GcgdqIlJkUzwylBo61r9Xa9NmgBI0swA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200..1000;1,200..1000&display=swap" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="login-container">

      <div class="login-image">
        <img src="Styles/images/956848f7d698994bca3c03767bb48ff70c9996fe20522e2a068f5c4a7c74431c.png" width="350" height="350" alt="Login Image"/>
      </div>

      <div class="login-form">
        <h1>Welcome <span> Back!</span></h1>

        <form>

          <label>Email</label>
          <div class="input-container">
            <i class="fa-solid fa-envelope"></i>
            <input runat="server" id="Emailbox" type="email" placeholder="Enter your email" />
          </div>

          <label>Password</label>
          <div class="input-container">
            <i class="fa-solid fa-unlock-keyhole"></i>
            <input runat="server" id="passbox" type="password" placeholder="Enter your password" />
          </div>

          <div class="options">
            <label><input runat="server" ID="remembercheck" type="checkbox" class="checkbox" />&nbsp;Remember me</label>
            <a href="#"><span>Forgot Password?</span></a>
          </div>

          <asp:Button ID="login" CssClass="button" runat="server" Text="Login" OnClick="login_Click" />
           
           <asp:Label CssClass="Status-Message" ID="lblMessage" runat="server" Text="Login Status"></asp:Label>
           
        </form>
          

        <div class="social-login">
          <p>Continue with</p>

            <!-- these buttons need functionality: will be implemented later: not in MVP.-->

          <button><i class="fa-brands fa-google"></i>Google</button>
          <button><i class="fa-brands fa-microsoft"></i>Microsoft</button>
          <button><i class="fa-brands fa-apple"></i>Apple</button>
        </div>
        <hr>
        <p class="register-link">Don't have an account?<a href="SignUp.aspx">&nbsp;<span>Register</span></a></p>
       
      </div>
    </div>

        </div>
    </form>
</body>
</html>
