<%@ Page Title="" Language="C#" MasterPageFile="~/REGISTRATION/registration_master.Master" AutoEventWireup="true" CodeBehind="company_reg.aspx.cs" Inherits="web_order_tracking.REGISTRATION.company_reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            color: #800000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2"><strong>COMPANY REGISTRATION</strong></td>
        </tr>
        <tr>
            <td>Company Name</td>
            <td>
                <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>District</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Phone</td>
            <td>
                <asp:TextBox ID="txt_phone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txt_description" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>UserName</td>
            <td>
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="REGISTER" />
            </td>
            <td>
                <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="RESET" />
            </td>
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
