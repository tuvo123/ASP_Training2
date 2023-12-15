using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab4
{
    public partial class lab2_bai2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTinh_Click(object sender, EventArgs e)
        {
            int so1 = Convert.ToInt32(txtSo1.Text);
            int so2 = Convert.ToInt32(txtSo2.Text);
            
            while(so1 != so2)
            {
                if (so1 > so2)
                {
                    so1=so1- so2;
                }
                else
                {
                    so2= so2- so1;
                }
            }
            lblKetqua.Text = "USCLN của "+so1+" và "+ so2+" là: "+so1.ToString();
        }
    }
}