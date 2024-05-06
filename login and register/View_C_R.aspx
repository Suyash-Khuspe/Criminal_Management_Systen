<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View_C_R.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.login_and_register.View_C_R" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link
        rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title></title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: black;
            color: white;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: limegreen;
        }

        #form1 {
            margin: 20px;
        }

        #GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            color: black;
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

        #GridView1 th, #GridView1 td {
            border: 1px solid limegreen;
            padding: 8px;
            text-align: left;
        }

        #GridView1 th {
            background-color: limegreen;
            color: black;
        }

        #GridView1 td {
            color: white;
        }

        .photo-column {
            text-align: center;
        }

            .photo-column img {
                max-width: 100px;
                max-height: 0px;
                border-radius: 5px;
            }

        #linkContainer {
            margin-top: 20px;
            text-align: center;
        }

        .Hyperlink1 {
            display: inline-block;
            padding: 10px;
            background-color: limegreen;
            color: black;
            text-decoration: none;
            border-radius: 5px;
        }

            .editButton {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 10px 24px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 8px;
    }

    .deleteButton {
        background-color: #FF5733; /* Red */
        border: none;
        color: white;
        padding: 10px 24px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 8px;
    }

    .editButton:hover {
        background-color: #3e8e41; 
    }

    .deleteButton:hover {
        background-color: #E74C3C; 
    }

   
    .commandButton:active {
        background-color: #3e8e41;
        transform: translateY(2px);
    }
    </style>
</head>
<body>
    <h1 class="animate__animated animate__flash">CRIMINAL RECORDS</h1>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Criminal_Id" DataSourceID="SqlDataSource_V_C">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="deleteButton" />
                    <asp:CommandField ShowEditButton="True" ControlStyle-CssClass="editButton" />
                    <asp:BoundField DataField="Criminal_Id" HeaderText="Criminal_Id" ReadOnly="True" SortExpression="Criminal_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Crime" HeaderText="Crime" SortExpression="Crime" />
                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                    <asp:BoundField DataField="Bail_Status" HeaderText="Bail_Status" SortExpression="Bail_Status" />
                    <asp:BoundField DataField="Jail_Term" HeaderText="Jail_Term" SortExpression="Jail_Term" />
                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <asp:Image ID="imgPhoto" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("Photo", "~/Images/{0}") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource_V_C" runat="server" ConnectionString="<%$ ConnectionStrings:U_R_ConnectionString %>" DeleteCommand="DELETE FROM [Criminal_data] WHERE [Criminal_Id] = @original_Criminal_Id" InsertCommand="INSERT INTO [Criminal_data] ([Criminal_Id], [Name], [Gender], [DOB], [Age], [Crime], [State], [Bail_Status], [Jail_Term], [Photo]) VALUES (@Criminal_Id, @Name, @Gender, @DOB, @Age, @Crime, @State, @Bail_Status, @Jail_Term, @Photo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Criminal_data] ORDER BY [Criminal_Id]" UpdateCommand="UPDATE [Criminal_data] SET [Name] = @Name, [Gender] = @Gender, [DOB] = @DOB, [Age] = @Age, [Crime] = @Crime, [State] = @State, [Bail_Status] = @Bail_Status, [Jail_Term] = @Jail_Term, [Photo] = @Photo WHERE [Criminal_Id] = @original_Criminal_Id">
                <DeleteParameters>
                    <asp:Parameter Name="original_Criminal_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Criminal_Id" Type="Int32" />
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Crime" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Bail_Status" Type="String" />
                    <asp:Parameter Name="Jail_Term" Type="String" />
                    <asp:Parameter Name="Photo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter DbType="Date" Name="DOB" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Crime" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="Bail_Status" Type="String" />
                    <asp:Parameter Name="Jail_Term" Type="String" />
                    <asp:Parameter Name="Photo" Type="String" />
                    <asp:Parameter Name="original_Criminal_Id" Type="Int32" />
                </UpdateParameters>

            </asp:SqlDataSource>
            <div id="linkContainer">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login and register/User_Home.aspx" CssClass="Hyperlink1">BACK</asp:HyperLink>
            </div>
        </div>
    </form>
</body>
</html>
