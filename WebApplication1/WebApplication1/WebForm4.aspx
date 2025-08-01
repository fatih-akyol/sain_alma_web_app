<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Admin Girişi</title>
    <style>
        .container {
            width: 400px;
            margin: 0 auto;
            padding-top: 30px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label, input {
            display: block;
            width: 100%;
        }

        input[type="text"], input[type="password"] {
            padding: 8px;
            margin-top: 5px;
        }

        .form-button {
            margin-top: 10px;
            width: 100%;
            padding: 10px;
        }

        h2 {
            text-align: center;
        }

        .panel {
            margin-top: 20px;
            border: 1px solid #aaa;
            padding: 15px;
            display: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Admin Girişi Sayfası</h2>

            <div class="form-group">
                <asp:Label ID="lblKullaniciAdi" runat="server" Text="Admin Kullanıcı Adı:"></asp:Label>
                <asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblSifre" runat="server" Text="Admin Şifre:"></asp:Label>
                <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="btnGirisYap" runat="server" Text="Giriş Yap" CssClass="form-button" OnClick="btnGirisYap_Click" />

            <asp:Button ID="btnYetkilendirmePaneli" runat="server" Text="Yetkilendirme Panelini Aç" CssClass="form-button" OnClick="btnYetkilendirmePaneli_Click" />

            <asp:Panel ID="pnlYetkilendirme" runat="server" Visible="false">
                <div class="form-group">
                    <asp:Label ID="lblAdSoyad" runat="server" Text="Ad Soyad:"></asp:Label>
                    <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblYetkiliSifre" runat="server" Text="Şifre:"></asp:Label>
                    <asp:TextBox ID="txtYetkiliSifre" runat="server" TextMode="Password"></asp:TextBox>
                </div>

                <asp:Button ID="btnYetkiliEkle" runat="server" Text="Yetkili Ekle" CssClass="form-button" OnClick="btnYetkiliEkle_Click" />
            </asp:Panel>

            <asp:Button ID="btnYetkiliGiris" runat="server" Text="Yetkili Giriş Sayfasına Git" CssClass="form-button" OnClick="btnYetkiliGiris_Click" />
        </div>
    </form>
</body>
</html>
