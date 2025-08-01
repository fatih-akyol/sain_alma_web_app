using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace WebApplication1
{
    public partial class WebForm2 : Page
    {
        string conStr = ConfigurationManager.ConnectionStrings["SatinalmaConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridViewGetir(); // Sayfa ilk yüklendiğinde tüm verileri getir
            }
        }

        protected void GridViewGetir(string sapNo = "", string tarih = "", string urunKodu = "")
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;

                string query = "SELECT TOP 1000 [id], [tarih], [istek_yapan], [satin_alma_no], [malzeme_kisa_metni], [kg], [adet], [urun _kodu], [aciklama], [istek_yapan_bolum], [bolum_muduru] FROM [satinalma] WHERE 1=1";

                if (!string.IsNullOrEmpty(sapNo))
                {
                    query += " AND satin_alma_no LIKE @sapNo";
                    cmd.Parameters.AddWithValue("@sapNo", "%" + sapNo + "%");
                }

                if (!string.IsNullOrEmpty(tarih))
                {
                    query += " AND CONVERT(date, tarih, 104) = @tarih";
                    cmd.Parameters.AddWithValue("@tarih", DateTime.Parse(tarih).Date);
                }

                if (!string.IsNullOrEmpty(urunKodu))
                {
                    query += " AND [urun _kodu] LIKE @urunKodu";
                    cmd.Parameters.AddWithValue("@urunKodu", "%" + urunKodu + "%");
                }

                cmd.CommandText = query;

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();

                // Bilgileri etikete yaz
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];

                    lblIstekYapanValue.Text = row["istek_yapan"].ToString();
                    lblIstekBolumValue.Text = row["istek_yapan_bolum"].ToString();
                    lblBolumMuduruValue.Text = row["bolum_muduru"].ToString();
                    lblSatinAlmaValue.Text = row["satin_alma_no"].ToString();
                }
                else
                {
                    // Hiç veri yoksa label'ları temizle
                    lblIstekYapanValue.Text = "...";
                    lblIstekBolumValue.Text = "...";
                    lblBolumMuduruValue.Text = "...";
                    lblSatinAlmaValue.Text = "...";
                }
            }
        }

        protected void btnListele_Click(object sender, EventArgs e)
        {
            string sapNo = txtSapNo.Text.Trim();
            string tarih = txtTarih.Text.Trim();
            string urunKodu = txtUrunKodu.Text.Trim();

            GridViewGetir(sapNo, tarih, urunKodu);
        }

        protected void calendarTarih_SelectionChanged(object sender, EventArgs e)
        {
            txtTarih.Text = calendarTarih.SelectedDate.ToString("yyyy-MM-dd");
        }

        protected void btnAnaSayfa_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}
