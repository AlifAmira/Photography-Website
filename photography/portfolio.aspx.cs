using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace photography
{
    public partial class portfolio : System.Web.UI.Page
    {
        int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadImages();
        }

        private void LoadImages()
        {
            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/uploads")))
            {
                
                ImageButton imageButton = new ImageButton();
                FileInfo fi = new FileInfo(strfile);
                imageButton.ImageUrl = "~/uploads/" + fi.Name;
                imageButton.Height = Unit.Pixel(175);
                imageButton.Style.Add("padding", "20px");
                imageButton.Width = Unit.Pixel(150);
                imageButton.Click += new ImageClickEventHandler(imageButton_Click);
                Panel1.Controls.Add(imageButton);
                i = i + 1;
                if(i>9)
                {
                    break;
                }
            }
        }

    protected void imageButton_Click(object sender, ImageClickEventArgs e)
    {
       Response.Redirect("ImageView.aspx?ImageURL="+((ImageButton)sender).ImageUrl);
       
    }
}
    }
