<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_user.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder.Add_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Add Criminal Record</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #4CAF50;
            margin: 0;
            padding: 0;
            background-image: url("../images/bg_add_image.jpg");
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        form {
            background-color: rgba(21, 21, 21, 0.8);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            color: #fff;
            padding: 20px;
            box-sizing: border-box;
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
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

        h2 {
            text-align: center;
            color: #4CAF50;
            margin: 0;
            grid-column: span 2;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #4CAF50;
        }

        input,
        select {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #4CAF50;
            background-color: #151515;
            color: #fff;
            outline: none;
            transition: border-color 0.3s ease, background-color 0.3s ease, color 0.3s ease;
        }

            input:focus,
            select:focus {
                border-color: #45a049;
            }

            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                transition: background-color 0.3s ease, color 0.3s ease;
                grid-column: span 2;
                width: 50%;
                margin: 15px auto;
            }

                input[type="submit"]:hover {
                    background-color: #45a049;
                }

        .back-button {
            background-color: #45a049;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            width: 50px;
        }

            .back-button:hover {
                background-color: #4CAF50;
                color: #fff;
            }


        #HyperLink1 {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

            #HyperLink1:hover {
                color: #45a049;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_Folder/Admin_Home.aspx" CssClass="back-button">BACK</asp:HyperLink>
        <h2>Add User Record</h2>

        <label for="U_Id">Id_num:</label>
        <asp:TextBox ID="TextBox1" runat="server" Required="true"></asp:TextBox>

        <label for="userid">UserId:</label>
        <asp:TextBox ID="TextBox2" runat="server" Required="true"></asp:TextBox>

        <label for="txtName">Name:</label>
        <asp:TextBox ID="TextBox3" runat="server" Required="true"></asp:TextBox>

        <label for="gender">Gender</label>
        <asp:DropDownList ID="DropDownListGender" runat="server" Required="true">
            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
        </asp:DropDownList>

        <label for="age">Age:</label>
        <asp:TextBox ID="TextBox4" runat="server" Required="true"></asp:TextBox>

        <label for="city">City:</label>
        <asp:TextBox ID="TextBox5" runat="server" Required="true"></asp:TextBox>

        <label for="ddlStates">Select State:</label>
        <asp:DropDownList ID="ddlStates" runat="server" AppendDataBoundItems="true" required="true">
            <asp:ListItem Text="-- Select State --" Value="" />
        </asp:DropDownList>

        <label for="city">Password:</label>
        <asp:TextBox ID="TextBox6" runat="server" Required="true" TextMode="Password"></asp:TextBox>

        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" />
    </form>
</body>
</html>
