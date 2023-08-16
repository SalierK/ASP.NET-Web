<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YYorum.aspx.cs" Inherits="_2012903044_Kursat_Kilitci.YYorum" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 236px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <asp:GridView ID="Tablo1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" DataKeyNames="yn" DataSourceID="SqlDataSource1" GridLines="None" OnSelectedIndexChanged="Tablo1_SelectedIndexChanged" Width="787px" BorderStyle="Ridge" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="yn" HeaderText="yn" InsertVisible="False" ReadOnly="True" SortExpression="yn" />
                <asp:BoundField DataField="konu" HeaderText="konu" SortExpression="konu" />
                <asp:BoundField DataField="yorum" HeaderText="yorum" SortExpression="yorum" />
                <asp:BoundField DataField="yorumTarihi" HeaderText="yorumTarihi" SortExpression="yorumTarihi" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [yorum]">
        </asp:SqlDataSource>
    </asp:View>
    <asp:View ID="View2" runat="server">
        &nbsp;
        <table>
            <tr>
                <td class="auto-style2"><asp:Label ID="lblyn" runat="server"></asp:Label>
        &nbsp;yorum numarasına sahip yorum</td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="lbltarih" runat="server"></asp:Label>
        &nbsp;tarihinde gönderildi.&nbsp;</td>
            </tr>
        </table>

        <table style="margin-top:3px">
            <tr>
                <td>Konu</td>
                <td>
                    <asp:TextBox ID="txtkonu" runat="server" placeholder="Mesaj Konusu" Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtkonu" ErrorMessage="Bu Alanı Boş Bırakamazsınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Mesajınız</td>
                <td>
                    <asp:TextBox ID="txtmesaj" runat="server" Height="150px" placeholder="Mesajınızı Giriniz" Width="250px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtmesaj" ErrorMessage="Bu Alanı Boş Bırakamazsınız"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnkaydet" runat="server" OnClick="btnkaydet_Click1" Text="Kaydet" />
                </td>
                <td><asp:Button ID="btngeri" runat="server" Text="Listeye Geri Dön" AutoPostBack="true" OnClick="btngeri_Click1"/>
                    <asp:Button ID="btnSil" runat="server" Text="Yorumu Sil" OnClick="btnSil_Click" />
                    <asp:Label ID="lblbildiri" runat="server"></asp:Label>
                    <asp:Label ID="lbluyari" runat="server"></asp:Label>
                </td>

            </tr>
        </table>
        <br />



    </asp:View>
</asp:MultiView>
</asp:Content>
