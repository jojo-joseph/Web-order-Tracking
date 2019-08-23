<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="user_home.aspx.cs" Inherits="web_order_tracking.USER.user_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/USER/track_now.aspx">TRACK YOUR ORDER</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/USER/enquiry_form.aspx">ENQUIRY FORM</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/USER/user_changepass.aspx">CHANGE PASSWORD</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/USER/user_editprof.aspx">EDIT PROFILE</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/USER/search_comany.aspx">SEARCH COMPANY</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
