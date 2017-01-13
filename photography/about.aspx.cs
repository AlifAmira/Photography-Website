using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace photography
{
    public partial class about : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MAHADE\\SQLEXPRESS;Initial Catalog=photography;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string ImgURL = "uploads/pp/pp_1.jpg";
            Image1.ImageUrl =ImgURL;
        }
    }
}