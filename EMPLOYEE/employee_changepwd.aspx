<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEE/employee_master.Master" AutoEventWireup="true" CodeBehind="employee_changepwd.aspx.cs" Inherits="web_order_tracking.EMPLOYEE.employee_changepwd" %>
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
            <td class="auto-style2" colspan="2">CHANGE PASSWORD</td>
        </tr>
        <tr>
            <td>USERNAME</td>
            <td>
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>NEW PASSWORD</td>
            <td>
                <asp:TextBox ID="txt_npwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CONFIRM PASSWORD</td>
            <td>
                <asp:TextBox ID="txt_cpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btn_change" runat="server" OnClick="btn_change_Click" Text="CHANGE" />
            </td>
        </tr>
    </table>
</asp:Content>
