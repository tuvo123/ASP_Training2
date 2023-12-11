using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class lab2_bai6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void drdKytu_SelectedIndexChanged(object sender, EventArgs e)
        {
            string vitri = drdKytu.SelectedValue;
            switch (vitri)
            {
                case "1":
                    bl.BulletStyle=BulletStyle.LowerRoman;
                    break;
                case "2":
                    bl.BulletStyle = BulletStyle.Numbered;
                    break;
                case "3":
                    bl.BulletStyle = BulletStyle.UpperRoman;
                    break;
                case "4":
                    bl.BulletStyle = BulletStyle.Circle;
                    break;
                case "5":
                    bl.BulletStyle = BulletStyle.Square;
                    break;
                default:
                    bl.DisplayMode = BulletedListDisplayMode.LinkButton;
                    break;
            }
        }

        protected void bl_Click(object sender, BulletedListEventArgs e)
        {
            string selectedValue = bl.Items[e.Index].Value;
            Response.Redirect(selectedValue);
        }
    }
}