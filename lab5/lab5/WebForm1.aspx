<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="lab5.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="padding:20px;text-align:center;">
        <div>DANH SÁCH MÔN HỌC</div>
        <div>
            Mã môn học:
        <asp:TextBox ID="txtMaMH" runat="server"></asp:TextBox>
        </div>
        <div>
            Tên môn học:
        <asp:TextBox ID="txtTenMH" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="760px" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="3" OnPageIndexChanging="GridView1_PageIndexChanging" HorizontalAlign="Center" BackColor="White">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                    <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                    <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#0066CC" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" /><asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" /><asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" /><asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
        </div>
    </div>

        </div>
    </form>
</body>
</html>
