<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Satın Alma Talep Formu</title>
    <style>
        body {
            font-family: Arial;
            padding: 20px;
        }

        .form-header {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .form-container {
            display: flex;
            justify-content: flex-start;
            gap: 30px;
            margin-bottom: 20px;
        }

        .left-table {
            width: 60%;
        }

        .left-table table {
            width: 100%;
            border-collapse: collapse;
        }

        .left-table th,
        .left-table td {
            border: 1px solid #ccc;
            padding: 5px;
        }

        .left-table th {
            background-color: #f2f2f2;
            text-align: left;
            padding: 8px;
        }

        .right-panel {
            width: 300px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .right-panel label {
            font-weight: bold;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .button-container {
            clear: both;
            text-align: left;
            margin-top: 20px;
        }

        .button-container input {
            margin-left: 10px;
            padding: 6px 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-header">SATIN ALMA TALEP FORMU</div>

        <div class="form-container">
            <!-- Tablo Alanı -->
            <div class="left-table">
<table>
    <tr>
        <th>Sıra No</th>
        <th>Malzeme Kısa Metni</th>
        <th>KG</th>
        <th>Adet</th>
        <th>Ürün Kodu</th>
        <th>Açıklama</th>
    </tr>

    <tr>
        <td>1</td>
        <td><asp:TextBox ID="TextBox1_1" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_1" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_1" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_1" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_1" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>2</td>
        <td><asp:TextBox ID="TextBox1_2" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_2" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_2" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_2" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_2" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>3</td>
        <td><asp:TextBox ID="TextBox1_3" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_3" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_3" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_3" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_3" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>4</td>
        <td><asp:TextBox ID="TextBox1_4" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_4" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_4" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_4" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_4" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>5</td>
        <td><asp:TextBox ID="TextBox1_5" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_5" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_5" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_5" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_5" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>6</td>
        <td><asp:TextBox ID="TextBox1_6" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_6" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_6" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_6" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_6" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>7</td>
        <td><asp:TextBox ID="TextBox1_7" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_7" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_7" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_7" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_7" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>8</td>
        <td><asp:TextBox ID="TextBox1_8" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_8" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_8" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_8" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_8" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>9</td>
        <td><asp:TextBox ID="TextBox1_9" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_9" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_9" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_9" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_9" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>10</td>
        <td><asp:TextBox ID="TextBox1_10" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_10" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_10" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_10" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_10" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>11</td>
        <td><asp:TextBox ID="TextBox1_11" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_11" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_11" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_11" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_11" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>12</td>
        <td><asp:TextBox ID="TextBox1_12" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_12" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_12" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_12" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_12" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>13</td>
        <td><asp:TextBox ID="TextBox1_13" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_13" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_13" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_13" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_13" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>14</td>
        <td><asp:TextBox ID="TextBox1_14" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_14" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_14" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_14" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_14" runat="server" Width="100%"></asp:TextBox></td>
    </tr>
    <tr>
        <td>15</td>
        <td><asp:TextBox ID="TextBox1_15" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox2_15" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox3_15" runat="server" Width="50px"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox4_15" runat="server" Width="100%"></asp:TextBox></td>
        <td><asp:TextBox ID="TextBox5_15" runat="server" Width="100%"></asp:TextBox></td>
    </tr>

</table>

            </div>

            <!-- Sağ Panel -->
            <div class="right-panel">
                <div class="form-group">
                    <label for="txtTarih">Tarih:</label>
                    <asp:TextBox ID="txtTarih" runat="server" TextMode="Date"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtSatinAlmaNo">Satın Alma No:</label>
                    <asp:TextBox ID="txtSatinAlmaNo" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtIstekteBulunan">İstek Yapan Bölüm:</label>
                    <asp:TextBox ID="txtIstekteBulunan" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtIstekteYapan">İstek Yapan:</label>
                    <asp:TextBox ID="txtIstekteYapan" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="txtBolumMuduru">Bölüm Müdürü:</label>
                    <asp:TextBox ID="txtBolumMuduru" runat="server"></asp:TextBox>
                </div>
            </div>
        </div>

        <div class="button-container">
            <asp:Button ID="btnSatirEkle" runat="server" Text="Satır Ekle" OnClick="btnSatirEkle_Click" />
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" OnClick="btnKaydet_Click" />
            <asp:Button ID="btnListele" runat="server" Text="Listele" OnClick="btnListele_Click" />
        </div>
    </form>
</body>
</html>