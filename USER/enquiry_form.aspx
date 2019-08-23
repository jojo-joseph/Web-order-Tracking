<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="enquiry_form.aspx.cs" Inherits="web_order_tracking.USER.enquiry_form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">ENQUIRY FORM</td>
        </tr>
        <tr>
            <td>FROM</td>
            <td>
                <asp:TextBox ID="txt_from" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>TO</td>
            <td>
                <asp:TextBox ID="txt_to" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">SUBJECT</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_sub" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MESSAGE</td>
            <td>
                <asp:TextBox ID="txt_msg" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
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
