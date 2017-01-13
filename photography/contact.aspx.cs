using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace photography
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["photographyConnectionString"].ConnectionString);
                con.Open();

                string query = "INSERT INTO contact_me_now(Name, Email, Msg) values(@name, @email, @msg)";
                SqlCommand com = new SqlCommand(query, con);

                com.Parameters.AddWithValue("name", TextBox1.Text);
                com.Parameters.AddWithValue("email", TextBox2.Text);
                com.Parameters.AddWithValue("msg", TextBox3.Text);
                com.ExecuteNonQuery();
                Response.Redirect("home.aspx");
                Response.Write("Your Message is Sent");
                

                con.Close();

                
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            
        }
      
    }
   }
