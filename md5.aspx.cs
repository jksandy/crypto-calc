using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;


namespace CryptoCalc
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string check = "";
        protected void Page_Load(object sender, EventArgs e)
        {
    
        }

        protected void msg_TextChanged(object sender, EventArgs e)
        {
            string source = msg.Text;

            // Creates an instance of the default implementation of the MD5 hash algorithm.
            using (var md5Hash = MD5.Create())
            {
                // Byte array representation of source string
                var sourceBytes = Encoding.UTF8.GetBytes(source);

                // Generate hash value(Byte Array) for input data
                var hashBytes = md5Hash.ComputeHash(sourceBytes);

                // Convert hash byte array to string
                var hashv = BitConverter.ToString(hashBytes).Replace("-", string.Empty);

                hash.Text = hashv;
                check = BitConverter.ToString(Encoding.UTF8.GetBytes(msg.Text)).Replace("-", string.Empty) + "-" + hashv;
                msgphash.Text = check;
            }
        }

        protected void msgphash_TextChanged(object sender, EventArgs e)
        {
            string source = msg.Text;

            // Creates an instance of the default implementation of the MD5 hash algorithm.
            using (var md5Hash = MD5.Create())
            {
                // Byte array representation of source string
                var sourceBytes = Encoding.UTF8.GetBytes(source);

                // Generate hash value(Byte Array) for input data
                var hashBytes = md5Hash.ComputeHash(sourceBytes);

                // Convert hash byte array to string
                var hashv = BitConverter.ToString(hashBytes).Replace("-", string.Empty);

                check = BitConverter.ToString(Encoding.UTF8.GetBytes(msg.Text)).Replace("-", string.Empty) + "-" + hashv;

                if (check != msgphash.Text)
                {
                    sflag.Visible = false;
                    dflag.Visible = true;
                }
                else
                {
                    sflag.Visible = true;
                    dflag.Visible = false;
                }
            }
        }
    }
}