<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2-bai6.aspx.cs" Inherits="LAB_2.lab2_bai6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main{
            border:2px solid blue;
            width:400px;
        }
        .tb{
            
            width:300px;
            color:blue;
        }
        .doibullet{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
        
        
    </style>
    <form id="form1" runat="server">
        <div class="main">
             <div style="display:flex;justify-content:center;align-content:center;align-items:center; color:white;font-size:20px;background-color:blue;">Hệ thống bài tập các điều khiển cơ bản</div>
            <table class="tb">
                
                <tr><td>
                    <asp:BulletedList ID="bl" runat="server" OnClick="bl_Click" DisplayMode="LinkButton" BulletStyle="Disc">
                        <asp:ListItem id="it1" Text="Bài 3.1: Trang đọc báo " Value="~/bai_1b.aspx/"></asp:ListItem>
                        <asp:ListItem id="it2" Text="Bài 3.2: Trang câu chào " Value="~/Lab2-Bai2.aspx/"></asp:ListItem>
                        <asp:ListItem id="it3" Text="Bài 3.3: Trang album các loài hoa " Value="~/Lab2-bai3.aspx/"></asp:ListItem>
                        <asp:ListItem id="it4" Text="Bài 3.4: Trang đơn đặt hàng " Value="~/lab2-bai5.aspx/"></asp:ListItem>
                        <asp:ListItem id="it5" Text="Bài 3.5: Trang phiếu ý kiến người tiêu dùng " Value="~/lab2-bai4.aspx/"></asp:ListItem>
                    </asp:BulletedList>
                </tr></td>
                <tr><td>
                    <di class="doibullet">
                        <div>
                            <asp:Label ID="Label1" runat="server" Text="Đổi Bullet" ></asp:Label>
                        </div>
                        <div>
                            <asp:DropDownList ID="drdKytu" AutoPostBack="true"  runat="server" OnSelectedIndexChanged="drdKytu_SelectedIndexChanged">
                                <asp:ListItem id="dr1" Text="Ký tự thường" Value="1"></asp:ListItem>
                                <asp:ListItem id="dr2" Text="Số" Value="2"></asp:ListItem>
                                <asp:ListItem id="dr3" Text="Ký tự in" Value="3"></asp:ListItem>
                                <asp:ListItem id="dr4" Text="Hình tròn" Value="4"></asp:ListItem>
                                <asp:ListItem id="dr5" Text="Hình vuông" Value="5"></asp:ListItem>
                                
                            </asp:DropDownList>
                        </div>
                    </di>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
