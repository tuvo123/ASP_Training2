using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_1
{
    public partial class Web_Bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txtSo1.Text);
            int b = Convert.ToInt32(txtSo2.Text);
            int tong = a + b;
            int hieu;
            if (a >= b)
            {
                hieu = a - b;
            }
            else
            {
                hieu = b - a;
            }
            float thuong;
            if (b!=0)
            {
                thuong = a/b;
                lblThuong.Text = "Thương là: " + thuong;
            }
            else
            {
                lblThuong.Text = "Không thể tính giá trị của thương";
            }
            lblTong.Text = "Tổng là: " + tong;
            lblHieu.Text = "Hiệu là: " + hieu;
            
        }
    }
}