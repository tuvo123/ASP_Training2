using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class lab2_bai10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cklSanpham_SelectedIndexChanged(object sender, EventArgs e)
        {
            lbSp.Items.Clear();
            for (int i = 0; i < cklSanpham.Items.Count; i++)
            {

                if (cklSanpham.Items[i].Selected)
                {
                    string ten = cklSanpham.Items[i].ToString();
                    lbSp.Items.Add(ten);
                    int sosp = lbSp.Items.Count;
                    lblSosp.Text = sosp.ToString();
                }
            }


        }

        protected void btnChonlai_Click(object sender, EventArgs e)
        {
            lbSp.Items.Clear();
            int sosp = lbSp.Items.Count;
            lblSosp.Text = sosp.ToString();
            if (ck1.Selected) { ck1.Selected = false; }
            if (ck2.Selected) { ck2.Selected = false; }
            if (ck3.Selected) { ck3.Selected = false; }
            if (ck4.Selected) { ck4.Selected = false; }
            if (ck5.Selected) { ck5.Selected = false; }
            if (ck6.Selected) { ck6.Selected = false; }
            if (ck7.Selected) { ck7.Selected = false; }

        }
    }
    
}