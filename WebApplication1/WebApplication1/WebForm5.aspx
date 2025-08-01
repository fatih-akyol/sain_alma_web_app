<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Giriş Formu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblAdSoyad" runat="server" Text="Ad Soyad:" AssociatedControlID="txtAdSoyad"></asp:Label><br />
            <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblSifre" runat="server" Text="Şifre:" AssociatedControlID="txtSifre"></asp:Label><br />
            <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox><br /><br />

            <asp:Button ID="btnGirisYap" runat="server" Text="Giriş Yap" OnClick="btnGirisYap_Click" />
        </div>
    </form>
</body>
</html>
