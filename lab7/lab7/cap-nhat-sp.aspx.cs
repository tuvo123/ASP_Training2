using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Authentication.ExtendedProtection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab7
{
    public partial class cap_nhat_sp : System.Web.UI.Page
    {

        public static string chuoikn= "Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog=QL_SANPHAM;Integrated Security=True;Encrypt=False";
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
            catch {
                lblLoi.Text = "Lỗi kết nối";
            }
        }
        void thucthi(string caulenh)
        {
            SqlCommand cm = new SqlCommand(caulenh, cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        Boolean check()
        {
            string kt = "select * from tbl_sanpham where MaSP=N'" + txtMasp.Text + "' or TenSP=N'" + txtTensp.Text + "'";
            SqlDataAdapter da=new SqlDataAdapter(kt,cn);
            DataTable dataTable = new DataTable();
            da.Fill(dataTable);
            if (dataTable.Rows.Count < 1)
            {
                return true;
            }
            else { return false; }
        }

        protected void grv_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grv.PageIndex=e.NewPageIndex;
        }

        protected void grv_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "select * from tbl_sanpham";
            SqlDataAdapter da = new SqlDataAdapter( sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = grv.SelectedIndex;
            int trang = grv.PageIndex;
            txtMasp.Text= dt.Rows[trang * 3 + dong][0].ToString();
            txtTensp.Text= dt.Rows[trang * 3 + dong][1].ToString();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            txtMasp.Text = "";
            txtTensp.Text = "";
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            if (check())
            {
                string sql = "insert into tbl_sanpham values (N'" + txtMasp.Text + "',N'" + txtTensp.Text + "')";
                thucthi(sql);
                hienthi();
            }
            else
            {
                lblLoi.Text = "Sản phẩm đã tồn tại!";
                hienthi();
            }
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