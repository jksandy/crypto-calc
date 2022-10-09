using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CryptoCalc
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Tomd5_Click(object sender, EventArgs e)
        {
            Response.Redirect("/md5");
        }
        protected void Toblow_Click(object sender, EventArgs e)
        {
            Response.Redirect("/blowfish");
        }
        protected void Torc4_Click(object sender, EventArgs e)
        {
            Response.Redirect("/rc4");
        }
    }
}