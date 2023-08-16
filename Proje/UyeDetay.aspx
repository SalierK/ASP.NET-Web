<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="UyeDetay.aspx.cs" Inherits="_2012903044_Kursat_Kilitci.UyeDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 32px;
    }
        .auto-style2 {
            width: 1126px;
        }
        .auto-style3 {
            width: 200px;
        }
        .auto-style4 {
            height: 32px;
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style2">
        <tr>
            <td class="auto-style3"> Üye Numarası</td>
            <td><asp:Label ID="lbluyeno" runat="server"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">Kullanıcı Adı</td>
            <td>
                <asp:TextBox ID="uyedetaytxtkullanici" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uyedetaytxtkullanici" ErrorMessage="KULLANICI ADI BOŞ GEÇİLEMEZ"></asp:RequiredFieldValidator>
            </td>
        </tr>        
        
        <tr>
            <td class="auto-style3">Parola</td>
            <td>
                <asp:TextBox ID="uyedetaytxtparola" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="uyedetaytxtparola" ErrorMessage="PAROLA GİRİNİZ"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">Parola Tekrar</td>
            <td>
                <asp:TextBox ID="uyedetaytxtparolatekrar" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="uyedetaytxtparola" ControlToValidate="uyedetaytxtparolatekrar" ErrorMessage="PAROLALAR UYUŞMUYOR"></asp:CompareValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">Adı </td>
            <td>
                <asp:TextBox ID="uyedetaytxtadi" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uyedetaytxtadi" ErrorMessage="BOŞ GEÇİLEMEZ"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style4">Soyadı</td>
            <td class="auto-style1">
                <asp:TextBox ID="uyedetaytxtsoyadi" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="uyedetaytxtsoyadi" ErrorMessage="BOŞ GEÇİLEMEZ"></asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">E-Posta</td>
            <td>
                <asp:TextBox ID="uyedetaytxteposta" runat="server" Width="260px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="uyedetaytxteposta" ErrorMessage="E POSTA FORMATI HATALI" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3">Yetki</td>
            <td>
                <asp:DropDownList ID="uyedetaydrpyetki" runat="server" Width="150px">
                    <asp:ListItem Value="1">Yönetici</asp:ListItem>
                    <asp:ListItem Value="2">Kullanıcı</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
    <asp:Label ID="uyedetaylblguvenlik" runat="server" Text="Label"></asp:Label>
&nbsp; Resimdeki Sayıyı Giriniz ==&gt;&nbsp;
    <asp:TextBox ID="uyedetaytxtsoru" runat="server" Width="343px"></asp:TextBox>
    <br />
    <asp:LinkButton ID="btnuyeekle" runat="server" OnClick="btnuyeekle_Click">Üye Ekle </asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:LinkButton ID="btnbilgiguncelle" runat="server" OnClick="btnbilgiguncelle_Click"> Bilgilerimi Güncelle</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="btnanasayfadon" runat="server" OnClick="btnanasayfadon_Click">Ana Sayfaya Dön</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="uyedtaysil" runat="server" OnClick="uyedtaysil_Click">Uye Sil</asp:LinkButton>
    <br />
<asp:Label ID="uyedetaylbluyari" runat="server"></asp:Label>

&nbsp;

</asp:Content>
