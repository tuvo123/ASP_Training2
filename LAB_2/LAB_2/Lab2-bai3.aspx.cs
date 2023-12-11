using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class Lab2_bai3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            imgHoa.ImageUrl = "~/img/" + lisHoa.SelectedValue+".jpg";
            String vitri= lisHoa.SelectedIndex.ToString();
            if (vitri == "0")
            {
                lblHoa.Text = "Hoa hướng dương";
            }
            if (vitri == "1")
            {
                lblHoa.Text = "Hoa hồng";
            }
            if (vitri == "2")
            {
                lblHoa.Text = "Hoa lan";
            }
            if (vitri == "3")
            {
                lblHoa.Text = "Hoa dâm bụt";
            }
            if (vitri == "4")
            {
                lblHoa.Text = "Hoa cúc trắng";
            }
            if (vitri == "5")
            {
                lblHoa.Text = "Hoa cẩm tú cầu";
            }
            if (vitri == "6")
            {
                lblHoa.Text = "Hoa hậu";
            }
        }
    }
}