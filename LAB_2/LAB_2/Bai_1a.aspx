<%@Page Language="C#" AutoEventWireup="true" CodeBehind="Bai_1a.aspx.cs" Inherits="LAB_2.Bai_1a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bài 1a</title>
</head>
<body>
    <div style=" display:block;width:1000px;height:auto;background-color:azure">
        <form id="form1" runat="server">
            <div style="color:red;font-size:20px;align-items:center;display:flex;align-content:center;justify-content:center;align-items:center">
                <label >Hồ sơ đăng ký</label>
            </div>
            <div style="border:solid; display:flex; width:100%;">                    
                    <div class="Thongtincanhan" style="display:block; width:50%; border-right:dashed;">
                        <div style="align-items:center;display:flex;align-content:center;justify-content:center;align-items:center;background-color:#FF00FF">
                            <asp:Label  ID="lblThongtincanhan" runat="server" Text="Thông tin cá nhân"></asp:Label>
                        </div>
                        <div style="display:flex; border-top:dashed">
                            <ul style="list-style:none;width:40%; margin:5px">
                                <li style="margin:5px;height:30px">
                                     <asp:Label  ID="lblHoten" runat="server" Text="Họ và tên khách hàng: "></asp:Label>
                                </li>
                                <li style="margin:5px; height:30px">
                                     <asp:Label  ID="lblEmail" runat="server" Text="Email: "></asp:Label>
                                </li>
                                <li style="margin:5px; height:30px">
                                     <asp:Label  ID="lblGioitinh" runat="server" Text="Giới tính: "></asp:Label>
                                </li>
                                <li style="margin:5px; height:50px">
                                     <asp:Label  ID="lblDiachi" runat="server" Text="Địa chỉ: "></asp:Label>
                                </li>
                                <li style="margin:5px; height:30px">
                                     <asp:Label  ID="lblDienthoai" runat="server" Text="Điện thoại: "></asp:Label>
                                </li>
                            </ul>
                            <ul style="list-style:none;width:60%;margin:5px">
                                <li style="margin:5px;height:30px">
                                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                                </li>
                                <li style="margin:5px;height:30px">
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                </li>
                                <li style="display:flex;height:30px;margin:5px">
                                    <div style="display:flex;margin-right:5px;height:30px">
                                        <asp:RadioButton ID="rdbNam" runat="server" Groupname="gioitinh"/>
                                        <asp:Label  ID="lblNam" runat="server" Text="Nam"></asp:Label>
                                    </div>
                                    <div style="display:flex;margin-left:5px;height:30px">
                                        <asp:RadioButton ID="rdbNu" runat="server" GroupName="gioitinh"/>
                                        <asp:Label  ID="lblNu" runat="server" Text="Nữ"></asp:Label>
                                    </div>
                                </li>
                                <li style="margin:5px;height:50px">
                                    <textarea id="ttaDiachi" cols="20" rows="2" style="width:100px; height:30px" runat="server"></textarea>
                                </li>
                                <li style="margin:5px;height:30px">
                                    <asp:TextBox ID="txtDienthoai" runat="server"></asp:TextBox>
                                </li>
                            </ul>
                        </div>
                        <div style="display:flex;justify-content:center;align-content:center;align-items:center">
                            <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
                        </div>
                        
                    </div>
                    <div class="Hosokhachhang" style="display:block; width:50%;">
                        <div style="display:flex;align-items:center;align-content:center;justify-content:center;background-color:#FF00FF;border-bottom:dashed">
                            <asp:Label  ID="lblHossodangky" runat="server" Text="Hồ sơ đăng ký"></asp:Label>
                        </div>
                        <div class="Hoso" style="display:block; margin:20px ">
                            <div style="margin:5px">
                                <asp:Label  ID="lblKqHoten" runat="server"></asp:Label>
                            </div>
                            <div style="margin:5px">
                                <asp:Label  ID="lblKqEmail" runat="server"></asp:Label>
                            </div>
                            <div style="margin:5px">
                                <asp:Label  ID="lblKqGioitinh" runat="server"></asp:Label>
                            </div>
                            <div style="margin:5px">
                                <asp:Label  ID="lblKqDiachi" runat="server"></asp:Label>
                            </div>
                            <div style="margin:5px">
                                <asp:Label  ID="lblKqDienthoai" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>
            </div>
        </form>
    </div>
</body>
</html>
