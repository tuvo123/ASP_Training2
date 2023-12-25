<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="tinh-toan.aspx.cs" Inherits="lab7.tinh_toan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <table>
        <tr>
            <th colspan="3">
                TÍNH TOÁN
            </th>
        </tr>
        <tr>
            <td>
                Nhập số tự nhiên N:
            </td>
            <td>
                <asp:TextBox ID="txtSon" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfv" runat="server" ErrorMessage="Vui lòng nhập số N" ControlToValidate="txtSon" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="cmv" runat="server" Type="Integer" ErrorMessage="Nhập số N lớn hơn 1 và nhỏ hơn 100" ForeColor="red" Display="Dynamic" ControlToValidate="txtSon" Operator="DataTypeCheck"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <th colspan="3">
                <div style="display:flex; align-content:center;align-items:center; justify-content:center;">
                    <asp:Button ID="btnTinh" runat="server" Text="Tính" OnClick="btnTinh_Click" />
                </div>
                
            </th>
        </tr>
        <tr>
            <th colspan="3">
                <asp:TextBox ID="txtKq" runat="server" Text="Kết quả:" ForeColor="red" Enabled="false"></asp:TextBox>
                
            </th>
        </tr>
    </table>
</asp:Content>
