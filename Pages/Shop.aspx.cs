using LoginExercise.model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Net.Http;

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
        public static async Task<string> GetFirstImageFromURL(string url)
        {
            try
            {
                var httpClient = new HttpClient();
                var html = await httpClient.GetStringAsync(url);

                var regex = new Regex("<img.+?src=[\"'](.+?)[\"'].*?>", RegexOptions.IgnoreCase);
                var match = regex.Match(html);

                if (match.Success)
                {
                    return match.Groups[1].Value;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"An error occurred: {ex.Message}");
            }

            return string.Empty;
        }
    }
}