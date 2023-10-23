using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using QUANLYQUANAO.Class;

namespace QUANLYQUANAO
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            Class.Fuctions.Connect();
        }
        private void btnDangNhap_Click(object sender, EventArgs e)
        {

            int type = -1;

            if (txtTenDN.Text == "nhanvien" && txtMatKhau.Text == "nhanvien")
            {
                type = 0;
            }
            else if (txtTenDN.Text == "admin" && txtMatKhau.Text == "admin")
            {
                type = 1;
            }
            else
            {
                MessageBox.Show("Nhập sai thông tin đăng nhập hoặc mật khẩu. Xin vui lòng nhập lại.");
                txtTenDN.Focus();
                return; 
            }

            frmMain main = new frmMain(type);
            main.Show();
            this.Hide();


        }


        private void btnThoat_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
