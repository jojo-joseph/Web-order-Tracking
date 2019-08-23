<%@ Page Title="" Language="C#" MasterPageFile="~/REGISTRATION/registration_master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="web_order_tracking.REGISTRATION.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="2" style="font-size: x-large; font-weight: 400; font-style: italic; color: #FF0000">LOGIN FORM</td>
        </tr>
        <tr>
            <td class="auto-style3" style="color: #0000FF">UserName</td>
            <td class="auto-style3">
                <asp:TextBox ID="txt_uname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="color: #0000FF">Password</td>
            <td class="auto-style4">
                <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_fpswd" runat="server" OnClick="btn_fpswd_Click" Text="FORGOT PASSWORD" ForeColor="Red" />
            </td>
            <td>
                <asp:Button ID="btn_login" runat="server" OnClick="btn_login_Click" Text="LOGIN" ForeColor="Red" Height="25px" Width="129px" />
            </td>
        </tr>
        <tr>
            <td style="color: #FF0000; font-style: italic; font-weight: 400;">
                <br />
                Are you new here???<br />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="#0000CC">User_Registration</asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor="#0000CC">Company_Registration</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
