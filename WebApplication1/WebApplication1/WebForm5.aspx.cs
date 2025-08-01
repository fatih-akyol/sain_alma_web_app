using System;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Gerekirse buraya kod ekleyebilirsiniz
        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            string kullanici = txtAdSoyad.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["SatinalmaConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "SELECT COUNT(*) FROM Yetkililer WHERE AdSoyad = @AdSoyad AND Sifre = @Sifre";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@AdSoyad", kullanici);
                cmd.Parameters.AddWithValue("@Sifre", sifre);

                try
                {
                    conn.Open();
                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        Response.Redirect("WebForm1.aspx");
                    }
                    else
                    {
                        // Kullanıcı adı veya şifre hatalıysa uyarı ver
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Hatalı kullanıcı adı veya şifre.');", true);
                    }
                }
                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Veritabanı hatası: {ex.Message}');", true);
                }
            }
        }
    }
}
