<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Home.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.User_Home" %>

 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRIMINAL MANAGEMENT SYSTEM</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: url('../images/WELCOME%20TO%20CMS.gif');
            background-repeat: no-repeat;
            background-size: cover;
            
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

        .hyperlink {
            color: white;
            text-decoration: none;
            padding: 10px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .hyperlink:hover {
            background-color: #d60a0a;
            color: black;
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
    <form id="form1" runat="server">
    <nav>
        <div class="logo">
            <img src="../images/cms-high-resolution-logo-transparent.png" alt="LOGO" />
                            
                <asp:Button ID="Button3" runat="server" Text="LOGOUT" CssClass="logout" OnClick="Button3_Click" />
                <asp:Button ID="Button4" runat="server" Text="PROFILE" CssClass="profile-button" OnClick="Button4_Click" />
        </div>

        <div class="menu-container">
            <div class="menu-item">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/login and register/User_Home.aspx" CssClass="hyperlink">HOME</asp:HyperLink>
            </div>
            <div class="menu-item">
                <asp:HyperLink ID="toggleSubMenu" runat="server" CssClass="hyperlink">RECORDS</asp:HyperLink>
                <div class="submenu">
                    <asp:HyperLink ID="HyperLinkAdd" runat="server" NavigateUrl="~/login and register/Add_criminal.aspx" CssClass="hyperlink">Add Criminal Records</asp:HyperLink>
                    <asp:HyperLink ID="HyperLinkView" runat="server" NavigateUrl="~/login and register/View_C_R.aspx" CssClass="hyperlink">View Criminal Records</asp:HyperLink>
                </div>
            </div>
            <div class="menu-item">
                <asp:HyperLink ID="HyperLinkAbout" runat="server" NavigateUrl="~/login and register/About.aspx" CssClass="hyperlink">ABOUT US</asp:HyperLink>
            </div>
           
        </div>
    </nav>
    <div class="TEXT">
    <h1>HELLO USER</h1>
</div>
    </form>
</body>
</html>
