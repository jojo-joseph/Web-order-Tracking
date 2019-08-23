<%@ Page Title="" Language="C#" MasterPageFile="~/USER/user_master.Master" AutoEventWireup="true" CodeBehind="view_company_more.aspx.cs" Inherits="web_order_tracking.USER.view_company_more" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" />
            <asp:BoundField DataField="did" HeaderText="District" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="lid" DataNavigateUrlFormatString="order.aspx?id={0}" NavigateUrl="~/USER/order.aspx" Text="Send Order" />
        </Columns>
    </asp:GridView>
</asp:Content>
