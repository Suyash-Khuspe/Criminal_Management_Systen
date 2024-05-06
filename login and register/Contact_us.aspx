<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact_us.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Us</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #45a049;
            color: white;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .backButton {
            position: fixed;
            top: 20px;
            left: 20px;
            padding: 10px 15px;
            background-color: #151515;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            text-decoration: none;
        }

        .backButton:hover {
            background-color: #45a049;
            transform: scale(1.1);
        }

        #contactForm {
            padding: 20px;
            width: 80%;
            max-width: 800px;
            background-color: #1f1f1f;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h2 {
            color: #4CAF50;
            text-align: center;
        }

        p {
            line-height: 1.5;
            text-align: center;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #4CAF50;
        }

        input,
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            background-color: #1f1f1f;
            border: 1px solid #4CAF50;
            color: white;
        }

        #Button1 {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        #Button1:hover {
            background-color: #45a049;
            transform: scale(1.1);
        }
    </style>
</head>
<body>
    <a href="User_Home.aspx" class="backButton">Back</a>
    <div id="contactForm">
        <h2>Contact Us</h2>
        <p>Have a question or query? Fill out the form below, and we'll get back to you as soon as possible.</p>

        <label for="UserID">UserID:</label>
        <input type="text" id="UserID" name="UserID" class="inputField" required>

        <label for="Name">Name:</label>
        <input type="text" id="Name" name="Name" class="inputField" required>

        <label for="Query">Query:</label>
        <textarea id="Query" name="Query" rows="4" required></textarea>
        <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="button" />
        </form>
    </div>
</body>
</html>