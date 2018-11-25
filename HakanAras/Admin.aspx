<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        width: 686px;
    }
    .content {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
		  <div class="tbox1">
			  <div class="box-style box-style01">
					<div class="content"> &nbsp;<br />
                        <br />
                        <h2 class="auto-style2">&nbsp;&nbsp; ADMİN İŞLEMLERİ</h2>
						<table class="container">
                            <tr>
                                <td class="auto-style2"><strong>Kayıt ID</strong></td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="button-style" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Lig Adı</strong></td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Kazanan Takım</strong></td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Sezon</strong></td>
                                <td class="auto-style3">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <strong>&nbsp;&nbsp;&nbsp;&nbsp;Düzenleyen Ülke</strong></td>
                                <td style="text-align: center">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center">
                                    <asp:Button ID="Button1" runat="server" CssClass="button-style" Height="45px" Text="Kaydet" Width="157px" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" CssClass="button-style" Height="45px" Text="Sil" Width="157px" OnClick="Button2_Click" />
                                    <asp:Button ID="Button3" runat="server" CssClass="button-style" Height="45px" OnClick="Button3_Click" Text="Güncelle" Width="157px" />
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
				</div>
			</div>
		</div>
     <div id="content">
                <asp:GridView ID="GridView1" runat="server" Width="1222px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="container">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                        <asp:BoundField DataField="lig_adi" HeaderText="lig_adi" SortExpression="lig_adi" />
                        <asp:BoundField DataField="kazanan" HeaderText="kazanan" SortExpression="kazanan" />
                        <asp:BoundField DataField="sezon" HeaderText="sezon" SortExpression="sezon" />
                        <asp:BoundField DataField="ulke" HeaderText="ulke" SortExpression="ulke" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hakanarasConnectionString %>" SelectCommand="SELECT [id], [lig_adi], [kazanan], [sezon], [ulke] FROM [admin]"></asp:SqlDataSource>
            </div>
    
		<div id="page">
			
			<div id="sidebar"></div>
		</div>
</asp:Content>

