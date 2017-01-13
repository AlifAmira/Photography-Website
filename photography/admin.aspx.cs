using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace photography
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
            Page.ClientScript.RegisterStartupScript(this.GetType(),"Scripts","<script>alert('Upload Successfull');</script>");
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            

        }
    }
}