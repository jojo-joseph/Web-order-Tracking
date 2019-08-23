<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY/compny_master.Master" AutoEventWireup="true" CodeBehind="company_editprof.aspx.cs" Inherits="web_order_tracking.COMPANY.company_editprof" %>
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
            <td class="auto-style2" colspan="2"><strong>COMPANY EDIT PROFILE</strong></td>
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
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
