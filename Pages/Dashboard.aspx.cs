using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginExercise.Pages
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int PersonID = (int)Session["ID"];
            using (TestEntities db = new TestEntities())
            {
                var user = db.Users.FirstOrDefault(usr => usr.Personid == PersonID);

                name.InnerText = user.Firstname;
                about.InnerText = user.About_Me;
                info.InnerText = user.City;
                fullname.InnerText = user.Firstname + " " + user.Lastname;
                phone.InnerText = user.Postal_Code;
                adress.InnerText = user.Address;
                email.InnerText = user.Email;
                if (File.Exists("C:\\Users\\parvini\\Desktop\\LoginExercise\\ProfilePictures\\35.png" + PersonID.ToString() + ".png")){
                    img.ImageUrl = "~/ProfilePictures/" + PersonID.ToString() + ".png";
                }
            }
        }
    }
}