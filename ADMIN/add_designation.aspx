﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master.Master" AutoEventWireup="true" CodeBehind="add_designation.aspx.cs" Inherits="web_order_tracking.ADMIN.add_designation" %>
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
            <td class="auto-style2" colspan="2">ADD DESIGNATION</td>
        </tr>
        <tr>
            <td>Designation</td>
            <td>
                <asp:TextBox ID="txt_desig" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="ADD" />
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
