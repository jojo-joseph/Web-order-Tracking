<%@ Page Title="" Language="C#" MasterPageFile="~/BRANCH/branch_master.Master" AutoEventWireup="true" CodeBehind="add_status.aspx.cs" Inherits="web_order_tracking.BRANCH.add_status" %>
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
            <td class="auto-style2" colspan="2">ADD PRODUCT STATUS</td>
        </tr>
        <tr>
            <td>ORDER NUMBER</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VIEW" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataKeyNames="orderid" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>BRANCH NAME</td>
            <td>
                <asp:TextBox ID="txt_bname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>STATUS</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>select</asp:ListItem>
                    <asp:ListItem>arrived</asp:ListItem>
                    <asp:ListItem>processing</asp:ListItem>
                    <asp:ListItem>send</asp:ListItem>
                    <asp:ListItem>delivered</asp:ListItem>
                    <asp:ListItem>dispatched</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>DESCRIPTION</td>
            <td>
                <asp:TextBox ID="txt_description" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>DATE</td>
            <td>
                <asp:TextBox ID="txt_date" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
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
