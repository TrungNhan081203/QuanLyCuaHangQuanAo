using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QUANLYQUANAO
{
    public partial class frmHoaDonBan : Form
    {
        public frmHoaDonBan()
        {
            InitializeComponent();
        }

        SqlConnection cnn = new SqlConnection("Data Source=LAPTOP-LCSO2FRU;Initial Catalog=QuanLyCuaHangQuanAo;Integrated Security=True");
       // string query = "Select * from Account  where 
      

        private void frmHoaDonBan_Load(object sender, EventArgs e)
        {

        }
    }
}
