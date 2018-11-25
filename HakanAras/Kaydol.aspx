<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Kaydol.aspx.cs" Inherits="Kaydol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    .auto-style2 {
        width: 648px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
     <div >
		  <div class="tbox1">
			  <div class="box-style box-style01">
					<div class="content"> &nbsp;<br />
                        <br />
                        <h2>&nbsp;KAYIT OL</h2>
						<table class="auto-style1">
                            <tr>
                                <td class="auto-style2">Ad Soyad</td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Kullanıcı Adı</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Sifre</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="button-style" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">E-posta</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Button ID="Button1" runat="server" CssClass="button-style" Height="36px" Text="Kayıt Ol" Width="87px" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
				</div>
			</div>
		</div>
     <div id="content">
                <asp:GridView ID="GridView1" runat="server" Width="1222px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ad_soyad" HeaderText="ad_soyad" SortExpression="ad_soyad" />
                        <asp:BoundField DataField="kullanici_adi" HeaderText="kullanici_adi" SortExpression="kullanici_adi" />
                        <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                        <asp:BoundField DataField="eposta" HeaderText="eposta" SortExpression="eposta" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hakanarasConnectionString %>" SelectCommand="SELECT [id], [ad_soyad], [kullanici_adi], [sifre], [eposta] FROM [uye_tablo]"></asp:SqlDataSource>
            </div>
    
		<div id="page">
			
			<div id="sidebar"></div>
		</div>

</asp:Content>

