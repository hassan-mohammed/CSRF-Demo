<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comments.aspx.cs" Inherits="AuthenticationDemo.Comments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
   <b>  <asp:Label ID="Label1" runat="server" Text="Insert new comment"></asp:Label>
    <br /> </b>
    <br />
   <asp:TextBox ID="txt_comment" runat="server"></asp:TextBox>

    <asp:Button ID="btn_insert" runat="server" OnClick="Btn_Insert_Click" Text="Insert" />
    <br />
    <br />
    <br />

    <asp:GridView ID="gv_comments" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="Double" BorderWidth="1px" Font-Size="Large"  AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="#F7F7F7"/>
        <Columns >
            <asp:BoundField  ItemStyle-HorizontalAlign="Center" DataField="Id" HeaderText="ID"  HeaderStyle-Width="30" ControlStyle-Height="50"/>
            <asp:BoundField  ItemStyle-HorizontalAlign="Center" DataField="Comment1" HeaderText="Comment" HeaderStyle-Width="250"   />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
         <HeaderStyle  HorizontalAlign="Center" BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    </asp:GridView>

</asp:Content>
