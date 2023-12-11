using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class lab2_bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnXemkq_Click(object sender, EventArgs e)
        {
            String tchi1="";
            String tchi2="";
            String tchi3 = "";
            String tchi4="";
            bltkq.Items.Clear();
            if (tc1.Selected)
            {
                tchi1=tc1.Text;
                bltkq.Items.Add(tchi1);
            }
            if (tc2.Selected)
            {
                tchi2 = tc2.Text;
                bltkq.Items.Add(tchi2);
            }
            if (tc3.Selected)
            {
                tchi3 = tc3.Text;
                bltkq.Items.Add(tchi3);
            }
            if (tc4.Selected)
            {
                tchi4 = tc4.Text;
                bltkq.Items.Add(tchi4);
            }
            
           
            
            
        }

        protected void rblSanpham_SelectedIndexChanged(object sender, EventArgs e)
        {
            String chon=rblSanpham.Text;
            lblkqTen.Text= chon;
            int vitri = rblSanpham.SelectedIndex;
            if (vitri == 1)
            {
                tc1.Text = "Mẫu mã gọn đẹp";
                tc2.Text = "Màn hình sắc nét";
                tc3.Text = "có nhiều chức năng";
                tc4.Text = "Có nhiều giá, thích hợp với người mua";
            }
            if (vitri == 2)
            {
                tc1.Text = "Mẫu mã gọn đẹp";
                tc2.Text = "Tiết kiệm điện năng";
                tc3.Text = "có nhiều chức năng";
                tc4.Text = "Có nhiều giá, thích hợp với người mua";
            }
            if (vitri == 3)
            {
                tc1.Text = "Mẫu mã gọn đẹp";
                tc2.Text = "Dễ sử dụng";
                tc3.Text = "có nhiều chức năng";
                tc4.Text = "Có nhiều giá, thích hợp với người mua";
            }
            if (vitri == 4)
            {
                tc1.Text = "Mẫu mã gọn đẹp";
                tc2.Text = "Tiết kiệm điện năng";
                tc3.Text = "có nhiều chức năng tùy chỉnh";
                tc4.Text = "Có nhiều giá, thích hợp với người mua";
            }
            if (vitri ==5)
            {
                tc1.Text = "Nấu nhanh, cơm chín đều";
                tc2.Text = "Dễ sử dụng";
                tc3.Text = "có nhiều chức năng tùy chỉnh";
                tc4.Text = "Có nhiều giá, thích hợp với người mua";
            }
        }
    }
}