using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.Threading;

namespace LoginExercise
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            using (SHA256 sha256 = SHA256.Create())
            {


                // Store the hashed password in your database or wherever you need to.

                if (IsValid && Email_Checker(emailtxt.Text))
                {

                    EmailChecker.Visible = false;


                    using (TestEntities db = new TestEntities())
                    {
                        var user = new Users();
                        user.Firstname = fnametxt.Text;
                        user.Lastname = lnametxt.Text;
                        user.Email = emailtxt.Text;
                        byte[] passwordBytes = Encoding.UTF8.GetBytes(passwordtxt.Text);
                        byte[] hashedBytes = sha256.ComputeHash(passwordBytes);
                        string hashedPassword = Convert.ToBase64String(hashedBytes);
                        user.Password = hashedPassword;
                        user.Accesslevel = 2;
                        db.Users.Add(user);
                        db.SaveChanges();
                        //success.Visible = true;
                   
                        Thread.Sleep(2000);
                        Response.Redirect("Login.aspx");
                    }
                }
                else if (!Email_Checker(emailtxt.Text))
                {
                    EmailChecker.Visible = true;
                }
            }

            //using (TestEntities1 db = new TestEntities1())
            //{
            //    var user = new User();
            //    user.Firstname = ;
            //    user.Lastname = "ahmadi";
            //    user.Password = "Zaq1";
            //    user.Email = "ahmad@gmail.com";
            //    db.Users.Add(user);
            //    db.SaveChanges();

            //    //var user = db.Users.Find(1);
            //    //user.Firstname = "ali";
            //    //db.SaveChanges();

            //    db.Users.Remove(user);
            //    db.SaveChanges();


            //}

        }
        private bool Email_Checker(String email)
        {

            using (TestEntities db = new TestEntities())
            {
                int finder = 0;
                finder = db.Users.Count(em => em.Email == email);
                if (finder < 1)
                {
                    return true;
                }
            }
            return false;
        }
    }
}


