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
    public partial class UyeDetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                uyedetaylblguvenlik.Text = KodUret();

              if(  Session["DetayUyeNo"] == null)

                {
                    btnbilgiguncelle.Visible = false;
                    uyedtaysil.Visible = false;
                }

              else if(Session["DetayUyeNo"].ToString()=="0")

                {
                    btnbilgiguncelle.Visible = false;
                    uyedtaysil.Visible = false;

                }

                else
               {
                    btnuyeekle.Visible = false;
                    DataTable dt = veritabani.verigetir(
                        "select * from kullanici where Uyeno =" + Session["DetayUyeNo"].ToString());
                    if (dt.Rows.Count > 0)
                    {
                        lbluyeno.Text = dt.Rows[0]["Uyeno"].ToString();
                        uyedetaytxtkullanici.Text = dt.Rows[0]["KullaniciAdi"].ToString();
                        uyedetaytxtparola.Text = dt.Rows[0]["parola"].ToString();
                        uyedetaytxtparolatekrar.Text = dt.Rows[0]["parola"].ToString();
                        uyedetaytxtadi.Text = dt.Rows[0]["Adi"].ToString();
                        uyedetaytxtsoyadi.Text = dt.Rows[0]["Soyadi"].ToString();
                        uyedetaytxteposta.Text = dt.Rows[0]["eposta"].ToString();
                        uyedetaydrpyetki.SelectedValue = dt.Rows[0]["yetki"].ToString();

                    }

               }

                if (Session["yetki"] == null)
                {
                    uyedetaydrpyetki.SelectedValue = "2";
                    uyedetaydrpyetki.Enabled = false;
                }

                else if (Session["yetki"].ToString() == "1")
                {

                }
                else
                {
                    uyedetaydrpyetki.Enabled = false;
                }

            }

        }
        protected void uyedtaysil_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = veritabani.KomutOlustur("update kullanici set silindi = true where Uyeno = @Uyeno");
            cmd.Parameters.AddWithValue("@UyeNo", lbluyeno.Text);
            veritabani.komutcalistir(cmd);
            uyedetaylbluyari.Text = "Kullanıcı başarıyla silinmiştir";
            btnuyeekle.Enabled = false;
            btnbilgiguncelle.Enabled = false;
            uyedtaysil.Enabled = false;
        }


        protected void btnuyeekle_Click(object sender, EventArgs e)
        {
            if (uyedetaylblguvenlik.Text == uyedetaytxtsoru.Text) 
            {

                OleDbCommand cmd = veritabani.KomutOlustur(
                    "insert into kullanici (KullaniciAdi, parola, Adi, soyadi, eposta, yetki)" +
                                   "values(@KullaniciAdi, @parola, @Adi, @soyadi, @eposta, @yetki)");


                cmd.Parameters.AddWithValue("@KullaniciAdi", uyedetaytxtkullanici.Text);
                cmd.Parameters.AddWithValue("@parola", uyedetaytxtparola.Text);
                cmd.Parameters.AddWithValue("@Adi", uyedetaytxtadi.Text);
                cmd.Parameters.AddWithValue("@Soyadi", uyedetaytxtsoyadi.Text);
                cmd.Parameters.AddWithValue("@eposta", uyedetaytxteposta.Text);
                cmd.Parameters.AddWithValue("@yetki", uyedetaydrpyetki.Text);
                veritabani.komutcalistir(cmd);


                uyedetaylbluyari.Text = "Yeni Üyelik Başarı ile Yapıldı.";
            }

            else
            {
                uyedetaylbluyari.Text = "Güvenlik sorusu yanlış.";
            }
        }

        protected void btnanasayfadon_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = "0";
            Response.Redirect("Default.aspx");
        }

        protected void btnbilgiguncelle_Click(object sender, EventArgs e)
        {
            if (uyedetaylblguvenlik.Text == uyedetaytxtsoru.Text)
            {

                OleDbCommand cmd = veritabani.KomutOlustur(
                    "update kullanici set KullaniciAdi = @KullaniciAdi, parola = @parola, Adi = @Adi, Soyadi = @Soyadi, eposta = @eposta, yetki = @yetki where Uyeno = @Uyeno ");
                              

                cmd.Parameters.AddWithValue("@KullaniciAdi", uyedetaytxtkullanici.Text);
                cmd.Parameters.AddWithValue("@parola", uyedetaytxtparola.Text);
                cmd.Parameters.AddWithValue("@Adi", uyedetaytxtadi.Text);
                cmd.Parameters.AddWithValue("@Soyadi", uyedetaytxtsoyadi.Text);
                cmd.Parameters.AddWithValue("@eposta", uyedetaytxteposta.Text);
                cmd.Parameters.AddWithValue("@yetki", uyedetaydrpyetki.Text);
                cmd.Parameters.AddWithValue("@Uyeno", lbluyeno.Text);

                veritabani.komutcalistir(cmd);

                uyedetaylbluyari.Text = "Üyelik Bilgileri Başarı ile Güncellendi.";
            }

            else
            {
                uyedetaylbluyari.Text = "Güvenlik sorusu yanlış.";
            }

        }

        string KodUret()
        {
            Random r = new Random();
            return r.Next(10000, 99999).ToString();
        }
    }
}