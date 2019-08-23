<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY/compny_master.Master" AutoEventWireup="true" CodeBehind="add_package.aspx.cs" Inherits="web_order_tracking.COMPANY.add_package" %>
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
            <td class="auto-style2" colspan="2">ADD PACKAGE</td>
        </tr>
        <tr>
            <td>Company Name</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Package Name</td>
            <td>
                <asp:TextBox ID="txt_pname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Rate</td>
            <td>
                <asp:TextBox ID="txt_rate" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txt_description" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_add" runat="server" OnClick="btn_add_Click" Text="ADD" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" DataKeyNames="packageid" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
