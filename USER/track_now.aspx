<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="track_now.aspx.cs" Inherits="web_order_tracking.USER.track_now" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2">TRACK YOUR ORDER HERE</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                </td>
        </tr>
        <tr>
            <td>ORDER NUMBER</td>
            <td>
                <asp:TextBox ID="txt_orderno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="SEARCH" />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="sid">
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
