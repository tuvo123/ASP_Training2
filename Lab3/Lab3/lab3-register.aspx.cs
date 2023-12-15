using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class lab3_register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlLoaiphong_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            lblThongbao.Text = "Chào mừng "+txtHoten.Text+" đã đăng ký thành công!";
        }
    }
}