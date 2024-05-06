<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Criminal_records.aspx.cs" Inherits="CRIMINAL_MANAGEMENT_SYSTEM.Admin_Folder.Criminal_records" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRIMINAL DATA</title>
        <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #808080; 
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #d3d3d3; 
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .title {
            font-size: 24px;
            font-weight: bold;
            color: #000000;
            margin-bottom: 20px;
            text-align: center;
            color: #000000;
        }

        #GridView1 {
            width: 100%;
            border-collapse: collapse;
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
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        #GridView1 th {
            background-color: #32cd32; 
            font-weight: bold;
        }

        #GridView1 tr:nth-child(even) {
            background-color: #32cd32; 
        }

        #GridView1 tr:hover {
            background-color: #f0f0f0;
        }

        #GridView1 .itemTemplate img {
            display: block;
            margin: 0 auto;
            border-radius: 50%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <div class="title">Criminals Data</div>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Criminal_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="Criminal_Id" HeaderText="Criminal_Id" ReadOnly="True" SortExpression="Criminal_Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" DataFormatString="{0:d}" />
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
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:U_R_ConnectionString %>" SelectCommand="SELECT * FROM [Criminal_data] ORDER BY [Criminal_Id]"></asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
