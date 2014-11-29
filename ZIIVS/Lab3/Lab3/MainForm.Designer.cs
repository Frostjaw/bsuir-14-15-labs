namespace Lab3
{
    partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            this.encodeButton = new System.Windows.Forms.Button();
            this.decodeButton = new System.Windows.Forms.Button();
            this.resetButton = new System.Windows.Forms.Button();
            this.inputTextLabel = new System.Windows.Forms.Label();
            this.encodedTextLabel = new System.Windows.Forms.Label();
            this.decodedTextLabel = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.inputTextBox = new System.Windows.Forms.TextBox();
            this.encodedTextBox = new System.Windows.Forms.TextBox();
            this.decodedTextBox = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // encodeButton
            // 
            this.encodeButton.Location = new System.Drawing.Point(338, 256);
            this.encodeButton.Name = "encodeButton";
            this.encodeButton.Size = new System.Drawing.Size(49, 29);
            this.encodeButton.TabIndex = 3;
            this.encodeButton.Text = ">>";
            this.encodeButton.UseVisualStyleBackColor = true;
            this.encodeButton.Click += new System.EventHandler(this.encodeButton_Click);
            // 
            // decodeButton
            // 
            this.decodeButton.Location = new System.Drawing.Point(719, 256);
            this.decodeButton.Name = "decodeButton";
            this.decodeButton.Size = new System.Drawing.Size(49, 29);
            this.decodeButton.TabIndex = 4;
            this.decodeButton.Text = ">>";
            this.decodeButton.UseVisualStyleBackColor = true;
            this.decodeButton.Click += new System.EventHandler(this.decodeButton_Click);
            // 
            // resetButton
            // 
            this.resetButton.Location = new System.Drawing.Point(774, 506);
            this.resetButton.Name = "resetButton";
            this.resetButton.Size = new System.Drawing.Size(320, 23);
            this.resetButton.TabIndex = 5;
            this.resetButton.Text = "Reset";
            this.resetButton.UseVisualStyleBackColor = true;
            this.resetButton.Click += new System.EventHandler(this.resetButton_Click);
            // 
            // inputTextLabel
            // 
            this.inputTextLabel.AutoSize = true;
            this.inputTextLabel.Location = new System.Drawing.Point(12, 10);
            this.inputTextLabel.Name = "inputTextLabel";
            this.inputTextLabel.Size = new System.Drawing.Size(78, 13);
            this.inputTextLabel.TabIndex = 6;
            this.inputTextLabel.Text = "Input text: <...>";
            // 
            // encodedTextLabel
            // 
            this.encodedTextLabel.AutoSize = true;
            this.encodedTextLabel.Location = new System.Drawing.Point(390, 10);
            this.encodedTextLabel.Name = "encodedTextLabel";
            this.encodedTextLabel.Size = new System.Drawing.Size(97, 13);
            this.encodedTextLabel.TabIndex = 7;
            this.encodedTextLabel.Text = "Encoded text: <...>";
            // 
            // decodedTextLabel
            // 
            this.decodedTextLabel.AutoSize = true;
            this.decodedTextLabel.Location = new System.Drawing.Point(771, 10);
            this.decodedTextLabel.Name = "decodedTextLabel";
            this.decodedTextLabel.Size = new System.Drawing.Size(98, 13);
            this.decodedTextLabel.TabIndex = 8;
            this.decodedTextLabel.Text = "Decoded text: <...>";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AllowUserToResizeRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column3,
            this.Column2});
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dataGridView1.DefaultCellStyle = dataGridViewCellStyle1;
            this.dataGridView1.Location = new System.Drawing.Point(393, 256);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersVisible = false;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(320, 273);
            this.dataGridView1.TabIndex = 9;
            // 
            // Column1
            // 
            this.Column1.FillWeight = 15F;
            this.Column1.HeaderText = "Sym";
            this.Column1.Name = "Column1";
            // 
            // Column3
            // 
            this.Column3.FillWeight = 40F;
            this.Column3.HeaderText = "Code";
            this.Column3.Name = "Column3";
            // 
            // Column2
            // 
            this.Column2.FillWeight = 45F;
            this.Column2.HeaderText = "Frequency";
            this.Column2.Name = "Column2";
            // 
            // inputTextBox
            // 
            this.inputTextBox.Location = new System.Drawing.Point(12, 26);
            this.inputTextBox.Multiline = true;
            this.inputTextBox.Name = "inputTextBox";
            this.inputTextBox.ReadOnly = true;
            this.inputTextBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.inputTextBox.Size = new System.Drawing.Size(320, 503);
            this.inputTextBox.TabIndex = 10;
            // 
            // encodedTextBox
            // 
            this.encodedTextBox.Location = new System.Drawing.Point(393, 26);
            this.encodedTextBox.MaxLength = 0;
            this.encodedTextBox.Multiline = true;
            this.encodedTextBox.Name = "encodedTextBox";
            this.encodedTextBox.ReadOnly = true;
            this.encodedTextBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.encodedTextBox.Size = new System.Drawing.Size(320, 224);
            this.encodedTextBox.TabIndex = 11;
            // 
            // decodedTextBox
            // 
            this.decodedTextBox.Location = new System.Drawing.Point(774, 26);
            this.decodedTextBox.Multiline = true;
            this.decodedTextBox.Name = "decodedTextBox";
            this.decodedTextBox.ReadOnly = true;
            this.decodedTextBox.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.decodedTextBox.Size = new System.Drawing.Size(320, 474);
            this.decodedTextBox.TabIndex = 12;
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1108, 543);
            this.Controls.Add(this.decodedTextBox);
            this.Controls.Add(this.encodedTextBox);
            this.Controls.Add(this.inputTextBox);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.decodedTextLabel);
            this.Controls.Add(this.encodedTextLabel);
            this.Controls.Add(this.inputTextLabel);
            this.Controls.Add(this.resetButton);
            this.Controls.Add(this.decodeButton);
            this.Controls.Add(this.encodeButton);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "MainForm";
            this.ShowIcon = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Lab3";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button encodeButton;
        private System.Windows.Forms.Button decodeButton;
        private System.Windows.Forms.Button resetButton;
        private System.Windows.Forms.Label inputTextLabel;
        private System.Windows.Forms.Label encodedTextLabel;
        private System.Windows.Forms.Label decodedTextLabel;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.TextBox inputTextBox;
        private System.Windows.Forms.TextBox encodedTextBox;
        private System.Windows.Forms.TextBox decodedTextBox;
    }
}

