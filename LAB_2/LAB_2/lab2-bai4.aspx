<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2-bai4.aspx.cs" Inherits="LAB_2.lab2_bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .tb{
            border:2px solid #DC143C;
        }
        .dong1{
            background-color:#F0E68C;
            color:red;
        }
        .dong2{
            background-color:#DC143C;
            color:white;
            border-right:2px solid white;

        }
        .dong3{
            border-bottom:2px solid red;
        }
        .dong4{
            border-top:2px solid red;
        }
        .kqTen{
            display:flex;

        }
        .kqTieuchi{
            margin:10px;
        }
        .bot{
            
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <table class="tb">
                <tr class="dong1">
                    <th colspan="2" class="tieude">Phiếu lấy ý kiến người dùng của hãng ABX</th>
                </tr>
                <tr class="dong2">
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Bạn hãy chọn sản phẩm sau: "></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Các tiêu chuẩn bình chọn: "></asp:Label>
                    </td>
                </tr>
                <tr class="dong3">
                    <td>
                        <asp:RadioButtonList ID="rblSanpham" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rblSanpham_SelectedIndexChanged">
                            <asp:ListItem  Text="Máy giặt" Value="Máy giặt" AutoPostBack="true" />
                            <asp:ListItem  Text="Tivi" Value="Ti vi" AutoPostBack="true" />
                            <asp:ListItem  Text="Tủ lạnh" Value="Tủ lạnh" AutoPostBack="true" />
                            <asp:ListItem  Text="Đầu đĩa DVD" Value="Đầu đĩa DVD"  AutoPostBack="true"/>
                            <asp:ListItem  Text="Lò Viba" Value="Lò Viba" AutoPostBack="true" />
                            <asp:ListItem  Text="Nồi cơm điện" Value="Nồi cơm điện" AutoPostBack="true" />
                        </asp:RadioButtonList>

                    </td>
                    <td>
                        <asp:CheckBoxList ID="cklTieuchi" runat="server">
                            <asp:ListItem ID="tc1" Text="Có nhiều chức năng giặt" Value="vl1" />
                            <asp:ListItem ID="tc2" Text="Cho phép ngưng giữa chừng " Value="vl2" />
                            <asp:ListItem ID="tc3" Text="Sấy khô sau khi giặt" Value="vl3" />
                            <asp:ListItem ID="tc4" Text="Mẫu mã gọn đẹp" Value="vl4" />
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr class="dong4">
                    <div class="bot" >
                        <td style="border-top:2px solid red;">
                            <asp:Button ID="btnXemkq" runat="server" Text="Xem kết quả bình chọn" OnClick="btnXemkq_Click" />
                        </td>
                        <td style="border-top:2px solid red;">
                            <div class="kqTen">
                                <div>
                                    <asp:Label ID="lb" runat="server" Text="Bạn đã chọn sản phẩm : "></asp:Label>
                                </div>
                                <div>
                                    <asp:Label ID="lblkqTen" runat="server" Text="Máy giặt"></asp:Label>
                                </div>
                            </div>
                            <div class="kqTieuchi">
                                <asp:BulletedList ID="bltkq" runat="server"></asp:BulletedList>                            
                            </div>
                        </td>
                    </div>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
