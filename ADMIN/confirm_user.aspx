<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master.Master" AutoEventWireup="true" CodeBehind="confirm_user.aspx.cs" Inherits="web_order_tracking.ADMIN.confirm_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" DataKeyNames="Lid" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField DeleteText="approve" ShowDeleteButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
        </Columns>
    </asp:GridView>
</asp:Content>
