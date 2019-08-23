<%@ Page Title="" Language="C#" MasterPageFile="~/HOME/home_master.Master" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="web_order_tracking.HOME.contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .newStyle1 {
            font-family: Magneto;
        }
        .newStyle2 {
            font-family: Courier;
        }
        .newStyle3 {
            font-family: Verdana;
        }
        .newStyle4 {
            font-family: Century;
        }
    .auto-style1 {
        width: 529px;
    }
    .auto-style2 {
        font-family: Century;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style2"><strong>Our Contacts </strong></td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td><b>Phone&nbsp;&nbsp;&nbsp; </b>&nbsp;: +918790421765</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td><b>Email</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : courier.services@gmai<a href="mailto:name@example.com">.com</a>,foripsrt@gmail.com</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td><b>Address</b> : 3481 Melrose Place,Beverly Hills, Chicago 90210.</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td><strong>WRITE TO US</strong></td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>FROM</td>
        <td class="auto-style1">
            <asp:TextBox ID="txt_from" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>TO</td>
        <td class="auto-style1">
            <asp:TextBox ID="txt_to" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>SUBJECT</td>
        <td class="auto-style1">
            <asp:TextBox ID="txt_sub" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>MESSAGE</td>
        <td class="auto-style1">
            <asp:TextBox ID="txt_msg" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style1">
            <asp:Button ID="btn_send" runat="server" OnClick="btn_send_Click" Text="SEND" />
        </td>
    </tr>
</table>
</asp:Content>
