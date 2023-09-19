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
                string directoryPath = Server.MapPath("~/ProfilePictures/");
                string fileNamePattern = PersonID.ToString() + ".*";
                string[] matchingFiles = Directory.GetFiles(directoryPath, fileNamePattern);

                if (matchingFiles.Length > 0)
                {
                    string firstMatchingFile = matchingFiles[0]; // Assuming you want to use the first matching file
                    img.ImageUrl = "~/" + firstMatchingFile.Replace(Server.MapPath("~"), string.Empty);
                }
            }
        }
    }
}