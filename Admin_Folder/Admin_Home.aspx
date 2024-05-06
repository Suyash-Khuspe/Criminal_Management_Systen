<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Home.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder.Admin_Home" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRIMINAL MANAGEMENT SYSTEM</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #151515;
        }

        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background: none;
            padding: 15px 20px;
            box-sizing: border-box;
            box-shadow: none; 
            display: flex;
            justify-content: space-between;
            align-items: center; 
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            font-size: 16px; 
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav a:hover {
            background-color: #d60a0a;
            color: black;
        }

        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            height: auto;
            width: 100px; 
            max-width: 100%; 
            margin-right: 10px;
        }

        .profile-button {
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            border-radius: 5px;
            background-color: black;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
        }

        .profile-button:hover {
            background: linear-gradient(45deg, #4CAF50, #339933);
            color: #fff;
            transform: scale(1.1);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .logout {
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            font-weight: bold;
            font-size: 18px;
            border-radius: 5px;
            background-color: #e00f0f;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
        }

        .logout:hover {
            background: linear-gradient(45deg, #4CAF50, #339933);
            color: #fff;
            transform: scale(1.1);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .content {
            padding: 20px;
            margin-top: 50px;
        }

        .gif-container {
            width: 100%;
            height: 100vh;
            overflow: hidden; 
        }

        .gif-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .menu-container {
            display: flex;
            align-items: center;
        }

        .menu-item {
            margin-right: 20px;
            position: relative;
        }

        .submenu {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background-color: black;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            transition: opacity 0.3s ease, visibility 0.3s ease;
            opacity: 0;
            visibility: hidden;
        }

        .menu-item:hover .submenu {
            display: block;
            opacity: 1;
            visibility: visible;
        }

        .submenu a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 5px;
            font-size: 14px; 
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .submenu a:hover {
            background-color: #555;
        }

        .TEXT {
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center;
            color: red;
            font-size: 2em;
            font-style: normal;
            font-family: 'Times New Roman', Times, serif;
        }
    </style>
   
</head>
<body>
    <form runat="server">
        <nav>
            <div class="logo">
                <img src="../images/cms-high-resolution-logo-transparent.png" alt="LOGO" />
                
                <asp:Button ID="Button3" runat="server" Text="LOGOUT" CssClass="logout" OnClick="Button3_Click" />
            </div>
            
            <div class="menu-container">
                <div class="menu-item">
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Admin_Folder/Add_user.aspx">Add Records</asp:HyperLink>
                </div>
                <div class="menu-item">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin_Folder/Added_User_Records.aspx">View Records</asp:HyperLink>
                </div>
                <div class="menu-item">
                    <asp:HyperLink ID="toggleSubMenu" runat="server" NavigateUrl="~/Admin_Folder/Criminal_records.aspx">Criminal Records</asp:HyperLink>
                </div>
            </div>
        </nav>
         <div class="TEXT">
     <h1 class= "animate__animated animate__bounceInUp">HELLO ADMIN</h1>
 </div>
    </form>
    <div class="gif-container">
        <img class="gif-image" src="../images/WELCOME%20TO%20CMS.gif" alt="Animated GIF">
    </div>
</body>
</html>
