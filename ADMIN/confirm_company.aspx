<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/admin_master.Master" AutoEventWireup="true" CodeBehind="confirm_company.aspx.cs" Inherits="web_order_tracking.ADMIN.confirm_company" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" DataKeyNames="Lid" AutoGenerateColumns="False">
        <Columns>
            <asp:CommandField DeleteText="approve" ShowDeleteButton="True" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
        </Columns>
    </asp:GridView>
</asp:Content>
