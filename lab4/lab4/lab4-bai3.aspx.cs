using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4
{
    public partial class lab4_bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDangky_Click(object sender, EventArgs e)
        {
            string name=txtHoten.Text;
            lblketqua.Text = "Chức mừng bạn "+ name+ " đã đăng ký thành công!";
        }
    }
}