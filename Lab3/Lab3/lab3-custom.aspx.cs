using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class lab3_custom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random rd=new Random();
                lblMaBM.Text=rd.Next(10000,99999).ToString();
                Session["Captcha"]=lblMaBM.Text;
            }
        }

        protected void MaBM_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value == Session["Captcha"].ToString());
        }
    }
}