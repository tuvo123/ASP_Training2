<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lab2-Bai2.aspx.cs" Inherits="LAB_2.Lab2_Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main {
            border:solid;
            width:500px;
        }
        .top {
            display:flex;
            justify-content:space-between;
            padding:5px;
        }
        .left{
            color:green;
            width:25%;
        }
        .right{
            color:green;
            width:30%
        }
        .main-bottom{
            background-color:greenyellow;
            border-top:dashed 2px;
             padding:5px;
        }
        .bottom{           
            display:flex;
            justify-content:center;
            align-content:center;
            align-content:center;
           color:green;
        }
    </style>
    <form id="form1" runat="server">
        <div class="main">
            <div class="top">
                <div class="left">
                    <asp:Label ID="Label1" runat="server" Text="Nhập họ tên: "></asp:Label>
                </div>
                <div class="mid">
                    <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                </div>
                <div class="right">
                    <asp:LinkButton ID="lbt" runat="server" OnClick="lbt_Click" OnClientClick="return confirm('Bạn có đồng ý thay đổi câu chào?');">Thay đổi câu chào</asp:LinkButton>
                </div>
                
            </div>
            <div class="main-bottom">
                <div class="bottom">
                    <asp:Label ID="lblChao" runat="server" Text="Chào bạn !"></asp:Label>
                </div>
                <div class="bottom">
                    <asp:Label ID="lblChao2" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
