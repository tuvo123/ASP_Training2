<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai_1b.aspx.cs" Inherits="LAB_2.Bai_1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main {
            border:inherit;
            background-color:antiquewhite;
            width:500px;
            
        }
        .main-top {
            display:flex;
            justify-content:space-between;
            height:40%;
            width: 100%;
            margin-bottom: 30px;
        }
        .main-bottom{
            display:block;            
            height:60%;
            margin-top:20px;
        }
        .top-left{
            width: 40%;
        }
        .top-left ul{
            display:block;
        }
        .main-bottom ul{            
            list-style:none;
        }
        .docbao{
            margin-top:20px;
            margin-left:10px;
        }
        .loiich{
            list-style:none;
            margin-top:30px;
            margin-left:30px;
        }
        .top-right{
            display:flex;
            
            position:relative;
        }
        .top-right .img #Image1{
            width: 120px;
        }
        .bao{
            background-color:#20B2AA;
            margin: 5px 0px;          
            cursor:pointer;
        }
        #hpl1 {
             color:white;
             text-decoration:none;
        }
        #hpl2 {
             color:white;
             text-decoration:none;
         }
        #hpl3 {
             color:white;
             text-decoration:none;
        }
        #hpl4 {
             color:white;
             text-decoration:none;
        }
        #hpl1:hover {
             color:yellow;
        }
        #hpl2:hover {
             color:yellow;
         }
        #hpl3:hover {
             color:yellow;
        }
        #hpl4:hover {
             color:yellow;
        }
        
    </style>
   
        <form id="form1" runat="server">
            <div class="main">
                <div class="main-top">
                        <div class="top-left">
                            <div class="docbao">
                                <asp:Label ID="lblDocbao" runat="server" Text="Đọc báo"></asp:Label>
                            </div>
                            <div class="loiich">
                                <ul>
                                    <li><asp:Label ID="lbl1" runat="server" Text="Mở rộng kiến thức"></asp:Label></li>
                                    <li><asp:Label ID="lbl2" runat="server" Text="Cập nhật thông tin"></asp:Label></li>
                                    <li><asp:Label ID="lbl3" runat="server" Text="Rèn luyện trí nhớ"></asp:Label></li>
                                    <li><asp:Label ID="lbl4" runat="server" Text="Giải trí ít tốn kém"></asp:Label></li>
                                    <li><asp:Label ID="lbl5" runat="server" Text="..."></asp:Label></li>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="top-right">
                            <div class="img" >
                                <asp:Image ID="Image1" runat="server" imageURL="~/img/bai1-b.jpg" />
                            </div>
                        </div>
                </div>
                <div class="main-bottom">
                    <ul>
                        <li class="bao">
                            <asp:HyperLink NavigateUrl="https://tuoitre.vn/" ID="hpl1" runat="server" >Tuổi trẻ</asp:HyperLink>
                        </li>
                        <li class="bao" >
                            <asp:HyperLink NavigateUrl="https://vnexpress.net/" ID="hpl2" runat="server">Tin nhanh</asp:HyperLink>
                        </li>
                        <li class="bao" >
                            <asp:HyperLink NavigateUrl="https://tienphong.vn/" ID="hpl3" runat="server">Tiền phong</asp:HyperLink>
                        </li>
                        <li class="bao" >
                            <asp:HyperLink NavigateUrl="https://nld.com.vn/" ID="hpl4" runat="server">Người lao động</asp:HyperLink>
                        </li>
                    </ul>
                </div>
            </div>
        </form>
    
</body>
</html>
