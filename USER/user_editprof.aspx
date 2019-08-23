<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="user_editprof.aspx.cs" Inherits="web_order_tracking.USER.user_editprof" %>
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
            <td class="auto-style2" colspan="2"><strong>EDIT PROFILE</strong></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>ORDER NUMBER</td>
            <td>
                <asp:TextBox ID="txt_ordno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">District</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="txt_phn" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_update" runat="server" OnClick="btn_update_Click" Text="UPDATE" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
