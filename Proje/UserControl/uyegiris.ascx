<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uyegiris.ascx.cs" Inherits="_2012903044_Kursat_Kilitci.UserControl.uyegiris" %>
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        Kullanıcı Adı:
        <asp:TextBox ID="txtad" runat="server"></asp:TextBox>
        &nbsp;Parola:
        <asp:TextBox ID="txtparola" runat="server"></asp:TextBox>
        <asp:Button ID="btngiris" runat="server" OnClick="btngiris_Click" Text="Giriş" />
        <asp:Button ID="btnparolaunttum" runat="server" OnClick="btnparolaunttum_Click" Text="Parolamı Unuttum" />
        <asp:Button ID="btnuye" runat="server" Text="Yeni Üyelik" OnClick="btnuye_Click" />
    </asp:View>
    <asp:View ID="View2" runat="server">
        Hoşgeldin
        <asp:Label ID="lbladsoyad" runat="server"></asp:Label>
        <asp:Button ID="btnkapat" runat="server" OnClick="btnkapat_Click" Text="Oturumu Kapat" />
        <asp:Button ID="btnuyelikbilgi" runat="server" Height="24px" OnClick="btnuyelikbilgi_Click" Text="Üyelik Bilgilerim " Width="108px" />
    </asp:View>
    <asp:View ID="View3" runat="server">
        Kullanıcı Adını Giriniz:
        <asp:TextBox ID="btnkullanici" runat="server"></asp:TextBox>
        <asp:Button ID="btngonder" runat="server" Text="Parola Gönder" />
    </asp:View>
</asp:MultiView>

