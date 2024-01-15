namespace HospitalManagementSystem
{
    partial class MainForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            label1 = new Label();
            txtName = new TextBox();
            txtAddress = new TextBox();
            txtPhoneNumber = new TextBox();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            btnAddPatient = new Button();
            buttonEditPatient = new Button();
            buttonDeletePatient = new Button();
            dataGridView1 = new DataGridView();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(35, 64);
            label1.Name = "label1";
            label1.Size = new Size(136, 20);
            label1.TabIndex = 0;
            label1.Text = "Patient Information";
            // 
            // txtName
            // 
            txtName.Location = new Point(169, 109);
            txtName.Name = "txtName";
            txtName.Size = new Size(125, 27);
            txtName.TabIndex = 1;
            // 
            // txtAddress
            // 
            txtAddress.Location = new Point(169, 165);
            txtAddress.Name = "txtAddress";
            txtAddress.Size = new Size(125, 27);
            txtAddress.TabIndex = 2;
            // 
            // txtPhoneNumber
            // 
            txtPhoneNumber.Location = new Point(169, 223);
            txtPhoneNumber.Name = "txtPhoneNumber";
            txtPhoneNumber.Size = new Size(125, 27);
            txtPhoneNumber.TabIndex = 3;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(35, 109);
            label2.Name = "label2";
            label2.Size = new Size(49, 20);
            label2.TabIndex = 4;
            label2.Text = "Name";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(35, 165);
            label3.Name = "label3";
            label3.Size = new Size(62, 20);
            label3.TabIndex = 5;
            label3.Text = "Address";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(35, 223);
            label4.Name = "label4";
            label4.Size = new Size(104, 20);
            label4.TabIndex = 6;
            label4.Text = "PhoneNumber";
            // 
            // btnAddPatient
            // 
            btnAddPatient.Location = new Point(338, 223);
            btnAddPatient.Name = "btnAddPatient";
            btnAddPatient.Size = new Size(94, 29);
            btnAddPatient.TabIndex = 7;
            btnAddPatient.Text = "Add Patient";
            btnAddPatient.UseVisualStyleBackColor = true;
            btnAddPatient.Click += btnAddPatient_Click;
            // 
            // buttonEditPatient
            // 
            buttonEditPatient.Location = new Point(454, 222);
            buttonEditPatient.Name = "buttonEditPatient";
            buttonEditPatient.Size = new Size(94, 29);
            buttonEditPatient.TabIndex = 9;
            buttonEditPatient.Text = "Edit Patient";
            buttonEditPatient.UseVisualStyleBackColor = true;
            buttonEditPatient.Click += buttonEditPatient_Click;
            // 
            // buttonDeletePatient
            // 
            buttonDeletePatient.Location = new Point(576, 223);
            buttonDeletePatient.Name = "buttonDeletePatient";
            buttonDeletePatient.Size = new Size(126, 29);
            buttonDeletePatient.TabIndex = 10;
            buttonDeletePatient.Text = "Delete Patient";
            buttonDeletePatient.UseVisualStyleBackColor = true;
            buttonDeletePatient.Click += buttonDeletePatient_Click;
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(35, 294);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 51;
            dataGridView1.Size = new Size(630, 103);
            dataGridView1.TabIndex = 11;
            // 
            // MainForm
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(dataGridView1);
            Controls.Add(buttonDeletePatient);
            Controls.Add(buttonEditPatient);
            Controls.Add(btnAddPatient);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(txtPhoneNumber);
            Controls.Add(txtAddress);
            Controls.Add(txtName);
            Controls.Add(label1);
            Name = "MainForm";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private TextBox txtName;
        private TextBox txtAddress;
        private TextBox txtPhoneNumber;
        private Label label2;
        private Label label3;
        private Label label4;
        private Button btnAddPatient;
        private Button buttonEditPatient;
        private Button buttonDeletePatient;
        private DataGridView dataGridView1;
    }
}
