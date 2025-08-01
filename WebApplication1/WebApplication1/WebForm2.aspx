<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Satın Alma Listesi</title>
    <style>
        .container {
            display: grid;
            grid-template-columns: 1fr 300px;
            gap: 20px;
            align-items: start;
            padding-bottom: 20px;
        }

        .search-filters {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 20px;
        }

        .grid-wrapper {
            grid-column: 1 / span 1;
        }

        .side-panel {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .info-row {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .buttons {
            margin-top: 20px;
            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <!-- Sol Kısım: Arama + Grid -->
            <div>
                <!-- Arama Alanları -->
                <div class="search-filters">
                    <asp:Label ID="lblSapNo" runat="server" Text="SAP No:" Font-Bold="True" />
                    <asp:TextBox ID="txtSapNo" runat="server" Width="150px" />

                    <asp:Label ID="lblUrunKodu" runat="server" Text="Ürün Kodu:" Font-Bold="True" />
                    <asp:TextBox ID="txtUrunKodu" runat="server" Width="150px" />
                </div>

                <!-- GridView -->
                <div class="grid-wrapper">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="True"
                        HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" BorderWidth="1px">
                    </asp:GridView>

                    <!-- Butonlar -->
                    <div class="buttons">
                        <asp:Button ID="btnListele" runat="server" Text="Listele" OnClick="btnListele_Click" />
                        <asp:Button ID="btnAnaSayfa" runat="server" Text="Ana Sayfaya Dön" OnClick="btnAnaSayfa_Click" CssClass="btn-return" />
                    </div>
                </div>
            </div>

            <!-- Sağ Panel: Tarih + Etiket Bilgileri -->
            <div class="side-panel">

                <!-- Tarih -->
                <asp:Label ID="lblTarih" runat="server" Text="Tarih:" Font-Bold="True" />
                <asp:TextBox ID="txtTarih" runat="server" Width="120px" ReadOnly="true" />
                <asp:Calendar ID="calendarTarih" runat="server" OnSelectionChanged="calendarTarih_SelectionChanged" />

                <!-- Bilgi Etiketleri -->
                <div class="info-row">
                    <asp:Label ID="lblIstekYapanText" runat="server" Text="İstek Yapan:" Font-Bold="True" />
                    <asp:Label ID="lblIstekYapanValue" runat="server" Text="..." />
                </div>

                <div class="info-row">
                    <asp:Label ID="lblIstekBolumText" runat="server" Text="İstek Yapan Bölüm:" Font-Bold="True" />
                    <asp:Label ID="lblIstekBolumValue" runat="server" Text="..." />
                </div>

                <div class="info-row">
                    <asp:Label ID="lblBolumMuduruText" runat="server" Text="Bölüm Müdürü:" Font-Bold="True" />
                    <asp:Label ID="lblBolumMuduruValue" runat="server" Text="..." />
                </div>

                <div class="info-row">
                    <asp:Label ID="lblSatinAlmaText" runat="server" Text="Satın Alma No:" Font-Bold="True" />
                    <asp:Label ID="lblSatinAlmaValue" runat="server" Text="..." />
                </div>

            </div>
        </div>
    </form>
</body>
</html>
