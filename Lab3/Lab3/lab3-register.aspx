<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab3-register.aspx.cs" Inherits="Lab3.lab3_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border:2px solid green; background-color:">
                <tr class="row1">
                    <th colspan="3" style="background-color:blue;color:white;">ĐĂNG KÝ PHÒNG</th>
                </tr>
                <tr class="row2">
                    <td>Họ tên</td>
                    <td>
                        <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txtHoten" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Cơ quan</td>
                    <td>
                        <asp:TextBox ID="txtCoquan" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvCoquan" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtCoquan" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>E-mail</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Nhập địa chỉ email" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtMatkhau" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtMatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Nhập lại mật khẩu</td>
                    <td>
                        <asp:TextBox ID="txtNlmatkhau" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNlmatkhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2 <br> Mật khẩu không khớp" ControlToValidate="txtNlmatkhau" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmvNlmatkhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToCompare="txtMatkhau" ControlToValidate="txtNlmatkhau"  ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Ngày checkin</td>
                    <td>
                        <asp:TextBox ID="txtNgay" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cmvCheckin" runat="server" ErrorMessage="Nhập định dạng ngày" ControlToValidate="txtNgay" Type="Date" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Số ngày ở</td>
                    <td>
                        <asp:TextBox ID="txtSongayo" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cmvSongayo" runat="server" ErrorMessage="Nhập con số ngày" ControlToValidate="txtSongayo" Type="Integer" Operator="DataTypeCheck" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr class="row2">
                    <td>Loại phòng</td>
                    <td>
                        <asp:DropDownList ID="ddlLoaiphong" runat="server" OnSelectedIndexChanged="ddlLoaiphong_SelectedIndexChanged">
                            <asp:ListItem id="it1" Text="Phòng đơn" AutoPostBack="true"></asp:ListItem>
                            <asp:ListItem id="it2" Text="Phòng ghép" AutoPostBack="true"></asp:ListItem>
                            <asp:ListItem id="it3" Text="Phòng tổng thống" AutoPostBack="true"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        
                    </td>
                </tr>
                <tr>
                    <th colspan="3">                        
                        <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
                    </th>
                </tr>
                <tr>
                    <th colspan="3"><asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label></th>
                </tr>
                <tr>
                    <th colspan="3">
                        <asp:ValidationSummary ID="vsTomtatloi" runat="server" />
                    </th>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
