using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2012903044_Kursat_Kilitci
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["DetayUyeNo"] = grid.SelectedValue;
            Response.Redirect("UyeDetay.aspx");
        }
    }
}