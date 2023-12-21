using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab6
{
    public partial class lab6_cap_nhat_mh : System.Web.UI.Page
    {
        public static string chuoikn = "Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog=QL_SINHVIEN;Integrated Security=True;Encrypt=False";
        public static SqlConnection cn=new SqlConnection(chuoikn);
        protected void Page_Load(object sender, EventArgs e)
        {
            hienthi();
        }
        void hienthi()
        {
            try
            {
                string sql = "SELECT * FROM tbl_monhoc";
                SqlDataAdapter da = new SqlDataAdapter(sql, cn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grvMonhoc.DataSource = dt;
                grvMonhoc.DataBind();
            }
            catch (Exception ex) {
                lblLoi.Text = "lỗi kết nối";
            }
        }
        void thucthi(string caulenh)
        {
            SqlCommand cm=new SqlCommand(caulenh,cn);
            cn.Open();
            cm.ExecuteNonQuery();
            cn.Close();
        }
        Boolean chk()
        {
            string sql = "SELECT * FROM tbl_monhoc";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void grvMonhoc_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM tbl_monhoc";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            int dong = grvMonhoc.SelectedIndex;
            int trang = grvMonhoc.PageIndex;
            txtMamh.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txtTenmh.Text = dt.Rows[trang * 3 + dong][1].ToString();
        }

        protected void grvMonhoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvMonhoc.PageIndex = e.NewPageIndex;
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            txtMamh.Text = "";
            txtTenmh.Text = "";

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            if (chk())
            {
                string chuoisql = "INSERT INTO tbl_monhoc VALUES ('" + txtMamh.Text + "',N'" + txtTenmh.Text + "')";
                thucthi(chuoisql);
            }
            else
            {
                lblLoi.Text = "Tên môn học đã tồn tại!";
            }
            hienthi();
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string chuoisql = "DELETE tbl_monhoc WHERE MaMH='" + txtMamh.Text + "'";
            thucthi(chuoisql);
            hienthi();
            txtMamh.Text = "";
            txtTenmh.Text = "";
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            string chuoisql = "UPDATE tbl_monhoc SET TenMH=N'" + txtTenmh.Text + "'  where MaMH='" + txtMamh.Text + "'";
            thucthi(chuoisql);
            hienthi();
        }
    }
}