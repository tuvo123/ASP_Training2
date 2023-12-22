<%@ Page Title="" Language="C#" MasterPageFile="~/ontap.Master" AutoEventWireup="true" CodeBehind="tim-kiem.aspx.cs" Inherits="ontapasp.tim_kiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <th colspan="3">
            TÌM KIẾM SẢN PHẨM
        </th>
    </tr>
    <tr>
        <td>
            Nhập mã SP: 
        </td>
        <td>
            <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnTimma" runat="server" Text="Tìm kiếm theo mã" OnClick="btnTimma_Click" />
        </td>
    </tr>
    <tr>
        <td>
            Nhập tên SP: 
        </td>
        <td>
            <asp:TextBox ID="txtTensp" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnTimten" runat="server" Text="Tìm kiếm theo tên" OnClick="btnTimten_Click" />
        </td>
    </tr>
    <tr>
        <th colspan="3">
            <asp:GridView ID="grvTimkiem" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="grvTimkiem_PageIndexChanging" OnSelectedIndexChanged="grvTimkiem_SelectedIndexChanged" PageSize="3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </th>
    </tr>
    <tr>
        <th colspan="3">
            <asp:Label ID="lblLoi2" runat="server" Text="" ForeColor="red"></asp:Label>
        </th>
    </tr>
    
</table>
</asp:Content>
