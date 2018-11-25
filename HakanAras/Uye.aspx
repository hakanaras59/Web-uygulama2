<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Uye.aspx.cs" Inherits="Uye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style3 {
        color: #000000;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="three-column" class="container">
		  <br />
          <br />
          <br />
		  <div class="tbox1">
			  <div class="box-style box-style01">
					<div class="container"> &nbsp;<h2>giriş yap</h2>
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style3"><strong>Kullanıcı ADI</strong></td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"><strong>Sifre</strong></td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="button-style"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" CssClass="button-style" Text="Giris Yap" OnClick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" CssClass="button-style" OnClick="Button2_Click" Text="Kayıt Ol" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
				</div>
			</div>
		  <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
		</div>
		<div id="page">
			<div id="content"></div>
			<div id="sidebar"></div>
		</div>
</asp:Content>

