<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="user_feedback.aspx.cs" Inherits="web_order_tracking.USER.user_feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>FROM&nbsp;</td>
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
            <td>SUBJECT</td>
            <td>
                <asp:TextBox ID="txt_sub" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>MESSAGE</td>
            <td>
                <asp:TextBox ID="txt_msg" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_send" runat="server" OnClick="btn_send_Click" Text="SEND" />
            </td>
        </tr>
    </table>
</asp:Content>
