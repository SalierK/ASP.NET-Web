<%@ Page Title="" Language="C#" MasterPageFile="~/Ana.Master" AutoEventWireup="true" CodeBehind="Yorum.aspx.cs" Inherits="_2012903044_Kursat_Kilitci.Yorum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-size:35px">Yorum</h1>
    <br />
    <table>
        <tr>
            <td>Konu</td><td>

    <asp:TextBox ID="txtkonu" runat="server" placeholder="Yorumunuzun Konusunu Belirtiniz" Width="250px" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bu Alanı Boş Bırakamazsınız" ControlToValidate="txtkonu"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Mesajınız</td><td>
    <asp:TextBox ID="txtmesaj" runat="server"  placeholder="Yorumunuzu Yazınız" Height="150px" Width="250px" TextMode="MultiLine"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Bu Alanı Boş Bırakamazsınız" ControlToValidate="txtmesaj"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
<asp:Label ID="lblguvenlik" runat="server"></asp:Label>
                Resimdeki Sayıyı Giriniz</td><td>

<asp:TextBox ID="txtguvenlik" runat="server" placeholder="Resimdeki Sayı"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Bu Alanı Boş Bırakamazsınız" ControlToValidate="txtguvenlik"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />


    &nbsp;<asp:Button ID="btngönder" runat="server" Text="Yorum Ekle" OnClick="Button2_Click" />
    <br />
<asp:Label ID="lblbildiri" runat="server"></asp:Label>
<br />
</asp:Content>
