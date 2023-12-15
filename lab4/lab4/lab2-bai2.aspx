<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Masterpage.Master" CodeBehind="lab2-bai2.aspx.cs" Inherits="lab4.lab2_bai2" %>

<asp:Content ID="ctn" runat="server" ContentPlaceHolderID="cph"></asp:Content>

<asp:Content ID="ctnMidright" runat="server" ContentPlaceHolderID="cphmidright">
    <table>
        <tr>
            <td>
                Nhập số a:
            </td>
            <td>
                <asp:TextBox ID="txtSo1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvSo1" runat="server" ErrorMessage="Nhập số a" ControlToValidate="txtSo1" ForeColor="Red"></asp:RequiredFieldValidator><br/>
                <asp:CompareValidator ID="cmvSo1" runat="server" ErrorMessage="Nhập con số ở đây" type="Integer" Operator="DataTypeCheck" ControlToValidate="txtSo1" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                Nhập số b:
            </td>
            <td>
                <asp:TextBox ID="txtSo2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvSo2" runat="server" ErrorMessage="Nhập số b" ControlToValidate="txtSo2" ForeColor="Red"></asp:RequiredFieldValidator><br />
                <asp:CompareValidator ID="cmvSo2" runat="server" ErrorMessage="Nhập con số ở đây" type="Integer" Operator="DataTypeCheck" ControlToValidate="txtSo1" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <th colspan="2">
                <asp:Button ID="btnTinh" runat="server" Text="Tìm USCLN" OnClick="btnTinh_Click" />
            </th>
        </tr>
        <tr>
            <th colspan="2">
                <asp:Label ID="lblKetqua" runat="server" Text=""></asp:Label>
            </th>
        </tr>
    </table>
</asp:Content>
