using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_1
{
    public partial class Bai5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            double a = Convert.ToDouble(txtSo1.Text);
            double b = Convert.ToDouble(txtSo2.Text);
            double c = Convert.ToDouble(txtSo3.Text);
            if (a == 0)
            {
                lblNghiem1.Text = "Đây không phải phương trình bậc 2";
            }
            else
            {
                double delta = (b * b) - (4 * a * c);
                if (delta < 0)
                {
                    lblNghiem1.Text = "Phương trình vô nghiệm";
                }
                else if(delta==0)
                {
                    lblNghiem1.Text = "Phương trình có 1 nghiệm kép: x1=x2= " + (-b / (2 * a));
                }
                else
                {
                    lblNghiem1.Text="Nghiệm thứ nhất: x1= "+(-b+Math.Sqrt(delta))/(2*a);
                    lblNghiem2.Text="Nghiệm thứ hai: x2= "+(-b-Math.Sqrt(delta))/(2*a);
                }
            }
            

        }
    }
}