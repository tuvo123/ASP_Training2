using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class Bai_1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            lblKqHoten.Text="Họ và tên khách hàng: "+txtHoten.Text;
            lblKqEmail.Text="Email khách hàng: "+txtEmail.Text;
            string gt;
            if(rdbNam.Checked)
            {
                gt = "Nam";
            }
            else
            {
                gt = "Nữ";
            }
            lblKqGioitinh.Text = "Giới tính: "+ gt;
            lblKqDiachi.Text="Địa chỉ: "+ ttaDiachi.Value;
            lblKqDienthoai.Text = "Điện thoại: " + txtDienthoai.Text;
        }
    }
}