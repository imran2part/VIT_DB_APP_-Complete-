<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Experiment2.aspx.cs" Inherits="VIT_DB_APP__Complete_.Experiment2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<ajaxToolkit:ComboBox ID="cbCustomers" runat="server" AutoCompleteMode="SuggestAppend">
</ajaxToolkit:ComboBox>
<asp:Button ID="btnSubmit" runat="server" Text="Add Items" OnClick="Submit" />
        </div>
    </form>
</body>
</html>
