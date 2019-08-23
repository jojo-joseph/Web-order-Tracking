<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY/compny_master.Master" AutoEventWireup="true" CodeBehind="add_branch_details.aspx.cs" Inherits="web_order_tracking.COMPANY.add_branch_details" %>
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
            <td class="auto-style2" colspan="2">BRANCH DETAILS</td>
        </tr>
        <tr>
            <td>Branch Name</td>
            <td>
                <asp:TextBox ID="txt_bname" runat="server"></asp:TextBox>
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
            <td>Location</td>
            <td>
                <asp:TextBox ID="txt_location" runat="server"></asp:TextBox>
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
            <td>EstablishedIn</td>
            <td>
                <asp:TextBox ID="txt_established" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="txt_pwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="ADD" />
            </td>
            <td>
                <asp:Button ID="btn_reset" runat="server" OnClick="btn_reset_Click" Text="RESET" />
            </td>
        </tr>
    </table>
</asp:Content>
