using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DTO;
using DAL;
using BUS;

namespace GUI
{
    public partial class LapHoaDonMoi : Form
    {
        Lop_DTO L = new Lop_DTO();
        Lop_Bus loph = new Lop_Bus();
        public LapHoaDonMoi()
        {
            InitializeComponent();
            this.WindowState = FormWindowState.Maximized;
            
        }

        private void LapHoaDonMoi_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = loph.HienThiDTGV();
            this.cb_masanxuat.DataSource= loph.HienThiDTGV();
            this.cb_masanxuat.DisplayMember = "MaSanPham";
            this.cb_masanxuat.ValueMember = "MaSanPham";
        }

        private void button6_Click(object sender, EventArgs e)
        {

        }

        private void button7_Click(object sender, EventArgs e)
        {

        }

        private void dataGridView1_RowEnter(object sender, DataGridViewCellEventArgs e)
        {
            // 1
            // ok
            int dong = e.RowIndex;
            try
            {
                cb_masanxuat.SelectedValue = dataGridView1.Rows[dong].Cells[0].Value.ToString();
                txt_tensp.Text = dataGridView1.Rows[dong].Cells[1].Value.ToString();
                txt_hangsanxuat.Text = dataGridView1.Rows[dong].Cells[2].Value.ToString();
                txt_sl.Text = dataGridView1.Rows[dong].Cells[3].Value.ToString();
                txt_dongia.Text = dataGridView1.Rows[dong].Cells[4].Value.ToString();
                txt_thanhtien.Text = dataGridView1.Rows[dong].Cells[5].Value.ToString();
            }
            catch (Exception)
            {
                MessageBox.Show("Dòng dưới này không có gì!!!");
            }

        }

        private void cb_masanxuat_SelectedIndexChanged(object sender, EventArgs e)
        {
            int dong = dataGridView1.RowCount-1;
            txt_sl.Text = "1";
            for (int i = 0; i < dong; i++)
                if (cb_masanxuat.Text.Equals(dataGridView1.Rows[i].Cells[0].Value.ToString()) == true)
                {
                    txt_tensp.Text = dataGridView1.Rows[i].Cells[1].Value.ToString();
                    txt_hangsanxuat.Text = dataGridView1.Rows[i].Cells[2].Value.ToString();
                    txt_dongia.Text = dataGridView1.Rows[i].Cells[4].Value.ToString();
                    txt_thanhtien.Text = txt_dongia.Text;
                }
        }

        
       
    }
}
