using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class NhaCungCap : Form
    {
        public NhaCungCap()
        {
            InitializeComponent();
            this.WindowState = FormWindowState.Maximized;
            
        }
        public  bool CheckEmail(string inputEmail)
        {
            inputEmail = inputEmail ?? string.Empty;
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
                  @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                  @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputEmail))
                return (true);
            else
                return (false);
        }

        private void btn_xacnhan_Click(object sender, EventArgs e)
        {
            if(txt_email.Text.Length<=0)
                MessageBox.Show("Bạn Chưa nhập email");
            else if (CheckEmail(txt_email.Text) == true)
            {
                
                if (txt_email.Text.IndexOf("@")<6 || txt_email.Text.IndexOf("@")>30)
                    MessageBox.Show("Tên người dùng phải nằm trong khoảng 6 đến 30 ký tự");
                else 
                MessageBox.Show("Là EMail");
                
            }
                
            else
            {

                MessageBox.Show("Không Là EMail");

           
                 
            }
        }
    }
}
