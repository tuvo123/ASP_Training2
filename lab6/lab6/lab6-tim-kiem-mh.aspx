<%@ Page Language="C#" MasterPageFile="~/Pagemaster.Master" AutoEventWireup="true" CodeBehind="lab6-tim-kiem-mh.aspx.cs" Inherits="lab6.lab6_tim_kiem_mh" %>
<asp:Content ID="h2" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="b2" runat="server" ContentPlaceHolderID="body">
    <table>
        <tr>
            <th colspan="3">
                TÌM KIẾM THÔNG TIN MÔN HỌC
            </th>
        </tr>
        <tr>
            <td>
                Nhập mã môn học:
            </td>
            <td>
                <asp:TextBox ID="txtMamh" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnTimtheoma" runat="server" Text="Tìm theo mã" OnClick="btnTimtheoma_Click" />
            </td>
        </tr>
        <tr>
            <td>
                Nhập tên môn học:
            </td>
            <td>
                <asp:TextBox ID="txtTenmh" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnTimtheoten" runat="server" Text="Tìm theo tên" OnClick="btnTimtheoten_Click" />
            </td>
        </tr>
        <tr>
            <th colspan="3">
                <asp:GridView ID="grvTimmh" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="grvTimmh_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                        <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
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
    </table>
</asp:Content>
