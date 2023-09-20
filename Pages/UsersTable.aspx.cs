using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginExercise.Pages
{
    public partial class UsersTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                if (!IsPostBack)
                {
                    GridView1.DataSource = db.Users.ToList();
                    GridView1.DataBind();
                }
            }
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
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);

                    var cat = db.Users.Find(id);
                    db.Users.Remove(cat);
                    db.SaveChanges();
                    GridView1.DataSource = db.Users.ToList();
                    GridView1.DataBind();
              
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                using (SHA256 sha256 = SHA256.Create())
                {
                    GridViewRow row = GridView1.Rows[e.RowIndex];
                    int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                    string updatedName = e.NewValues["Firstname"].ToString();
                    string updatedlName = e.NewValues["Lastname"].ToString();
                    string email = e.NewValues["Email"].ToString();
                    byte[] passwordBytes = Encoding.UTF8.GetBytes(e.NewValues["Password"].ToString());
                    byte[] hashedBytes = sha256.ComputeHash(passwordBytes);
                    string hashedPassword = Convert.ToBase64String(hashedBytes);
                    var cat = db.Users.Find(ID);
                    cat.Firstname = updatedName;
                    cat.Lastname = updatedlName;
                    cat.Password = hashedPassword;
                    cat.Email = email;
                    db.SaveChanges();
                    GridView1.DataSource = db.Users.ToList();
                    GridView1.EditIndex = -1;
                    GridView1.DataBind();
                }

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                GridView1.DataSource = db.Users.ToList();
                GridView1.EditIndex = e.NewEditIndex;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                GridView1.DataSource = db.Users.ToList();
                GridView1.EditIndex = -1;
                GridView1.DataBind();
            }

        }
    }
}