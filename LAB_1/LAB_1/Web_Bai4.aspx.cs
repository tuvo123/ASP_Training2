using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_1
{
    public partial class Web_Bai4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(txtSo1.Text);
            int b = Convert.ToInt32(txtSo2.Text);
            float nghiem = -b / a;
            lblKetQua.Text = "Nghiệm là: " + nghiem;
        }
    }
}