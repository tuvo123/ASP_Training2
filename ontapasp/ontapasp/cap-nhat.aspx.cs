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
    public partial class cap_nhat : System.Web.UI.Page
    {
        public static string chuoikn = "Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog = QL_SANPHAM; Integrated Security = True; Encrypt=False";
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
                grv.DataSource = dt;
                grv.DataBind();
            }
            catch (Exception ex)
            {
                lblLoi.Text = "Lỗi kết nối";
            }
        }
        void thucthi(string caulenh)
        {
            SqlCommand cm=new SqlCommand(caulenh, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        Boolean kt(string caulenh)
        {
            SqlDataAdapter da = new SqlDataAdapter(caulenh, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count < 1)
            {
                return true;
            }
            else 
            { return false; }
        }

        protected void grv_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = grv.SelectedIndex;
            int trang = grv.PageIndex;
            txtMasp.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txtTensp.Text = dt.Rows[trang * 3 + dong][1].ToString();

        }

        protected void grv_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grv.PageIndex = e.NewPageIndex;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            txtMasp.Text = "";
            txtTensp.Text = "";
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string sql = "insert into tbl_sanpham values (N'" + txtMasp.Text + "',N'" + txtTensp.Text + "')";
            if (kt(sql))
                thucthi(sql);
            hienthi();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string sql = "delete tbl_sanpham where MaSP=N'" + txtMasp.Text + "'";
            thucthi(sql);
            hienthi();
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string sql="update tbl_sanpham set TenSP=N'"+txtTensp.Text+"' where MaSP=N'"+txtMasp.Text+"'";
            thucthi(sql);
            hienthi();
        }
    }
}