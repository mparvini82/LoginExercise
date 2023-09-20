using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace LoginExercise
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (TestEntities db = new TestEntities())
                {
                    if (!IsPostBack)
                    {
                        BoxAddProduct.Visible = false;
                        ShopGridView.DataSource = db.Shop.ToList();
                        ShopGridView.DataBind();

                    }
                }
            }
            catch (System.Exception) { }
        }

        protected void close_button(object sender, EventArgs e)
        {
            BoxAddProduct.Visible = false;
        }

        protected void OpenAddProductBtn_Click(object sender, EventArgs e)
        {
            BoxAddProduct.Visible = true;
        }

        protected void AddProductBtn_Click(object sender, EventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                var product = new Shop();
                product.Name = TextBox1.Text;
                product.Rate = "";
                product.Price = int.Parse(TextBox2.Text);
                db.Shop.Add(product);
                db.SaveChanges();
                FileUploadImage.SaveAs(Server.MapPath("~/Images/" + product.ProductID + Path.GetExtension(FileUploadImage.FileName).ToLower()));
                BoxAddProduct.Visible = false;
                Response.Redirect("~/Pages/Shop.aspx");
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            BoxAddProduct.Visible = false;
        }
    }
}