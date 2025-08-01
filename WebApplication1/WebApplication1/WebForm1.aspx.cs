using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["SatirSayisi"] = 15;
            }

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            string connString = System.Configuration.ConfigurationManager.ConnectionStrings["SatinalmaConnectionString"].ConnectionString;

            try
            {
                using (System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(connString))
                {
                    conn.Open();

                    DateTime tarih = DateTime.Parse(txtTarih.Text);
                    string istekYapan = txtIstekteYapan.Text;
                    string satinAlmaNo = txtSatinAlmaNo.Text;
                    string istekYapanBolum = txtIstekteBulunan.Text;
                    string bolumMuduru = txtBolumMuduru.Text;

                    int satirSayisi = ViewState["SatirSayisi"] != null ? (int)ViewState["SatirSayisi"] : 15;

                    for (int i = 1; i <= satirSayisi; i++)
                    {
                        // Buradaki ID'leri senin sayfanda kullandığın ID'lere göre değiştir.
                        TextBox txtMalzeme = (TextBox)form1.FindControl("TextBox1_" + i);
                        TextBox txtKg = (TextBox)form1.FindControl("TextBox2_" + i);
                        TextBox txtAdet = (TextBox)form1.FindControl("TextBox3_" + i);
                        TextBox txtUrunKodu = (TextBox)form1.FindControl("TextBox4_" + i);
                        TextBox txtAciklama = (TextBox)form1.FindControl("TextBox5_" + i);

                        if (txtMalzeme != null && !string.IsNullOrWhiteSpace(txtMalzeme.Text))
                        {
                            string malzemeKisaMetni = txtMalzeme.Text;
                            float kg = float.TryParse(txtKg.Text, out float parsedKg) ? parsedKg : 0;
                            int adet = int.TryParse(txtAdet.Text, out int parsedAdet) ? parsedAdet : 0;
                            string urunKodu = txtUrunKodu != null ? txtUrunKodu.Text : string.Empty;
                            string aciklama = txtAciklama != null ? txtAciklama.Text : string.Empty;

                            string sql = @"INSERT INTO satinalma 
                        (tarih, istek_yapan, satin_alma_no, malzeme_kisa_metni, kg, adet, [urun _kodu], aciklama, istek_yapan_bolum, bolum_muduru)
                        VALUES 
                        (@tarih, @istek_yapan, @satin_alma_no, @malzeme_kisa_metni, @kg, @adet, @urun_kodu, @aciklama, @istek_yapan_bolum, @bolum_muduru)";

                            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn))
                            {
                                cmd.Parameters.AddWithValue("@tarih", tarih);
                                cmd.Parameters.AddWithValue("@istek_yapan", istekYapan);
                                cmd.Parameters.AddWithValue("@satin_alma_no", satinAlmaNo);
                                cmd.Parameters.AddWithValue("@malzeme_kisa_metni", malzemeKisaMetni);
                                cmd.Parameters.AddWithValue("@kg", kg);
                                cmd.Parameters.AddWithValue("@adet", adet);
                                cmd.Parameters.AddWithValue("@urun_kodu", urunKodu);
                                cmd.Parameters.AddWithValue("@aciklama", aciklama);
                                cmd.Parameters.AddWithValue("@istek_yapan_bolum", istekYapanBolum);
                                cmd.Parameters.AddWithValue("@bolum_muduru", bolumMuduru);

                                cmd.ExecuteNonQuery();
                            }
                        }
                    }
                }

                Response.Write("<script>alert('Tüm geçerli satırlar kaydedildi.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Hata: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        }


        protected void btnListele_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm2.aspx");
        }
        protected void btnSatirEkle_Click(object sender, EventArgs e)
        {
            int currentCount = ViewState["SatirSayisi"] != null ? (int)ViewState["SatirSayisi"] : 15;
            currentCount += 5; // 5 satır daha ekle
            ViewState["SatirSayisi"] = currentCount;
        }

    }
}