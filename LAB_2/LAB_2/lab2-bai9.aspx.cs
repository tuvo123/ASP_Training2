using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LAB_2
{
    public partial class lab2_bai9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mtv1.ActiveViewIndex = 0;
        }

       

        protected void lbtView_Click(object sender, EventArgs e)
        {
            mtv1.ActiveViewIndex = 1;
        }

        protected void lbtViewupload_Click(object sender, EventArgs e)
        {
            mtv1.ActiveViewIndex = 0;
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string filename=FileUpload1.FileName;
                string fodler=Server.MapPath("~/upload/");
                {
                    if (!Directory.Exists(fodler))
                    {
                        Directory.CreateDirectory(fodler);
                    }
                    string pathfile=Path.Combine(fodler, filename);
                    FileUpload1.SaveAs(pathfile);
                    string uploadFolder = Server.MapPath("~/Upload/");
                    string[] files = Directory.GetFiles(uploadFolder);

                    lb.Items.Clear();

                    foreach (string file in files)
                    {
                        lb.Items.Add(Path.GetFileName(file));
                    }
                }
            }
        }
    }
}