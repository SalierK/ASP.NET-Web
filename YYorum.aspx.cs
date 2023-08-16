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
    public partial class YYorum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Tablo1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secsatir = Tablo1.SelectedIndex;
            GridViewRow satir = Tablo1.Rows[secsatir];
            DataTable dt = veritabani.verigetir(
                        "select * from yorum where yn =" + satir.Cells[0].Text.ToString());
            if (dt.Rows.Count > 0)
            {

                txtkonu.Text = dt.Rows[0]["konu"].ToString();
                txtmesaj.Text = dt.Rows[0]["yorum"].ToString();
                lbltarih.Text = dt.Rows[0]["yorumTarihi"].ToString();
                lblyn.Text = dt.Rows[0]["yn"].ToString();
            }

            MultiView1.ActiveViewIndex = 1;
        }

        protected void btngeri_Click1(object sender, EventArgs e)
        {
            Response.Redirect("YYorum.aspx");

        }

        protected void btnkaydet_Click1(object sender, EventArgs e)
        {
            OleDbCommand cmd = veritabani.KomutOlustur(
        "update yorum set  konu = @konu, yorum = @yorum where yn = @yn ");
            cmd.Parameters.AddWithValue("@konu", txtkonu.Text);
            cmd.Parameters.AddWithValue("@yorum", txtmesaj.Text);
            cmd.Parameters.AddWithValue("@yn", lblyn.Text);
            veritabani.komutcalistir(cmd);
            lbluyari.Text = "Başarıyla Güncelendi";
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnSil_Click(object sender, EventArgs e)
        {
            OleDbCommand cmd = veritabani.KomutOlustur(
              "delete from yorum where yn ="+lblyn.Text.ToString());
            veritabani.komutcalistir(cmd);
            Response.Redirect("YYorum.aspx");
        }
    }
}