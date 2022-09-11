<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="check_In.aspx.cs" Inherits="VIT_DB_APP__Complete_.check_In" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 91px;
        }
        .auto-style4 {
            height: 32px;
        }
        .auto-style5 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Check In Page</h1>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button7" runat="server" Text="Check Out" PostBackUrl="~/check_Out.aspx" />
    </p>
    
    <div class="container body-content">
    <div class="popup_forms">
                <div class="register_form">
                   
                        <div class="container">
                            <fieldset>
                                <legend>Register Form:</legend>
                                <table style="width: 100%;">
                                    <tr>
                                        <td class="auto-style2">Status </td>
                                        <td class="auto-style2">
                                                <!--Status: Underprocessing.../Complete-->
                                                <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="auto-style5">Vessel Name*</td>
                                        <td class="auto-style5">
                                         
                                        &nbsp;&nbsp;<asp:DropDownList ID="VesselNameDDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="vesselName" DataValueField="vesselName" >
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [vessels]"></asp:SqlDataSource>
                                            &nbsp; 
                                            <asp:Button ID="AddNewVessel" runat="server" Text="Add New Vessel" OnClick="AddNewVessel_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="Vesselname_TextBox" runat="server" Font-Size="Medium"></asp:TextBox>
                                         
                                            <asp:Button ID="AddVesselBtn" runat="server" Text="Add vessel" OnClick="AddVesselBtn_Click" />
</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style4">Serial No.* </td>
                                        <td class="auto-style4">
                                            <asp:TextBox ID="srlBox" runat="server" Font-Size="Medium"></asp:TextBox>
                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Device Name*</td>
                                        <td>
                                            <asp:TextBox ID="dvBox" runat="server" Font-Size="Medium"></asp:TextBox>
                                         
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Description</td>
                                        <td class="auto-style1">
                                            <asp:TextBox ID="descBox" runat="server" TextMode="MultiLine" Height="71px" Width="542px"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Categories*</td>
                                        <td>

                                            &nbsp;<asp:DropDownList ID="catDropDownList" runat="server">
                                                <asp:ListItem>BB</asp:ListItem>
                                                <asp:ListItem>CPU</asp:ListItem>
                                                <asp:ListItem>Microserver</asp:ListItem>
                                                <asp:ListItem>NUC</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>

                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                            <br />

                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">Maker*</td>
                                        <td class="auto-style3">

                                            &nbsp;
                                            <asp:DropDownList ID="mkrDropDownList" runat="server">
                                                <asp:ListItem>Dell</asp:ListItem>
                                                <asp:ListItem>HP</asp:ListItem>
                                                <asp:ListItem>Link</asp:ListItem>
                                                <asp:ListItem>Cisco</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Purchased From*</td>
                                        <td>
                                            
                                            &nbsp;<asp:DropDownList ID="purFDropDownList" runat="server">
                                                <asp:ListItem>Dell Sdn Bhd</asp:ListItem>
                                                <asp:ListItem>Autrox Company</asp:ListItem>
                                                <asp:ListItem>Micron Supplier</asp:ListItem>
                                                <asp:ListItem>Neon computer part</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Cost*</td>
                                        <td>
                                            <asp:TextBox ID="costTextBox" runat="server"></asp:TextBox>
                                        &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>Operating System*</td>
                                        <td> <!--Windows key appear when categoires had bee selected -->
                                            &nbsp;
                                            <asp:DropDownList ID="DropDownList_OS" runat="server">
                                                <asp:ListItem>Windows 11</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>RAM*</td>
                                        <td> <!--Windows key appear when categoires had bee selected -->
                                            &nbsp;<asp:DropDownList ID="DropDownList_RAM" runat="server">
                                                <asp:ListItem>8 GB</asp:ListItem>
                                                <asp:ListItem>16 GB</asp:ListItem>
                                                <asp:ListItem>Others</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>Purchase Date*</td>
                                        <td>
&nbsp;&nbsp;&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            &nbsp; 
                                            <asp:Label ID="Label1" runat="server" Text="Date: "></asp:Label>
                                            &nbsp;<asp:TextBox ID="purDtBox" runat="server"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="purImageButton" runat="server" ImageUrl="~/Calendar-icon.png" ImageAlign="AbsBottom" Height="25px" OnClick="purImageButton_Click"  />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="purDtCalendar" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="purDtCalendar_SelectionChanged" OnDayRender="purDtCalendar_DayRender" Height="190px" Width ="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                            
                                            <br />
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Age</td>
                                        <td><!--Based on purchased date-->--------</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">Delivery Details</td>
                                        <td class="auto-style1">
                                            &nbsp;<asp:TextBox ID="descBox0" runat="server" TextMode="MultiLine" Height="71px" Width="542px"></asp:TextBox>
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Delivery port*</td>
                                        <td>
                                            <asp:TextBox ID="delPtTextBox" runat="server"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:DropDownList ID="DropDownList3" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ETA*</td>
                                        <td>
&nbsp;
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <asp:Label ID="Label6" runat="server" Text="Date : "></asp:Label>
                                            &nbsp;<asp:TextBox ID="etaDtBox" runat="server"></asp:TextBox>
                                            &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="etaImageButton" runat="server" ImageUrl="~/Calendar-icon.png" ImageAlign="AbsBottom" Height="25px" OnClick="etaImageButton_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="etaDtCalendar" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="etaDtCalendar_SelectionChanged" OnDayRender="etaDtCalendar_DayRender" Height="190px" Width ="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>ETD*</td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <br />
                                            <asp:Label ID="Label9" runat="server" Text="Date : "></asp:Label>
                                            <asp:TextBox ID="etdDtBox" runat="server"></asp:TextBox>
                                            &nbsp;&nbsp; <asp:ImageButton ID="etdImageButton" runat="server" ImageUrl="~/Calendar-icon.png" ImageAlign="AbsBottom" Height="25px" OnClick="etdImageButton_Click" />
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="etdDtCalendar" runat="server" SelectionMode="DayWeekMonth" onselectionchanged="etdDtCalendar_SelectionChanged" OnDayRender="etdDtCalendar_DayRender" Height="190px" Width ="350px" BackColor="White" Visible="False" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                                                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                                <OtherMonthDayStyle ForeColor="#999999" />
                                                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                                <TodayDayStyle BackColor="#CCCCCC" />
                                            </asp:Calendar>
                                         </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style2">Timeframe</td>
                                        <td class="auto-style2"><!--(ETA-ETD)-->--------</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            
                                            <asp:Button ID="Button5" runat="server" Text="Submit" Width="193px" OnClick="Button5_Click" class="btn btn-danger"/>
                                        </td>
                                        <td>
                                            
                                            &nbsp;</td>
                                    </tr>
                                    
                                </table>

                            </fieldset>
                        </div>
                   
                </div>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
