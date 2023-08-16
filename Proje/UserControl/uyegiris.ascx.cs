using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace _2012903044_Kursat_Kilitci.UserControl
{
    public partial class uyegiris : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"] != null)
            {
                MultiView1.ActiveViewIndex = 1;
                lbladsoyad.Text = Session["adSoyad"].ToString();

            }
            else 
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }


        protected void btnparolaunttum_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnkapat_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            txtad.Text = "";
            txtparola.Text = "";
            MultiView1.ActiveViewIndex = 0;

            Response.Redirect("Default.aspx");

        }

        protected void btnuye_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = "0";
            Response.Redirect("UyeDetay.aspx");

        }

        protected void btnuyelikbilgi_Click(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = Session["Uyeno"];
            Response.Redirect("UyeDetay.aspx");
        }


        protected void btngiris_Click(object sender, EventArgs e)
        {

            DataTable dt = veritabani.verigetir("select * from kullanici where silindi = false and KullaniciAdi = '" + txtad.Text + "'");
            if (dt.Rows.Count == 0)
            {
                txtad.Text = "";
                txtparola.Text = "";
            }
            else
            {

                if (txtparola.Text == dt.Rows[0]["parola"].ToString())
                {
                    Session["Uyeno"] = dt.Rows[0]["Uyeno"];
                    Session["adsoyad"] = dt.Rows[0]["Adi"].ToString() + " " + dt.Rows[0]["Soyadi"].ToString();
                    Session["yetki"] = dt.Rows[0]["yetki"];
                    MultiView1.ActiveViewIndex = 1;
                    lbladsoyad.Text = Session["adsoyad"].ToString();

                    Response.Redirect("Default.aspx");



                }
                else
                {
                    txtad.Text = "";
                    txtparola.Text = "";
                }
            }
        }
    }

}