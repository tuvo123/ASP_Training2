<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab2-bai3.aspx.cs" Inherits="LAB_2.Lab2_bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main{
            border:1px solid deeppink;
            width:500px;
            height:300px;
        }
        .top {
            display:flex;
            align-content:center;
            justify-content:center;
            align-items:center;
            color:deeppink;
            font-size:25px;
            background-color:lightpink;
        }
        .bottom{
            display:flex;
            justify-content:space-between;
            margin-top:5px;
        }
        .listhoa{
            margin:5px;
            width:50%
        }
        .anh{
            height:80%;
            display:flex;
            margin:10px;
            align-items:center;
            align-content:center;
            justify-content:center;
        }
        .ten{
            height:10%;
            margin-top:10px;
            margin-bottom:10px;
            display:flex;
            align-content:center;
            align-items:center;
            justify-content:center;
        }
    </style>
    <form id="form1" runat="server">
        <div class="main">
            <div class="top">
                <asp:Label ID="Label1" runat="server" Text="Xem Album các loài hoa"></asp:Label>
            </div>
            <div class="bottom">
                <div class="listhoa">
                    <asp:ListBox ID="lisHoa" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                        <asp:ListItem Text="Hoa hướng dương" Value="hoa-huong-duong" />
                        <asp:ListItem Text="Hoa hồng" Value="hoa-hong" />
                        <asp:ListItem Text="Hoa lan" Value="hoa-lan" />
                        <asp:ListItem Text="Hoa dâm bụt" Value="hoa-dam-but" />
                        <asp:ListItem Text="Hoa cúc" Value="hoa-cuc" />
                        <asp:ListItem Text="Hoa cẩm tú cầu" Value="hoa-cam-tu-cau" />
                        <asp:ListItem Text="Hoa hậu" Value="hoa-hau" />
                    </asp:ListBox>
                </div>
                <div class="anh-ten">
                    <div class="anh">
                        <asp:Image ID="imgHoa" runat="server" ImageUrl="~/img/hoa-huong-duong.jpg"/>
                    </div>
                    <div class="ten">
                        <asp:Label ID="lblHoa" runat="server" Text="Hoa hướng dương"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
