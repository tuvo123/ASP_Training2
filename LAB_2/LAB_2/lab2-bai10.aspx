<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2-bai10.aspx.cs" Inherits="LAB_2.lab2_bai10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .tb{
            border:2px solid #C71585;

        }
        .row1{
            color:#C71585;
            font-size:18px;
            background-color:	#FFD700;
        }
        .row2{
            color:red;

        }
        .row4{
            background-color:orange;
        }
        #lbSp{
            width:210px;
            height:170px;
        }
        .cot1{
            width:35%;

        }
        .cot2{
            width:30%;
        }
        .cot3{
            width:35%;
        }
        .soluong{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
    </style>
    <form id="form1" runat="server">
        <div class="main">
            <table class="tb">
                <tr class="row1">
                    <th colspan="3">Chọn các sản phẩm bạn thích</th>
                </tr>
                <tr class="row2">
                    <td class="cot1">
                        Danh sách sản phẩm
                    </td>
                    <td class="cot2">
                        Số lượng
                    </td>
                    <td class="cot3">
                        Sản phẩm được chọn
                    </td>
                </tr>
                <tr class="row3">
                    <td class="cot1">
                        <div>
                            <asp:CheckBoxList ID="cklSanpham" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cklSanpham_SelectedIndexChanged">
                                <asp:ListItem id="ck1" Text="Kẹo trái cây thập cẩm" Value="1"></asp:ListItem>
                                <asp:ListItem id="ck2" Text="Kẹo nho" Value="2"></asp:ListItem>
                                <asp:ListItem id="ck3" Text="Kẹo táo" Value="3"></asp:ListItem>
                                <asp:ListItem id="ck4" Text="Kẹo socola táo" Value="4"></asp:ListItem>
                                <asp:ListItem id="ck5" Text="Kẹo socola đậu phộng" Value="5"></asp:ListItem>
                                <asp:ListItem id="ck6" Text="Kẹo coffee sữa" Value="6"></asp:ListItem>
                                <asp:ListItem id="ck7" Text="Kẹo socola thập cẩm có nhân" Value="7"></asp:ListItem>
                            </asp:CheckBoxList>
                        </div>
                    </td>
                    <td class="cot2">
                        <div class="soluong">
                            <div style="margin-right:15px;">
                                <asp:Label ID="lblSosp" runat="server" Text="0"></asp:Label>
                            </div>
                            <div>
                                <asp:Label ID="Label2" runat="server" Text="Sản phẩm"></asp:Label>
                            </div>
                        </div>
                    </td>
                    <td class="cot3">
                        <asp:ListBox ID="lbSp" runat="server"></asp:ListBox>
                    </td>
                </tr>
                <tr class="row4">
                    <th colspan="3">
                        <asp:Button ID="btnChonlai" runat="server" Text="Bắt đầu chọn lại" OnClick="btnChonlai_Click" />
                    </th>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
