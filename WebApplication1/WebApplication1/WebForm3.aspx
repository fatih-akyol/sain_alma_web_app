<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Giriş Sayfası</title>
    <style>
        .button-container {
            margin-top: 50px;
            text-align: center;
        }

        .login-button {
            margin: 10px;
            padding: 10px 30px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="button-container">
            <asp:Button ID="btnAdmin" runat="server" Text="Admin Girişi" CssClass="login-button" OnClick="btnAdmin_Click" />
            <asp:Button ID="btnYetkili" runat="server" Text="Yetkili Girişi" CssClass="login-button" OnClick="btnYetkili_Click" />
        </div>
    </form>
</body>
</html>
