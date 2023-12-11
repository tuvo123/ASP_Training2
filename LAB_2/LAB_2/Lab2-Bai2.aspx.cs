using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class Lab2_Bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbt_Click(object sender, EventArgs e)
        {
            lblChao.Text = "Chào bạn " + txtHoten.Text +"!";
            lblChao2.Text = "Chào mừng bạn đến với môn Lập trình web 2";
        }
    }
}