<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExperimentPage.aspx.cs" Inherits="VIT_DB_APP__Complete_.ExperimentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectedIndexChanged">
            <asp:ListItem Value="Value 1" Text="Value 1" />
            <asp:ListItem Value="Value 2" Text="Value 2" />
            <asp:ListItem Value="Value 3" Text="Value 3" />
            <asp:ListItem Value="Value 4" Text="Value 4" />
            <asp:ListItem Value="Other" Text="Other" />
        </asp:DropDownList>
        
        <asp:TextBox ID="TextBox1" runat="server" />
    </div>
    </form>
</body>
</html>
