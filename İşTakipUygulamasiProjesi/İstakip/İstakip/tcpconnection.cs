using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using SimpleTCP;

namespace İstakip
{
    public partial class tcpconnection : Form
    {
        string personeladsoyad;
        public static bool moveStatus = false;
        public static Point moveForm = new Point (0, 0);

        
        public tcpconnection()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void tcpconnection_Load(object sender, EventArgs e)
        {
            İstakipform.server.DataReceived += Server_DataReceived;//gökay
        }

       

        private void Server_DataReceived(object sender, SimpleTCP.Message e)
        {
            denemeRtb.Invoke((MethodInvoker)delegate () {
                //denemeRtb.Text += BolumBitiriciForm.personelAdSoyad + " adlı personel " + BolumBitiriciForm.bolumId + " numaralı projenin " + BolumBitiriciForm.projeBolumAdi + " bölümünü " + BolumBitiriciForm.yuzdeDilimi + " 'lik kısmını tamamladı.\nAçıklama: " + BolumBitiriciForm.aciklama;

                denemeRtb.Text += e.MessageString + "\n";
                //gökay
                e.ReplyLine(string.Format("Server'a Giden Mesaj: {0}", e.MessageString)); //Karşılıklı mesaj gönderimi mavi tik mantığı geridönüş mesajı
                
            });
        }

        private void serverBaglanbtn_Click(object sender, EventArgs e)
        {
            try
            {
                serverBaglanbtn.Enabled = false;
                İstakipform.client.Connect(ipadrestxt.Text, Convert.ToInt32(porttxt.Text));
                serverrtb.Text += "Server Bağlantısı Gerçekleşti.\n";
            }
            catch
            {
                serverrtb.Text += "Server Bağlantısı Başarısız.\n";
                serverrtb.Enabled = true;
                serverBaglanbtn.Enabled = true;
            }
        }

        private void tcpconnectionpanel_MouseMove(object sender, MouseEventArgs e)
        {
            if (moveStatus == true)
            {
                this.Location = new Point(this.Location.X + (e.Location.X - moveForm.X), this.Location.Y + (e.Location.Y - moveForm.Y));
            }

        }
        private void tcpconnectionpanel_MouseDown(object sender, MouseEventArgs e)
        {
            moveStatus = true;
            moveForm = e.Location;

        }
        private void tcpconnectionpanel_MouseUp(object sender, MouseEventArgs e)
        {
            moveStatus = false;

        }
    }
}
