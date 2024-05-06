<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User_Profile.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.User_Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Profile</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f7f7f7;
            background-image: url("../images/Profile_bg.jpg");
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        .profile-container {
            max-width: 800px;
            margin: 50px auto;
            background-color: rgba(0, 0, 0, 0.8);
            border-radius: 10px;
            padding: 40px;
            box-sizing: border-box;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            animation: zoomInAnimation 0.5s ease;
        }

        @keyframes zoomInAnimation {
            from {
                transform: scale(0);
            }

            to {
                transform: scale(1);
            }
        }

        .profile-info {
            text-align: center;
            margin-bottom: 30px;
        }

            .profile-info h1 {
                margin: 0;
                color: #4cff00;
                font-size: 32px;
                margin-bottom: 10px;
            }

            .profile-info p {
                color: #ffffff;
                margin-top: 5px;
                font-size: 18px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="profile-container">
            <div class="profile-info">
                <h1 class="animate__animated animate__bounce animate__delay-2s">USER PROFILE</h1>
                <p><strong>ID Number:</strong>
                    <asp:Label ID="lblIdNum" runat="server"></asp:Label></p>
                <p><strong>User Id:</strong>
                    <asp:Label ID="lblUserId" runat="server"></asp:Label></p>
                <p><strong>Name:</strong>
                    <asp:Label ID="lblName" runat="server"></asp:Label></p>
                <p><strong>Gender:</strong>
                    <asp:Label ID="lblGender" runat="server"></asp:Label></p>
                <p><strong>Age:</strong>
                    <asp:Label ID="lblAge" runat="server"></asp:Label></p>
                <p><strong>City:</strong>
                    <asp:Label ID="lblCity" runat="server"></asp:Label></p>
                <p><strong>State:</strong>
                    <asp:Label ID="lblState" runat="server"></asp:Label></p>
            </div>
        </div>
    </form>
</body>
</html>
