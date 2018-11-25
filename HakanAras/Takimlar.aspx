<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Takimlar.aspx.cs" Inherits="Takimlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="three-column" >
		  <div >
			  <div class="box-style box-style01">
					<div class="content"> &nbsp;<h2>E-Spor Takımları</h2>
						<p>
                            <asp:GridView ID="GridView1" runat="server" Width="1042px" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" style="text-align: center">
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:BoundField DataField="lig_adi" HeaderText="lig_adi" SortExpression="lig_adi" />
                                    <asp:BoundField DataField="kazanan" HeaderText="kazanan" SortExpression="kazanan" />
                                    <asp:BoundField DataField="sezon" HeaderText="sezon" SortExpression="sezon" />
                                    <asp:BoundField DataField="ulke" HeaderText="ulke" SortExpression="ulke" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hakanarasConnectionString %>" SelectCommand="SELECT [lig_adi], [kazanan], [sezon], [ulke] FROM [admin]"></asp:SqlDataSource>
                        </p>
                    </div>
				</div>
			</div>
		</div>
		<div id="page">
			<div id="content"></div>
			<div id="sidebar"></div>
		</div>
</asp:Content>

