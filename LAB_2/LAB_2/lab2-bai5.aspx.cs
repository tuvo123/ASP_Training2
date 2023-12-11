using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class lab2_bai5 : System.Web.UI.Page
    {
        public List<string> soluongbanh=new List<string>();
        public List<string> danhSachBanh=new List<string>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            for(int i = 0; i < lbBanhduocdat.Items.Count; i++)
            {
                if (lbBanhduocdat.Items[i].Selected==true)
                {
                    lbBanhduocdat.Items.RemoveAt(i);
                }
            }
        }

        protected void btnDat_Click(object sender, EventArgs e)
        {
            string tenbanh = dldBanh.Text;
            string soluong=txtSoluong.Text;
            
            
            if (!string.IsNullOrEmpty(soluong))
            {
                if (Convert.ToInt32(soluong) > 0)
                {
                    lbBanhduocdat.Items.Add(tenbanh + " (" + soluong + ")");
                    danhSachBanh.Add(tenbanh);
                    soluongbanh.Add(soluong);
                }
            }
            else
            {
                error.Text = "Số lượng không được để trống và phải lớn hơn 0 !";
            }
            
            Session["DanhSachBanh"] = danhSachBanh;
            Session["SoLuongBanh"] = soluongbanh;
        }

        protected void btnIndondh_Click(object sender, EventArgs e)
        {
            for(int i = 0;i<lbBanhduocdat.Items.Count;i++)
            {
                if (lbBanhduocdat != null)
                {
                    lblKhachhang.Text = txtKhachhang.Text;
                    lblDiachi.Text = txtDiachi.Text;
                    lblMasothue.Text = txtMasothue.Text;
                   
                    string ten=lbBanhduocdat.Items[i].Text;
                    
                    int vitri=ten.IndexOf("(");
                    int vitri2=ten.LastIndexOf(")");

                    if (lblbanh1.Text == "" && sl1.Text == "")
                    {
                        lblbanh1.Text = ten.Substring(0, vitri-1);
                        sl1.Text = ten.Substring(vitri + 1,vitri2-vitri-1);
                    }
                    else if (lblbanh2.Text == "" && sl2.Text == "")
                    {
                        lblbanh2.Text = ten.Substring(0, vitri - 1);
                        sl2.Text = ten.Substring(vitri + 1, vitri2 - vitri-1);
                    }
                    else if (lblbanh3.Text == "" && sl3.Text == "")
                    {
                        lblbanh3.Text = ten.Substring(0, vitri - 1);
                        sl3.Text = ten.Substring(vitri + 1, vitri2 - vitri-1);
                    }
                    else if (lblbanh4.Text == "" && sl4.Text == "")
                    {
                        lblbanh4.Text = ten.Substring(0, vitri - 1);
                        sl4.Text = ten.Substring(vitri + 1, vitri2 - vitri-1);
                    }

                }else { lblbanh1.Text = "Chưa đặt hàng"; }
            }
        }
    }
}