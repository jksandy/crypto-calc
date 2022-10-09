using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using RC4Cryptography;

namespace CryptoCalc
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string encar;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enc_click(object sender, EventArgs e)
        {
            string phrase = msg.Text;

            //  And we wanted to encrypt it, using the phrase "Keep it secret. Keep it safe."
            string key_phrase = pkey.Text;

            if (phrase != "" && key_phrase != "")
            {
                //  First, let's get the byte data of the phrase
                byte[] data = Encoding.UTF8.GetBytes(phrase);

                //  Next, let's get the byte data of the key phrase
                byte[] key = Encoding.UTF8.GetBytes(key_phrase);

                byte[] encrypted_data = RC4.Apply(data, key);

                cipher.Text = BitConverter.ToString(encrypted_data);
                encar = BitConverter.ToString(encrypted_data);

                byte[] decrypted_data = RC4.Apply(encrypted_data, key);

                string decrypted_phrase = Encoding.UTF8.GetString(decrypted_data);
                decrypt.Text = decrypted_phrase;

            }
        }


    }

}