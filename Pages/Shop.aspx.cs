using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
                        ShopGridView.DataSource = db.Shop.ToList();
                        ShopGridView.DataBind();

                    }
                }
            }
            catch (System.Exception) { }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddProductPopUp.Show();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            using (TestEntities db = new TestEntities())
            {
                var product = new Shop();
                product.Name = TextBox1.ToString();
                product.Price = TextBox2.ToString();
                
            }
        }
    }
}