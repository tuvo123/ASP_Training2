<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab4-bai1.aspx.cs" Inherits="lab4.lab4_bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main{
            width: 600px;
            height:400px;
            border:2px solid blue;
        }
        .top{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
            height:10%;
            width:100%;
            border-top:2px solid blue;
        }
        .mid{
            display:flex;
            width:100%;
            height:80%;
            border-top:2px solid blue;
        }
        .mid-left{
            margin-top:80px;
            width:40%;
        }
        .mid-right{
            margin-top:10px;
            border-left:2px solid blue;
        }
        .bot{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
            border-top:2px solid blue;
            width:100%;
            height:10%;
        }

    </style>
    <form id="form1" runat="server">
        <div class="main">
            <div class="top">
                   ASP.NET
            </div>
            <div class="mid">
                <div class="mid-left">
                    <a>Tính USCLN</a>
                    <br />
                    <a>Đăng ký thông tin</a>
                </div>
                <div class="mid-right">
                    ĐÂY LÀ TRANG CHỦ
                </div>
            </div>
            <div class="bot">
                DeSign by Võ Văn Tú (2107CQ240120)
            </div>
        </div>
    </form>
</body>
</html>
