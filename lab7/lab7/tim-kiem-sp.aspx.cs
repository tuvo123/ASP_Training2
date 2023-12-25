using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab7
{
    public partial class tim_kiem_sp : System.Web.UI.Page
    {
        public static string chuoikn="Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog=QL_SANPHAM;Integrated Security=True;Encrypt=False";
        public static SqlConnection cn=new SqlConnection(chuoikn);
        protected void Page_Load(object sender, EventArgs e)
        {
            hienthi();
        }
         void hienthi()
        {
            try
            {
                string sql = "select * from tbl_sanpham";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grvTimkiem.DataSource = dt;
                grvTimkiem.DataBind();
            }
            catch(Exception ex)
            {
                lblLoi2.Text = "Lỗi kết nối";
            }
        }
       

        protected void grvTimkiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string sql = "select * from tbl_sanpham";
            //SqlDataAdapter da = new SqlDataAdapter( sql, cn);
            //DataTable dt=new DataTable();
            //da.Fill(dt);
            //int dong=grvTimkiem.SelectedIndex;
            //int trang = grvTimkiem.PageIndex;
            //txtMasp.Text = dt.Rows[trang * 3 + dong][0].ToString();
            //txtTensp.Text = dt.Rows[trang * 3 + dong][1].ToString();

        }
        Boolean check( string caulenh)
        {
            SqlDataAdapter da =new SqlDataAdapter(caulenh, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count < 1)
            {
                return true;
            }
            else
            {
                return false;
            }    
        }

        protected void grvTimkiem_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvTimkiem.PageIndex=e.NewPageIndex;
        }

        protected void btnTimma_Click(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham where MaSP=N'" + txtMasp.Text + "'";
            if (check(sql))
            {
                lblLoi2.Text = "Không có mã sản phẩm này ";
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grvTimkiem.DataSource = dt;
                grvTimkiem.DataBind();
            }
            
        }

        protected void btnTimten_Click(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham where TenSP=N'" + txtTensp.Text + "'";
            if (check(sql))
            {
                lblLoi2.Text = "Không có tên sản phẩm này";
            }
            else
            {
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grvTimkiem.DataSource = dt;
                grvTimkiem.DataBind();
            }

        }
    }
}