using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_1
{
    public partial class Web_Bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txtSo1.Text);
            int b = Convert.ToInt32(txtSo2.Text);
            int c = Convert.ToInt32(txtSo3.Text);
            int max = a;
            //kiểm tra b
            if (b >= max)
            {
                max = b;
            }
            else
            {
                max = max;
            }
            //kiểm tra c
            if (c >= max)
            {
                max = c;
            }
            else
            {
                max = max;
            }
            lblSoLonNhat.Text = max.ToString();
        }
    }
}