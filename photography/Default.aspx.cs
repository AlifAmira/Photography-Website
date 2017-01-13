using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace photography
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=MAHADE\\SQLEXPRESS;Initial Catalog=photography;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter("select *from contact_me_now", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource=dt;
            DataBind();
            con.Close();

           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                 string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//uploads//" + str);
            string path = "~//uploads//" + str.ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into uploads values('" + TextBox1.Text + "','" + path + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Image Uploads Successfully";
        
            }
            else
            {
                Label1.Text = " Please upload you picture";
            }
        }
    }
}