<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add_criminal.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.Add_criminal" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Add Criminal Record</title>
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
            height: 100vh;
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
            grid-gap: 15px;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-top: 0;
            grid-column: span 2;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #4CAF50;
        }

        input[type="text"],
        input[type="date"],
        select,
        input[type="number"],
        input[type="file"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            border: 1px solid #4CAF50;
            background-color: #151515;
            color: #fff;
            outline: none;
            transition: border-color 0.3s ease, background-color 0.3s ease, color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="date"]:focus,
        select:focus,
        input[type="number"]:focus,
        input[type="file"]:focus,
        input[type="submit"]:focus {
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
            color: #fff;
        }

        .back-button {
            background-color: #45a049;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            width: auto; 
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
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/login and register/User_Home.aspx">BACK</asp:HyperLink>
        <h2>Add Criminal Record</h2>
        
        <label for="C_Id">Criminal Id:</label>
        <asp:TextBox ID="TextBox1" runat="server" required></asp:TextBox>

        <label for="txtName">Name:</label>
        <asp:TextBox ID="TextBox2" runat="server" required></asp:TextBox>

        <label for="gender">Gender</label><asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>-- Select Gender --</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:DropDownList>
        
        <label for="txtDOB">Date of Birth:</label>
        <asp:TextBox ID="DateTextBox" runat="server" TextMode="Date" required></asp:TextBox>

        <label for="age">Age:</label>
        <asp:TextBox ID="TextBox3" runat="server" required ></asp:TextBox>

        <label for="ddlCrime">Crime:</label><asp:DropDownList ID="DropDownList2" runat="server" required>
            <asp:ListItem>-- Select Items --</asp:ListItem>
            <asp:ListItem>Theft</asp:ListItem>
            <asp:ListItem>Assault</asp:ListItem>
            <asp:ListItem>Fraud</asp:ListItem>
            <asp:ListItem>Rape</asp:ListItem>
            <asp:ListItem>Drug Trafficking</asp:ListItem>
            <asp:ListItem>Murder</asp:ListItem>
            <asp:ListItem>Cyber Crime</asp:ListItem>
        </asp:DropDownList>

        <label for="ddlStates">State:</label>
        <asp:DropDownList ID="ddlStates" runat="server" AppendDataBoundItems="true" required>
            <asp:ListItem Text="-- Select State --" Value="" />
        </asp:DropDownList>

        <label for="bailstatus">Bail Status:</label>
        <asp:DropDownList ID="DropDownList3" runat="server" required>
            <asp:ListItem Value="--Select--">-- Select --</asp:ListItem>
            <asp:ListItem>YES</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:DropDownList>

        <label for="jailterm">Jail Term:</label>
        <asp:TextBox ID="TextBox4" runat="server" required></asp:TextBox>

        <label for="fileUpload">Upload Image:</label>
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </form>
</body>
</html>
