using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginExercise
{
    public partial class UsersTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void MakeAdminButton_Command(object sender, CommandEventArgs e)
        {
            int PersonID = int.Parse(e.CommandArgument as string);
            using (TestEntities db = new TestEntities())
            {

                var user = db.Users.FirstOrDefault(usr => usr.Personid == PersonID);
                user.Accesslevel = 1;
                db.SaveChanges();
            }
        }
    }
}