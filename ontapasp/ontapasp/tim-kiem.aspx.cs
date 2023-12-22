using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ontapasp
{
    public partial class tim_kiem : System.Web.UI.Page
    {
        public static string chuoikn = "Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog = QL_SANPHAM; Integrated Security = True; Encrypt=False";
        public static SqlConnection cn = new SqlConnection(chuoikn);
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
            catch (Exception ex)
            {
                lblLoi2.Text = "Lỗi kết nối";
            }
        }
        void thucthi(string caulenh)
        {
            SqlCommand cm = new SqlCommand(caulenh, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        Boolean kt(string sql)
        {
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
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
        

        protected void grvTimkiem_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string sql = "select * from tbl_sanpham";
            //SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //grvTimkiem.DataSource = dt;
            //grvTimkiem.DataBind();
        }

        protected void btnTimma_Click(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham where MaSP=N'" + txtMasp.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grvTimkiem.DataSource = dt;
            grvTimkiem.DataBind();
            if (kt(sql))
            {
                lblLoi2.Text = "Không tồn tại mã sản phẩm '" + txtMasp.Text + "'";
            }
        }

        protected void btnTimten_Click(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham where TenSP=N'" + txtTensp.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grvTimkiem.DataSource = dt;
            grvTimkiem.DataBind();
            if (kt(sql))
            {
                lblLoi2.Text = "Không tồn tại tên sản phẩm '" + txtTensp.Text + "'";
            }
            
        }

        protected void grvTimkiem_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvTimkiem.PageIndex=e.NewPageIndex;
        }
    }
}