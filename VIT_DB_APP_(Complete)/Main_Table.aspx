<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main_Table.aspx.cs" Inherits="VIT_DB_APP__Complete_.Main_Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SrlNo" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="vslNm" HeaderText="vessel Name" SortExpression="vslNm" />
                    <asp:BoundField DataField="SrlNo" HeaderText="Serial No." ReadOnly="True" SortExpression="SrlNo" />
                    <asp:BoundField DataField="devNm" HeaderText="Device Name" SortExpression="devNm" />
                    <asp:BoundField DataField="descrp" HeaderText="Description" SortExpression="descrp" />
                    <asp:BoundField DataField="cat" HeaderText="Categories" SortExpression="cat" />
                    <asp:BoundField DataField="mkr" HeaderText="Maker" SortExpression="mkr" />
                    <asp:BoundField DataField="purF" HeaderText="purchased From" SortExpression="purF" />
                    <asp:BoundField DataField="cost" HeaderText="Cost" SortExpression="cost" />
                    <asp:BoundField DataField="osV" HeaderText="Operating System" SortExpression="osV" />
                    <asp:BoundField DataField="ram" HeaderText="RAM" SortExpression="ram" />
                    <asp:BoundField DataField="purDt" HeaderText="Purchase date" SortExpression="purDt" />
                    <asp:BoundField DataField="delDtl" HeaderText="Delivery Details" SortExpression="delDtl" />
                    <asp:BoundField DataField="delPt" HeaderText="Delivery Port" SortExpression="delPt" />
                    <asp:BoundField DataField="etaDt" HeaderText="ETA Date" SortExpression="etaDt" />
                    <asp:BoundField DataField="etdDt" HeaderText="ETD Date" SortExpression="etdDt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CheckOut]"></asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
