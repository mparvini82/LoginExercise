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
    }
}