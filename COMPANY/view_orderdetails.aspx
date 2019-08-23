<%@ Page Title="" Language="C#" MasterPageFile="~/COMPANY/compny_master.Master" AutoEventWireup="true" CodeBehind="view_orderdetails.aspx.cs" Inherits="web_order_tracking.COMPANY.view_orderdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="orderid" GridLines="Horizontal" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="NAME" HeaderText="NAME" />
            <asp:BoundField DataField="OrderNumber" HeaderText="ORDER NUMBER" />
            <asp:BoundField DataField="companyname" HeaderText="COMPANY" />
            <asp:BoundField DataField="Numberofitems" HeaderText="NUMBER OF ITEMS" />
            <asp:BoundField DataField="Weigth" HeaderText="WEIGTH" />
            <asp:BoundField DataField="Date" HeaderText="DATE" />
            <asp:BoundField DataField="TODISTRICT" HeaderText="TO DISTRICT" />
            <asp:BoundField DataField="FROMDISTRICT" HeaderText="FROM DISTRICT" />
            <asp:HyperLinkField HeaderText="ASSIGN WORK" NavigateUrl="~/COMPANY/assign_work_branch.aspx" Text="assign" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
</asp:Content>
