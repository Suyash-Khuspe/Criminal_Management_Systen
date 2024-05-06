<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>CRIMINAL MANAGEMENT SYSTEM</title>
    <style type="text/css">
        body {
            background-position: center bottom;
            background-color: #000000;
            background-image: url('../images/CRIMINAL MANAGEMENT SYSTEM.png');
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            font-size: 36px;
            text-align: center;
            color: #ffffff;
        }

        .image-container {
            text-align: center;
        }

        #Image1 {
            height: 206px;
            width: 284px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .btn {
    display: inline-block;
    padding: 10px 20px;
    font-size: 18px;
    text-align: center;
    text-decoration: none;
    background-color: limegreen; 
    color: black;
    border: 1px solid #3e8e41;
    border-radius: 5px;
    margin: 0 10px;
    cursor: pointer;
    transition: background 0.3s ease-in-out, color 0.3s ease-in-out, transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
}

.btn:hover {
    background-color: #ff0000; 
    color: white;
    transform: scale(1.05); 
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); 
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="animate__animated animate__bounceInDown">CRIMINAL MANAGEMENT SYSTEM</h1>

            <div class="image-container">
                <img id="Image1" runat="server" src="~/images/crminal.PNG" />
            </div>

            <div class="button-container">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="USER" CssClass="btn" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ADMIN" CssClass="btn" />
            </div>
        </div>
    </form>
</body>
</html>
