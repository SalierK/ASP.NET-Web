using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2012903044_Kursat_Kilitci.UserControl
{
    public partial class Menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"] != null)
            {
                if (Session["yetki"].ToString() == "1")
                {
                    HyperLink6.Visible = true;
                }
                
            }
           
        }
    }
}