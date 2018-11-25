<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="banner" class="container"> <img src="images/banner.jpg" width="1200" height="400" alt="" /> </div>
		<div id="three-column" class="container">
		  <div class="tbox1">
			  <div class="box-style box-style01">
					<div class="content"> <a href="#" class="image image-full"><img src="images/turkiyede-espor-810.jpg" alt=""/></a>
					  <h2>Türkiyede E-Spor</h2>
						<p>Günümüzde elektronik spor kavramının önemli bir gelişme gösterdiği bilinmektedir. Ulusal ve uluslararası düzeyde resmi ve özel pek çok elektronik spor turnuvası düzenlenmekte ve elektronik sporlar ile ilgili federasyonlar oluşum sürecini tamamlamaya çalışmaktadır</p>
				<a href="Esportr.aspx" class="button-style">Bilgi Al</a> </div>
				</div>
			</div>
			<div class="tbox2">
				<div class="box-style box-style02">
					<div class="content"> <a href="#" class="image image-full"><img src="images/sl_duyuru.jpg" alt=""/></a>
					  <h2>E-Spor Takımları</h2>
						<p>E-spor turnuvaları düzenlendiğinden beri bir çok profesyonel oyuncu ortaya cıkmaya basladı hal böyle olunce takımların sayısıda artış gösterdi.Birçok online oyun yapımcıları oyunları için turnuvalar düzenlemeye başladı  takımlar bu turnuvalara katılarak yeteneklerini göstermeyi başardı. </p>
						<a href="Takimlar.aspx" class="button-style">Bilgi Al</a> </div>
				</div>
			</div>
			<div class="tbox3">
				<div class="box-style box-style03">
					<div class="content"> <a href="Takimlar.aspx" class="image image-full"><img src="images/esport23.jpg" alt=""/></a>
					  <h2>E-spor Ligleri</h2>
						<p>Oyunların düzenlenen turnuvalarının ligleri ve grup aşamaları.<br />
						  <br />
						  <br />
<br />
						</p>
				  <a href="Takimlar.aspx" class="button-style">Bilgi Al</a> </div>
				</div>
			</div>
		</div>
		<div id="page">
			<div id="content"></div>
			<div id="sidebar"></div>
		</div>

</asp:Content>

