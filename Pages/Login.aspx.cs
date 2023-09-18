using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginExercise
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {

                var user = db.Users.FirstOrDefault(usr => usr.Email == emailtxt.Text);
                if (user != null)
                {
                    string hashedpassword = user.Password;
                    if (hashedpassword == Password_Hasher(passwordtxt.Text))
                    {
                        Session["ID"] = user.Personid;
                        Response.Redirect("Dashboard.aspx");

                    }
                    else
                    {
                        Error.Visible = true;
                    }
                }
                else
                {
                    Error.Visible = true;
                }


            }
        }
        private string Password_Hasher(string input)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] passwordBytes = Encoding.UTF8.GetBytes(input);
                byte[] hashedBytes = sha256.ComputeHash(passwordBytes);
                string hashedPassword = Convert.ToBase64String(hashedBytes);
                return hashedPassword;

            }
        }
    }
}