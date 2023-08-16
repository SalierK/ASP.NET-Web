<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetici.Master" AutoEventWireup="true" CodeBehind="YUye.aspx.cs" Inherits="_2012903044_Kursat_Kilitci.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView runat="server" ID="grid" AutoGenerateColumns="False" DataKeyNames="uyeno" DataSourceID="veri" Height="139px" Width="950px" AllowPaging="True" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="grid_SelectedIndexChanged" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="uyeno" HeaderText="uyeno" InsertVisible="False" ReadOnly="True" SortExpression="uyeno" />
            <asp:BoundField DataField="kullaniciadi" HeaderText="kullaniciadi" SortExpression="kullaniciadi" />
            <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
            <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
            <asp:CheckBoxField DataField="silindi" HeaderText="silindi" SortExpression="silindi" />
            <asp:CommandField ShowSelectButton="True" ButtonType="Button" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [kullanici]" ID="veri" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [kullanici] WHERE [uyeno] = ? AND (([kullaniciadi] = ?) OR ([kullaniciadi] IS NULL AND ? IS NULL)) AND (([parola] = ?) OR ([parola] IS NULL AND ? IS NULL)) AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([soyadi] = ?) OR ([soyadi] IS NULL AND ? IS NULL)) AND (([eposta] = ?) OR ([eposta] IS NULL AND ? IS NULL)) AND (([yetki] = ?) OR ([yetki] IS NULL AND ? IS NULL)) AND [silindi] = ?" InsertCommand="INSERT INTO [kullanici] ([uyeno], [kullaniciadi], [parola], [adi], [soyadi], [eposta], [yetki], [silindi]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [kullanici] SET [kullaniciadi] = ?, [parola] = ?, [adi] = ?, [soyadi] = ?, [eposta] = ?, [yetki] = ?, [silindi] = ? WHERE [uyeno] = ? AND (([kullaniciadi] = ?) OR ([kullaniciadi] IS NULL AND ? IS NULL)) AND (([parola] = ?) OR ([parola] IS NULL AND ? IS NULL)) AND (([adi] = ?) OR ([adi] IS NULL AND ? IS NULL)) AND (([soyadi] = ?) OR ([soyadi] IS NULL AND ? IS NULL)) AND (([eposta] = ?) OR ([eposta] IS NULL AND ? IS NULL)) AND (([yetki] = ?) OR ([yetki] IS NULL AND ? IS NULL)) AND [silindi] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_uyeno" Type="Int32" />
            <asp:Parameter Name="original_kullaniciadi" Type="String" />
            <asp:Parameter Name="original_kullaniciadi" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_adi" Type="String" />
            <asp:Parameter Name="original_adi" Type="String" />
            <asp:Parameter Name="original_soyadi" Type="String" />
            <asp:Parameter Name="original_soyadi" Type="String" />
            <asp:Parameter Name="original_eposta" Type="String" />
            <asp:Parameter Name="original_eposta" Type="String" />
            <asp:Parameter Name="original_yetki" Type="Byte" />
            <asp:Parameter Name="original_yetki" Type="Byte" />
            <asp:Parameter Name="original_silindi" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="uyeno" Type="Int32" />
            <asp:Parameter Name="kullaniciadi" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="adi" Type="String" />
            <asp:Parameter Name="soyadi" Type="String" />
            <asp:Parameter Name="eposta" Type="String" />
            <asp:Parameter Name="yetki" Type="Byte" />
            <asp:Parameter Name="silindi" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="kullaniciadi" Type="String" />
            <asp:Parameter Name="parola" Type="String" />
            <asp:Parameter Name="adi" Type="String" />
            <asp:Parameter Name="soyadi" Type="String" />
            <asp:Parameter Name="eposta" Type="String" />
            <asp:Parameter Name="yetki" Type="Byte" />
            <asp:Parameter Name="silindi" Type="Boolean" />
            <asp:Parameter Name="original_uyeno" Type="Int32" />
            <asp:Parameter Name="original_kullaniciadi" Type="String" />
            <asp:Parameter Name="original_kullaniciadi" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_parola" Type="String" />
            <asp:Parameter Name="original_adi" Type="String" />
            <asp:Parameter Name="original_adi" Type="String" />
            <asp:Parameter Name="original_soyadi" Type="String" />
            <asp:Parameter Name="original_soyadi" Type="String" />
            <asp:Parameter Name="original_eposta" Type="String" />
            <asp:Parameter Name="original_eposta" Type="String" />
            <asp:Parameter Name="original_yetki" Type="Byte" />
            <asp:Parameter Name="original_yetki" Type="Byte" />
            <asp:Parameter Name="original_silindi" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
