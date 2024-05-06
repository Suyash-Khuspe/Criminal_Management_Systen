<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_user.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.register_or_login" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Glowing Inputs Login Form UI</title>
      <link rel="stylesheet" href="login_user.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

   </head>
   <body>
      <div class="login-form">
         <div class="text">
            USER LOGIN
         </div>
         <form id="form1" runat="server">
            <div class="field">
               <div class="fas fa-user"></div>
               <asp:TextBox ID="TextBox1" runat="server" placeholder="UserId" Required="true"></asp:TextBox>
            </div>
            <div class="field">
               <div class="fas fa-lock"></div>
                <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" Required="true"></asp:TextBox>
            </div>
             <asp:Button ID="Button1" runat="server" Text="LOGIN" cssClass="custom-button" OnClick="Button1_Click" />
             </form>
    </div>
   </body>

</html>