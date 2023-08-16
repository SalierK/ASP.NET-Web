using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace _2012903044_Kursat_Kilitci
{
    public partial class Yorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblguvenlik.Text = KodUret();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            DateTime dttt = DateTime.Now;
            if (txtguvenlik.Text==lblguvenlik.Text)
            {
                OleDbCommand cmd = veritabani.KomutOlustur("insert into yorum (konu, yorum, yorumTarihi)" +
                          "values(@konu ,@yorum, @yorumTarihi)");


                cmd.Parameters.AddWithValue("@konu", txtkonu.Text);
                cmd.Parameters.AddWithValue("@yorum", txtmesaj.Text);
                cmd.Parameters.AddWithValue("@yorum", dttt.ToLocalTime().ToString());
                veritabani.komutcalistir(cmd);

                lblbildiri.Text = "Mesajınızı Başarıyla İletildi";
            }
            else
            {
                lblbildiri.Text = "Güvenlik Sorusunda Hata Var";
            }
        }
        string KodUret()
        {
            Random r = new Random();
            return r.Next(10000, 99999).ToString();
        }

    }
}