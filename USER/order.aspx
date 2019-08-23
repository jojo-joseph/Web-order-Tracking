<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="web_order_tracking.USER.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">ORDER FORM&nbsp;</td>
        </tr>
        <tr>
            <td>NAME</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                ORDER NUMBER</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>COMPANY NAME</td>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>PACKAGE NAME</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>TOTAL NUMBER OF ITEMS</td>
            <td>
                <asp:TextBox ID="txt_noofitems" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>WEIGHT</td>
            <td>
                <asp:TextBox ID="txt_weigth" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>DATE</td>
            <td>
                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>TO ADDRESS</td>
            <td>
                <asp:TextBox ID="txt_toaddr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>TO DISTRICT</td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>TO CITY</td>
            <td>
                <asp:TextBox ID="txt_tocity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>FROM ADDRESS</td>
            <td>
                <asp:TextBox ID="txt_fromaddr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>FROM DISTRICT</td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>FROM CITY</td>
            <td>
                <asp:TextBox ID="txt_fromcity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_send" runat="server" OnClick="btn_send_Click" Text="SEND" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
