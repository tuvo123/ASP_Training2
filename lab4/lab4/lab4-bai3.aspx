<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Masterpage.Master" CodeBehind="lab4-bai3.aspx.cs" Inherits="lab4.lab4_bai3" %>

<asp:Content ID="ctnBai3" runat="server" ContentPlaceHolderID="cph"></asp:Content>
<asp:Content ID="ctnMidbai3" runat="server" ContentPlaceHolderID="cphmidright">
    <table>
        <tr>
            <th colspan="3" style="color:blue;font-size:20px;">
                Đăng ký thông tin
            </th>
        </tr>
        <tr>
            <td>Họ tên: </td>
            <td><asp:TextBox ID="txtHoten" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ErrorMessage="Nhập họ và tên" ControlToValidate="txtHoten" ForeColor="red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>User: </td>
            <td><asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" ErrorMessage="Nhập user" ControlToValidate="txtUser" ForeColor="red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Password: </td>
            <td><asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" ErrorMessage="Nhập pasword" ControlToValidate="txtPass" ForeColor="red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Nhập lại password: </td>
            <td><asp:TextBox ID="txtNlpass" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvNlpass" runat="server" ErrorMessage="Nhập lại password" ControlToValidate="txtNlpass" ForeColor="red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cpvNlpass" runat="server" ErrorMessage="Password không trùng khớp!" ControlToValidate="txtNlpass" ControlToCompare="txtPass" ForeColor="Red"></asp:CompareValidator>
            </td>
                </tr>
        <tr>
            <td>Năm sinh: </td>
            <td><asp:TextBox ID="txtNamsinh" runat="server"></asp:TextBox></td>
            <td>
               <asp:CompareValidator ID="cmvNamsinh" runat="server" ErrorMessage="Nhập năm sinh!" Type="Integer" Operator="DataTypeCheck" ControlToValidate="txtNamsinh" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            </td>
            <td>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Email không đúng định dạng" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
             <td>Địa chỉ: </td>
             <td><asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvDiachi" runat="server" ErrorMessage="Nhập địa chỉ" ControlToValidate="txtDiachi" ForeColor="red"></asp:RequiredFieldValidator></td>
         </tr>
         <tr>
             <td>Sở thích: </td>
             <td><asp:TextBox ID="txtSothich" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="rfvSothich" runat="server" ErrorMessage="Nhập sở thích" ControlToValidate="txtSothich" ForeColor="red"></asp:RequiredFieldValidator></td>
         </tr>
        <tr>
            <th colspan="3" style="color:blue;">
                <asp:Button ID="btnDangky"  runat="server" Text="Đăng ký" OnClick="btnDangky_Click" /></th>
        </tr>
        <tr>
            <th colspan="3">
                <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
            </th>
        </tr>
        <tr>
            <th colspan="3">
                <asp:ValidationSummary ID="vsLoi" runat="server" ForeColor="red" />
            </th>
        </tr>
    </table>
</asp:Content>