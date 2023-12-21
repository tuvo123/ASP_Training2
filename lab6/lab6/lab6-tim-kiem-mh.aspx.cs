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
    public partial class lab6_tim_kiem_mh : System.Web.UI.Page
    {
        public static string chuoikn = "Data Source=VOVANTU\\SQLEXPRESS;Initial Catalog=QL_SINHVIEN;Integrated Security=True;Encrypt=False";
        public static SqlConnection cn = new SqlConnection(chuoikn);
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
                grvTimmh.DataSource = dt;
                grvTimmh.DataBind();
            }
            catch (Exception ex)
            {
                
            }
        }
        void thucthi(string caulenh)
        {
            SqlCommand cmd = new SqlCommand(caulenh, cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        void timma()
        {
            string sql = "SELECT * FROM tbl_monhoc where MaMH=N'"+txtMamh.Text+"'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grvTimmh.DataSource = dt;
            grvTimmh.DataBind();
        }
        void timten()
        {
            string sql = "SELECT * FROM tbl_monhoc where TenMH=N'" + txtTenmh.Text + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grvTimmh.DataSource = dt;
            grvTimmh.DataBind();
        }

        protected void grvTimmh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnTimtheoma_Click(object sender, EventArgs e)
        {
            timma();
        }

        protected void btnTimtheoten_Click(object sender, EventArgs e)
        {
            timten();
        }
    }
}