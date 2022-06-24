
namespace İstakip
{
    partial class tcpconnection
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
            this.label4 = new System.Windows.Forms.Label();
            this.serverrtb = new System.Windows.Forms.RichTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.serverBaglanbtn = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.porttxt = new System.Windows.Forms.TextBox();
            this.ipadrestxt = new System.Windows.Forms.TextBox();
            this.button1 = new System.Windows.Forms.Button();
            this.denemeRtb = new System.Windows.Forms.RichTextBox();
            this.tcpconnectionpanel = new System.Windows.Forms.Panel();
            this.tcpconnectionpanel.SuspendLayout();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(38, 217);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(99, 20);
            this.label4.TabIndex = 24;
            this.label4.Text = "Server Durum";
            // 
            // serverrtb
            // 
            this.serverrtb.Location = new System.Drawing.Point(38, 243);
            this.serverrtb.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.serverrtb.Name = "serverrtb";
            this.serverrtb.Size = new System.Drawing.Size(247, 127);
            this.serverrtb.TabIndex = 23;
            this.serverrtb.Text = "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(530, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 20);
            this.label3.TabIndex = 22;
            this.label3.Text = "Bildirimler ";
            // 
            // serverBaglanbtn
            // 
            this.serverBaglanbtn.BackColor = System.Drawing.Color.Lime;
            this.serverBaglanbtn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.serverBaglanbtn.Location = new System.Drawing.Point(38, 135);
            this.serverBaglanbtn.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.serverBaglanbtn.Name = "serverBaglanbtn";
            this.serverBaglanbtn.Size = new System.Drawing.Size(248, 47);
            this.serverBaglanbtn.TabIndex = 20;
            this.serverBaglanbtn.Text = "Server Bağlan";
            this.serverBaglanbtn.UseVisualStyleBackColor = false;
            this.serverBaglanbtn.Click += new System.EventHandler(this.serverBaglanbtn_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(171, 42);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(105, 20);
            this.label2.TabIndex = 19;
            this.label2.Text = "Port Numarası:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(38, 42);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(71, 20);
            this.label1.TabIndex = 18;
            this.label1.Text = "Ip Adresi:";
            // 
            // porttxt
            // 
            this.porttxt.Location = new System.Drawing.Point(171, 70);
            this.porttxt.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.porttxt.Name = "porttxt";
            this.porttxt.Size = new System.Drawing.Size(114, 27);
            this.porttxt.TabIndex = 17;
            // 
            // ipadrestxt
            // 
            this.ipadrestxt.Location = new System.Drawing.Point(38, 70);
            this.ipadrestxt.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.ipadrestxt.Name = "ipadrestxt";
            this.ipadrestxt.Size = new System.Drawing.Size(114, 27);
            this.ipadrestxt.TabIndex = 16;
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.Red;
            this.button1.Location = new System.Drawing.Point(690, 3);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(29, 29);
            this.button1.TabIndex = 25;
            this.button1.Text = "X";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // denemeRtb
            // 
            this.denemeRtb.Location = new System.Drawing.Point(530, 38);
            this.denemeRtb.Name = "denemeRtb";
            this.denemeRtb.Size = new System.Drawing.Size(170, 300);
            this.denemeRtb.TabIndex = 27;
            this.denemeRtb.Text = "";
            // 
            // tcpconnectionpanel
            // 
            this.tcpconnectionpanel.Controls.Add(this.button1);
            this.tcpconnectionpanel.Controls.Add(this.label4);
            this.tcpconnectionpanel.Controls.Add(this.denemeRtb);
            this.tcpconnectionpanel.Controls.Add(this.serverrtb);
            this.tcpconnectionpanel.Controls.Add(this.serverBaglanbtn);
            this.tcpconnectionpanel.Controls.Add(this.label3);
            this.tcpconnectionpanel.Controls.Add(this.label2);
            this.tcpconnectionpanel.Controls.Add(this.ipadrestxt);
            this.tcpconnectionpanel.Controls.Add(this.label1);
            this.tcpconnectionpanel.Controls.Add(this.porttxt);
            this.tcpconnectionpanel.Location = new System.Drawing.Point(12, 12);
            this.tcpconnectionpanel.Name = "tcpconnectionpanel";
            this.tcpconnectionpanel.Size = new System.Drawing.Size(722, 426);
            this.tcpconnectionpanel.TabIndex = 28;
            this.tcpconnectionpanel.MouseDown += new System.Windows.Forms.MouseEventHandler(this.tcpconnectionpanel_MouseDown);
            this.tcpconnectionpanel.MouseMove += new System.Windows.Forms.MouseEventHandler(this.tcpconnectionpanel_MouseMove);
            this.tcpconnectionpanel.MouseUp += new System.Windows.Forms.MouseEventHandler(this.tcpconnectionpanel_MouseUp);
            // 
            // tcpconnection
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(749, 450);
            this.Controls.Add(this.tcpconnectionpanel);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "tcpconnection";
            this.Text = "tcpconnection";
            this.Load += new System.EventHandler(this.tcpconnection_Load);
            this.tcpconnectionpanel.ResumeLayout(false);
            this.tcpconnectionpanel.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.RichTextBox serverrtb;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button serverBaglanbtn;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox porttxt;
        private System.Windows.Forms.TextBox ipadrestxt;
        private System.Windows.Forms.Button button1;
        public  System.Windows.Forms.RichTextBox denemeRtb;
        private System.Windows.Forms.Panel tcpconnectionpanel;
    }
}