<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab5-qlsinhvien.aspx.cs" Inherits="lab5.lab5_qlsinhvien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .main{
            width:500px;
            height:400px;
            border:2px solid blue;
        }
        .top{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
            font-size:20px;
        }
        .mid{
            display:flex;

        }
        .left{
            display:block;
            width:20%;
            color:darkblue;
            align-content:flex-end;
        }
        .right{
            border-top:2px solid blue;
            border-left:2px solid blue;
            border-bottom:2px solid blue;
        }
        .bot{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
        .r1{
            display:flex;
            margin:5px; 
        }
    </style>
    <form id="form1" runat="server">
        <div class="main">
            <div class="top">
                BÀI KIỂM TRA - VÕ VĂN TÚ - CCN04.6B
            </div>
            <div class="mid">
                <div class="left" style="border-top:2px solid blue; border-bottom:2px solid blue;" >
                    <asp:HyperLink ID="hplCau1" runat="server">Câu 1: </asp:HyperLink><br />
                    <asp:HyperLink ID="hplCau2" runat="server">Câu 2: </asp:HyperLink>
                </div>
                <div class="right">
                    <table style=" align-items:center;align-content:center; justify-content:center; background-color:aliceblue;">
                        <tr>
                            <th colspan="3">DANH SÁCH MÔN HỌC</th>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <div class="r1">
                                    <div style="padding:5px;">
                                        Mã môn học:
                                    </div>
                                    <div style="padding:5px;">
                                        <asp:TextBox ID="txtMamh" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </th>
                        </tr>
                        <tr>
                            <th colspan="3">
                                <div class="r1">
                                    <div style="padding:5px;">
                                        Tên môn học:
                                    </div> 
                                    <div style="padding:5px;">
                                        <asp:TextBox ID="txtTenmh" runat="server"></asp:TextBox>
                                    </div>
                                </div>

                            </th>
                        </tr>
                          <tr>
                              <th>
                               <asp:GridView ID="grvMonhoc" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="grvMonhoc_PageIndexChanging" AllowPaging="True" PageSize="3" OnSelectedIndexChanged="grvMonhoc_SelectedIndexChanged">
                                   <AlternatingRowStyle BackColor="White" />
                                   <Columns>
                                       <asp:BoundField HeaderText="Mã môn học" DataField="MaMH" />
                                       <asp:BoundField HeaderText="Tên môn học" DataField="TenMH" />
                                       <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                                   </Columns>
                                   <EditRowStyle BackColor="#2461BF" />
                                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                   <RowStyle BackColor="#EFF3FB" />
                                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                   <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                   <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                   <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                   <SortedDescendingHeaderStyle BackColor="#4870BE" />
                               </asp:GridView>
                                 </th>
                          </tr>
                            <tr>
                                <th><asp:Label ID="lbl" runat="server" Text="Label"></asp:Label></th>
                            </tr>
                        <tr>
                            <th>
                            <div class="bot" style="display:flex;">
                                <div>
                                    <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />

                                </div>
                                <div>
                                    <asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
                                 </div>
                                
                                <div>
                                    <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
                                 </div>
                            
                                <div>
                                    <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                                </div>
                               </th>
                        </tr>
                    </table>
                </div>
            </div>
            
        </div>
    </form>
</body>
</html>
