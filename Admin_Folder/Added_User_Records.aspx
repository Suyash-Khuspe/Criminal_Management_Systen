<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #222;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        form {
            background-color: #333;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            color: #fff;
            padding: 20px;
            box-sizing: border-box;
            width: 80%;
            margin: 20px auto 0;
        }

        h2 {
            text-align: center;
            color: limegreen;
            margin-top: 0;
            background-color: black;
            padding: 10px;
            border-radius: 5px;
        }

        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
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

        #GridView1 th,
        #GridView1 td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
            color: black;
            animation: zoomInAnimation 0.5s ease;
        }

        #GridView1 th {
            background-color: #444;
            color: limegreen;
            animation: zoomInAnimation 0.5s ease;
        }

        #GridView1 tr:nth-child(even) {
            background-color: #555;
            animation: zoomInAnimation 0.5s ease;
        }

        #GridView1 tr:hover {
            background-color: #666;
            animation: zoomInAnimation 0.5s ease;
        }

        #GridView1 td:nth-child(1),
        #GridView1 td:nth-child(2),
        #GridView1 td:nth-child(3),
        #GridView1 td:nth-child(4),
        #GridView1 td:nth-child(5),
        #GridView1 td:nth-child(6) {
            color: black;
            animation: zoomInAnimation 0.5s ease;
        }

        .back-button-container {
            text-align: center;
            margin-top: 20px;
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
            text-decoration: none;
            display: inline-block;
        }

        .back-button:hover {
            background-color: #4CAF50;
            color: #fff;
        }

        #GridView1 a.edit-button,
        #GridView1 a.delete-button {
            display: inline-block;
            padding: 8px 12px;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        #GridView1 a.edit-button {
            background-color: #007bff;
            color: white;
            float: right;
            margin-left: 10px;
        }

        #GridView1 a.delete-button {
            background-color: #e00f0f;
            color: white;
            float: right;
        }

        #GridView1 a.edit-button:hover,
        #GridView1 a.delete-button:hover {
            background-color: #4CAF50;
            color: #fff;
        }

        #GridView1 td:last-child {
            text-align: right;
            animation: zoomInAnimation 0.5s ease;
        }

        #GridView1 a.edit-button,
        #GridView1 a.delete-button {
            margin-left: 10px;
        }
      .edit-button {
    background-color: #007bff; /* Blue color */
    color: white;
    padding: 8px 12px;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
}

/* Delete button style */
.delete-button {
    background-color: #e00f0f; /* Red color */
    color: white;
    padding: 8px 12px;
    text-align: center;
    text-decoration: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, color 0.3s ease;
}

/* Hover effect for edit button */
.edit-button:hover {
    background-color: #0056b3; /* Darker blue on hover */
    color: #fff;
}

/* Hover effect for delete button */
.delete-button:hover {
    background-color: #ff4500; /* Darker red on hover */
    color: #fff;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSourceAdded_Users" runat="server" ConnectionString="<%$ ConnectionStrings:U_R_ConnectionString %>" 
                SelectCommand="SELECT * FROM [Users_Records] ORDER BY [Id_num]" 
                UpdateCommand="UPDATE [Users_Records] SET [User_Id] = @User_Id, [Name] = @Name, [Gender] = @Gender, [Age] = @Age, [City] = @City, [State] = @State, [Password] = @Password WHERE [Id_num] = @original_Id_num AND [User_Id] = @original_User_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Age] = @original_Age AND [City] = @original_City AND [State] = @original_State AND [Password] = @original_Password" 
                DeleteCommand="DELETE FROM [Users_Records] WHERE [Id_num] = @original_Id_num AND [User_Id] = @original_User_Id AND [Name] = @original_Name AND [Gender] = @original_Gender AND [Age] = @original_Age AND [City] = @original_City AND [State] = @original_State AND [Password] = @original_Password" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [Users_Records] ([Id_num], [User_Id], [Name], [Gender], [Age], [City], [State], [Password]) VALUES (@Id_num, @User_Id, @Name, @Gender, @Age, @City, @State, @Password)" OldValuesParameterFormatString="original_{0}">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id_num" Type="Int32" />
                    <asp:Parameter Name="original_User_Id" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_num" Type="Int32" />
                    <asp:Parameter Name="User_Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User_Id" Type="String" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="original_Id_num" Type="Int32" />
                    <asp:Parameter Name="original_User_Id" Type="String" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Age" Type="Int32" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <h2>Users Records</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_num" DataSourceID="SqlDataSourceAdded_Users"> 
                <Columns>
                    <asp:CommandField ShowEditButton="true" HeaderText="Edit Data" ItemStyle-CssClass="edit-button" />
                    <asp:CommandField ShowDeleteButton="true" HeaderText="Delete Data" ItemStyle-CssClass="delete-button" />
                    <asp:BoundField DataField="Id_num" HeaderText="Id_num" ReadOnly="True" SortExpression="Id_num" />
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" SortExpression="User_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <div class="back-button-container">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_Folder/Admin_Home.aspx" CssClass="back-button">BACK</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
