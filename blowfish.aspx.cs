using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using BlowFishCS;
using System.Text;

namespace CryptoCalc
{
    
    public partial class WebForm3 : System.Web.UI.Page
    {
        public string key;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void enc_click(object sender, EventArgs e)
        {
            BlowFish b = new BlowFish(pkey.Text);
            string ptext = msg.Text;
            string encText = b.Encrypt_CBC(ptext);
            cipher.Text = encText;
            string plainText = b.Decrypt_CBC(encText);
            decrypt.Text = plainText;
        }
    }
}