<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab2-bai5.aspx.cs" Inherits="LAB_2.lab2_bai5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .table{
            width:500px;
            border: 2px solid green;
        }
        .dong1{
            background-color:#90EE90;
            
        }
        .dong2{
            width:100%;
        }
        .soluong{
            display:flex;
            margin:5px;
        }
        .dat{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
        #btnindon{
            display:flex;
            justify-content:center;
            align-content:center;
            align-items:center;
        }
        #btnDelete{
            width:20px;
            height:20px;
        }
        #lbBanhduocdat{
            width:180px;
            height:70px;
        }
        #txtSoluong{
            width:50px;
            margin-left:10px;
            margin-right:10px;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <table class="table">
                <tr class="dong1">
                    <th colspan="2" style="color:green;font-size:25px;">ĐƠN ĐẶT HÀNG</th>
                </tr>
                <tr class="dong2">
                      <td>Khách hàng</td>
                       <td>
                            <asp:TextBox ID="txtKhachhang" runat="server"></asp:TextBox>

                        </td>         
                 </tr>          
                  <tr>
                    <td>Địa chỉ: </td>
                    <td>
                        <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>Mã số thuế: </td>
                    <td>
                        <asp:TextBox ID="txtMasothue" runat="server"></asp:TextBox>

                    </td>
                </tr>          
                       
                <tr class="dong3" >
                    <td>
                        <div style="border:2px solid green;">
                            <div style="color:green">
                                <asp:Label ID="Label1" runat="server" Text="Chọn các loại bánh sau: "></asp:Label>
                            </div>
                            <div style="margin-left:25px">
                                <asp:DropDownList ID="dldBanh" runat="server">
                                    <asp:ListItem ID="dl1" Text="Hamburger" Value="Hamburger" />
                                    <asp:ListItem ID="dl2" Text="Pizza" Value="Pizza" />
                                    <asp:ListItem ID="dl3" Text="Hotdog" Value="Hotdog" />
                                    <asp:ListItem ID="dl4" Text="Bánh Croissant bơ" Value="Bánh Croissant bơ" />
                                </asp:DropDownList>

                            </div>
                            <div class="soluong">
                                <div >
                                    <asp:Label ID="Label2" runat="server" Text="Số lượng:"></asp:Label>
                                </div>
                                <div>
                                    <asp:TextBox ID="txtSoluong" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Label ID="Label3" runat="server" Text="Cái"></asp:Label>
                                </div>
                            </div>
                            <div class="dat">
                                <asp:Button ID="btnDat" runat="server" Text=">" OnClick="btnDat_Click" />
                            </div>
                        </div>
                    </td>
                    <td style="border:2px solid green;">
                        <div>
                            <div class="dsDat" style="color:green">
                                <asp:Label ID="Label4" runat="server" Text="Danh sách bánh được đặt:"></asp:Label>
                            </div>
                            <div style="display:flex;">
                                <div>
                                    <asp:ListBox ID="lbBanhduocdat" runat="server"></asp:ListBox>
                                </div>
                                <div style="display:flex; width:10%;margin-top:30px">
                                    <asp:ImageButton ID="btnDelete" runat="server" imageURL="~/img/thung-rac.jpg" OnClick="btnDelete_Click" />
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr style="background-color:#90EE90">                    
                        <th colspan="2">
                            <asp:Button ID="btnIndondh" runat="server" Text="In đơn đặt hàng" OnClick="btnIndondh_Click" />
                        </th>
                 </tr>
            </table>
        </div>
        <style>
            .banhdat{
                display:flex;
                
            }
            .tb2{
                color:red;
                border:2px solid red;
                margin:20px;
                width:400px;
            }
            .lbl{
                display:flex;
                margin:5px;
            }
            #tt{
                display:flex;
                justify-content:center;
                align-content:center;
                align-items:center;
                color:red;
                width:400px;
                margin-top:30px;
            }
            .lb2{
                margin-right:10px;
            }
        </style>
        <div>
            <asp:Label ID="error" runat="server" Text=""></asp:Label>
        </div>
        <div class="hoadon">
            <div id="tt">HÓA ĐƠN ĐẶT HÀNG</div>
             <table class="tb2">
                 
                 <tr><td>
                     <div class="lbl">
                         <div class="lb2">
                             <asp:Label ID="Label5" runat="server" Text="Khách hàng: "></asp:Label>
                         </div>
                         <div>
                             <asp:Label ID="lblKhachhang" runat="server" Text=""></asp:Label>
                         </div>
                     </div>
                     </td>
                 </tr>
                 <tr>
                     <td>
                    <div class="lbl">
                        <div class="lb2">
                            <asp:Label ID="Label6" runat="server" Text="Địa chỉ: "></asp:Label>
                        </div>
                        <div>
                            <asp:Label ID="lblDiachi" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </td>
                </tr>
                 <tr><td>
                    <div class="lbl">
                        <div class="lb2">
                            <asp:Label ID="Label8" runat="server" Text="Mã số thuế: "></asp:Label>
                        </div>
                        <div >
                            <asp:Label ID="lblMasothue" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                     </td>
                </tr>
                 <tr><td>
                     <asp:Label ID="Label7" runat="server" Text="Đặt các loại bánh sau: "></asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <div class="banhdat">
                          <td style="border:1px solid red; width:120px; margin-left:30px;">
                                 <asp:Label ID="lblbanh1" runat="server" Text=""></asp:Label>
                             </td>
                             <td style="border:1px solid red; width:120px;">
                                <asp:Label ID="sl1" runat="server" Text=""></asp:Label>
                            </td>
                     </div>
                     
                 </tr>
                 <tr>
                    <div class="banhdat">
                         <td style="border:1px solid red; width:120px; margin-left:30px;">
                             <asp:Label ID="lblbanh2" runat="server" Text=""></asp:Label>
                         </td>
                         <td style="border:1px solid red; width:120px;">
                            <asp:Label ID="sl2" runat="server" Text=""></asp:Label>
                        </td>
                    </div>
                </tr>
                 <tr>
                    <div class="banhdat">
                         <td style="border:1px solid red; width:120px; margin-left:30px;">
                             <asp:Label ID="lblbanh3" runat="server" Text=""></asp:Label>
                         </td>
                         <td style="border:1px solid red; width:120px;">
                            <asp:Label ID="sl3" runat="server" Text=""></asp:Label>
                        </td>
                    </div>
                </tr>
                  <tr>
                        <div class="banhdat">
                             <td style="border:1px solid red; width:120px; margin-left:30px;">
                                 <asp:Label ID="lblbanh4" runat="server" Text=""></asp:Label>
                             </td>
                             <td style="border:1px solid red; width:120px;">
                                <asp:Label ID="sl4" runat="server" Text=""></asp:Label>
                            </td>
                        </div>
                    </tr>
             </table>
        </div>
    </form>
</body>
</html>
