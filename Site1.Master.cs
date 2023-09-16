using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginExercise
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = Path.GetFileName(Request.Url.AbsolutePath);

            if (currentPage.Equals("MainPage.aspx"))
            {
                nav1.Attributes["class"] = "nav-link active";
            }
            else if (currentPage.Equals("Profile.aspx"))
            {
                nav2.Attributes["class"] = "nav-link active";
            }
            // Add more conditions for other nav items

            // Remove active class from other nav items
            if (!currentPage.Equals("WebForm1.aspx"))
            {
                nav1.Attributes["class"] = "nav-link";
            }
            if (!currentPage.Equals("WebForm2.aspx"))
            {
                nav2.Attributes["class"] = "nav-link";
            }
            // Remove active class from other nav items
        }
        protected void tab1_Load(object sender, EventArgs e)
        {

        }


    }
}
