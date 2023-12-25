using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab7
{
    public partial class tinh_toan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int soN = Convert.ToInt32(txtSon.Text);
            int tong = 0;
            if (soN < 1 || soN > 100)
            {
                txtKq.Text = "Nhập số N lớn hơn 1 và nhỏ hơn 100! ";
            }
            else
            {
                for (int i = 0;i<=soN;i++)
                {
                    tong = tong + i;
                }
                txtKq.Text=tong.ToString();
            }
        }
    }
}