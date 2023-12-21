<%@ Page Language="C#" MasterPageFile="~/Pagemaster.Master" AutoEventWireup="true" CodeBehind="lab6-cap-nhat-mh.aspx.cs" Inherits="lab6.lab6_cap_nhat_mh" %>

<asp:Content ID="h1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="b1" runat="server" ContentPlaceHolderID="body">
    <table>
        <tr>
            <th colspan="2">
                CẬP NHẬT THÔNG TIN MÔN HỌC
            </th>
        </tr>
        <tr>
            <td>
                Mã môn học:
            </td>
            <td>
                <asp:TextBox ID="txtMamh" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Tên môn học:
            </td>
            <td>
                <asp:TextBox ID="txtTenmh" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <asp:GridView ID="grvMonhoc" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="grvMonhoc_PageIndexChanging" OnSelectedIndexChanged="grvMonhoc_SelectedIndexChanged" AllowPaging="True" PageSize="3">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                     <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
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
         </tr>
        <tr>
            <th colspan="2">
                <asp:Label ID="lblLoi" runat="server" Text=""></asp:Label>
            </th>
        </tr>
        <tr>
            <th colspan="2" >
                <div style="display:flex; align-content:center;align-items:center;justify-content:center;">
                    <div>
                        <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
                    </div>
                    <div>
                        <asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
                    </div>
                    <div>
                        <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
                    </div>
                    <div>
                        <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                    </div>

                </div>
            </th>
        </tr>
        </table>

</asp:Content>