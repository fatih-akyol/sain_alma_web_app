using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlYetkilendirme.Visible = false;
            }
        }

        protected void btnYetkilendirmePaneli_Click(object sender, EventArgs e)
        {
            pnlYetkilendirme.Visible = true;
        }

        protected void btnYetkiliEkle_Click(object sender, EventArgs e)
        {
            string adSoyad = txtAdSoyad.Text.Trim();
            string sifre = txtYetkiliSifre.Text.Trim();

            string connStr = ConfigurationManager.ConnectionStrings["SatinalmaConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                string query = "INSERT INTO Yetkililer (AdSoyad, Sifre) VALUES (@AdSoyad, @Sifre)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@AdSoyad", adSoyad);
                cmd.Parameters.AddWithValue("@Sifre", sifre);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Yetkili başarıyla eklendi: " + adSoyad + "');</script>");

                    txtAdSoyad.Text = "";
                    txtYetkiliSifre.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Hata oluştu: " + ex.Message + "');</script>");
                }
            }
        }

        protected void btnGirisYap_Click(object sender, EventArgs e)
        {
            string kullanici = txtKullaniciAdi.Text.Trim();
            string sifre = txtSifre.Text.Trim();

            // Admin kontrolü (sabit değerlerle)
            if (kullanici.Equals("emin", StringComparison.OrdinalIgnoreCase) && sifre == "123")
            {
                Response.Redirect("WebForm1.aspx");
                return;
            }

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
                        Response.Write("<script>alert('Hatalı kullanıcı adı veya şifre');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Veritabanı hatası: " + ex.Message + "');</script>");
                }
            }
        }


        protected void btnYetkiliGiris_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }
    }
}
