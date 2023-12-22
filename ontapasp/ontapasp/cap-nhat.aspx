<%@ Page Title="" Language="C#" MasterPageFile="~/ontap.Master" AutoEventWireup="true" CodeBehind="cap-nhat.aspx.cs" Inherits="ontapasp.cap_nhat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
    <tr>
        <th colspan="2">CẬP NHẬT SẢN PHẨM</th>
    </tr>
    <tr>
        <td>
            Nhập mã SP:
        </td>
        <td>
            <asp:TextBox ID="txtMasp" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Nhập tên SP:
        </td>
        <td>
            <asp:TextBox ID="txtTensp" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <th colspan="2">
            <asp:GridView ID="grv" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="grv_PageIndexChanging" OnSelectedIndexChanged="grv_SelectedIndexChanged" PageSize="3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                    <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
                    <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
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
        <th colspan="2">
            <asp:Label ID="lblLoi" runat="server" Text="" ForeColor="red"></asp:Label>
        </th>
    </tr>
    <tr>
        <th colspan="2">
            <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
            <asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
            <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
            <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
        </th>
    </tr>
</table>
</asp:Content>
