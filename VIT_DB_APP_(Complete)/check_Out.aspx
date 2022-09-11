<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_Out.aspx.cs" Inherits="VIT_DB_APP__Complete_.check_Out" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 69%;
        }
        .auto-style2 {
            width: 26%;
        }
        .auto-style3 {
            width: 28%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      
            <div>
             <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check Out Page</h1>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="goCheckIn" runat="server" Text="Check In" PostBackUrl="~/check_In.aspx" />
    </p>
             <div class="container body-content">
    <div class="popup_forms">
                <div class="register_form">
                   
                        <div class="container">
                            <fieldset>
                                <legend>Query Hardware:</legend>
                                <table class="auto-style3">
                                    
                                    <tr>
                                        <td class="auto-style2">Serial No.* </td>
                                        <td>
                                            <asp:TextBox ID="srlBox" runat="server" Font-Size="Medium"></asp:TextBox>
                                         
                                        &nbsp;<asp:Button ID="Button6" runat="server" Text="Get Unit" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">OS Version:</td>
                                        <td>
                                            <asp:TextBox ID="OSBox" runat="server" Font-Size="Medium"></asp:TextBox>
                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">RAM</td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="RAMBox" runat="server" Width="61px"></asp:TextBox>
</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">
                                        </td>
                                        <td>
                                            <asp:Button ID="UpdateBtn" runat="server" Text="Update" OnClick="UpdateBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ChkOutBtn" runat="server" Text="CheckOut" OnClick="ChkOutBtn_Click" />
                                        </td>
                                    </tr>
 </table>

                            </fieldset>
                        </div>
                    <br />
                    <br />
                    <div class="container">
                            <fieldset>
                                <legend>Check In Items table:</legend>
                                

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SrlNo" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="SrlNo" HeaderText="SrlNo" ReadOnly="True" SortExpression="SrlNo" />
                                        <asp:BoundField DataField="devNm" HeaderText="devNm" SortExpression="devNm" />
                                        <asp:BoundField DataField="descrp" HeaderText="descrp" SortExpression="descrp" />
                                        <asp:BoundField DataField="cat" HeaderText="cat" SortExpression="cat" />
                                        <asp:BoundField DataField="mkr" HeaderText="mkr" SortExpression="mkr" />
                                        <asp:BoundField DataField="purF" HeaderText="purF" SortExpression="purF" />
                                        <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                                        <asp:BoundField DataField="osV" HeaderText="osV" SortExpression="osV" />
                                        <asp:BoundField DataField="ram" HeaderText="ram" SortExpression="ram" />
                                        <asp:BoundField DataField="vslNm" HeaderText="vslNm" SortExpression="vslNm" />
                                        <asp:BoundField DataField="purDt" HeaderText="purDt" SortExpression="purDt" />
                                        <asp:BoundField DataField="delDtl" HeaderText="delDtl" SortExpression="delDtl" />
                                        <asp:BoundField DataField="delPt" HeaderText="delPt" SortExpression="delPt" />
                                        <asp:BoundField DataField="etaDt" HeaderText="etaDt" SortExpression="etaDt" />
                                        <asp:BoundField DataField="etdDt" HeaderText="etdDt" SortExpression="etdDt" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [checkIn]"></asp:SqlDataSource>
                                

                            </fieldset>
                        </div>          
                </div>
            </div>
        </div>
        </div>      
    </form>
</body>
</html>
