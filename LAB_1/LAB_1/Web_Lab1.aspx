<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_Lab1.aspx.cs" Inherits="LAB_1.Web_Lab1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
</head>
<body>
    <div style="width:300px; border:solid; box-shadow:inherit; background-color:antiquewhite">
        <form id="form1" runat="server" style="align-items:center; box-shadow:inherit; margin:10px">
    <div style="padding:10px">
        <asp:Label ID="lblSo1" runat="server" Text="Số thứ 1: "></asp:Label>
        <asp:TextBox ID="txtSo1" runat="server"></asp:TextBox>
    </div>
    <div style="padding:10px">
        <asp:Label ID="lblSo2" runat="server" Text="Số thứ 2: "></asp:Label>
        <asp:TextBox ID="txtSo2" runat="server"></asp:TextBox>
    </div>
    <div style="padding:10px; text-align:center; align-items:center">
        <asp:Button ID="btnTinh" runat="server" Text="Button" OnClick="btnTinh_Click" />
    </div>
    <div style="padding:10px">
        <asp:Label ID="lblKetQua" runat="server" ></asp:Label>
    </div>
</form>
    </div>
</body>
</html>
