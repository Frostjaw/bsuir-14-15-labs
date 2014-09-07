using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace labs_kidsvt
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            comboBox1.SelectedIndex = 2;
            comboBox2.SelectedIndex = 2;
            comboBox3.SelectedIndex = 2;
            comboBox4.SelectedIndex = 2;
            comboBox5.SelectedIndex = 2;
            comboBox6.SelectedIndex = 2;
        }

        void perform()
        {           
            for (int i = 0; i < Math.Pow(2, 7); i++)
            {
                BitArray bits = new BitArray(new int[] { i });

                bool x1 = bits[0];
                bool x2 = bits[1];
                bool x3 = bits[2];
                bool x4 = bits[3];
                bool x5 = bits[4];
                bool x6 = bits[5];
                bool x7 = bits[6];

                bool true_value = F.f(x1, x2, x3, x4, x5, x6, x7);

                bool f1 = comboBox1.SelectedIndex == 2 ? F.f1(x1, x2)       : Convert.ToBoolean(comboBox1.SelectedIndex);
                bool f2 = comboBox2.SelectedIndex == 2 ? F.f2(x3)           : Convert.ToBoolean(comboBox2.SelectedIndex);
                bool f3 = comboBox3.SelectedIndex == 2 ? F.f3(x5, x6)       : Convert.ToBoolean(comboBox3.SelectedIndex);
                bool f4 = comboBox4.SelectedIndex == 2 ? F.f4(x4, f3, x7)   : Convert.ToBoolean(comboBox4.SelectedIndex);
                bool f5 = comboBox5.SelectedIndex == 2 ? F.f5(f2, f4)       : Convert.ToBoolean(comboBox5.SelectedIndex);
                bool f6 = comboBox6.SelectedIndex == 2 ? F.f6(f1, f5)       : Convert.ToBoolean(comboBox6.SelectedIndex);

                dataGridView1.Rows.Add(
                    ((x7 ? "1" : "0") + " ") +
                    ((x6 ? "1" : "0") + " ") +
                    ((x5 ? "1" : "0") + " ") +
                    ((x4 ? "1" : "0") + " ") +
                    ((x3 ? "1" : "0") + " ") +
                    ((x2 ? "1" : "0") + " ") +
                    ((x1 ? "1" : "0") + " ")
                    , ((f6 ? "1" : "0")));

                if (f6 != true_value)
                {
                    DataGridViewTextBoxCell cell = (DataGridViewTextBoxCell)dataGridView1.Rows[dataGridView1.Rows.Count - 1].Cells[0];
                    cell.Style.ForeColor = Color.Red;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
            perform();
        }
    }
}
