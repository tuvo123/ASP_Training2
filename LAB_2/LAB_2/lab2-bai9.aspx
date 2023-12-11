<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2-bai9.aspx.cs" Inherits="LAB_2.lab2_bai9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main{
            border:2px solid #C71585;
            width:400px;
        }
        .top{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
            background-color:#C71585;
            
        }
        .left{
            color:white;
            margin:10px;
        }
        .right{
            color:white;
            margin:10px;
        }
        #lbtViewupload{
            color:white;
        }
        #lbtView{
            color:white;
        }
        .up{
            display:flex;
            margin:10px;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
        
    </style>
    <form id="form1" runat="server">
        <div class="main" style="border:2px solid #C71585;">
            <div class="top">
                <div class="left">
                    <asp:LinkButton ID="lbtViewupload" runat="server" OnClick="lbtViewupload_Click">Upload tập tin</asp:LinkButton>
                 </div
                <div class="right">
                    <asp:LinkButton ID="lbtView" runat="server" OnClick="lbtView_Click">Xem các tập tin được upload</asp:LinkButton>                 
                </div>
            </div>
            <div style="border:2px solid #C71585; width:400px;">
                <asp:MultiView ID="mtv1" runat="server">
                    <asp:View ID="view1" runat="server">
                        <div class="bot">
                                <div class="up">
                                    <div style="margin-right:10px">
                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </div>                                    
                                </div>
                                <div style="display:flex;justify-content:center; align-content:center;align-items:center; margin:10px;">
                                    <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                                </div>
                            <div style="display:flex;justify-content:center; align-content:center;align-items:center; margin:10px; color:red;">
                                <asp:Label ID="error" runat="server" Text=""></asp:Label>
                            </div>
                          </div>
                    </asp:View>
                    <asp:View ID="view2" runat="server">
                        <div>
                            <asp:ListBox ID="lb" runat="server"></asp:ListBox>
                        </div>
                        <div style="display:flex;justify-content:center; align-content:center;align-items:center; margin:10px; color:red;">
                            <asp:Label ID="error2" runat="server" Text=""></asp:Label>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
        
    </form>
</body>
</html>
