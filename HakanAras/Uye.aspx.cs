using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class Uye : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Kaydol.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=UNCON\\SQLEXPRESS;Initial Catalog=hakanaras;Integrated Security=True");
        baglanti.Open();
        SqlCommand sorgu = new SqlCommand("SELECT kullanici_adi, sifre FROM uye_tablo WHERE kullanici_adi = '" + TextBox1.Text + "' and sifre ='" + TextBox2.Text + "'", baglanti);
        SqlDataReader dr = sorgu.ExecuteReader();

        if (TextBox1.Text == "admin")
        {
            Response.Redirect("Admin.aspx");
        }
        else if (dr.Read())
        {

            Response.Redirect("Anasayfa.aspx");
        }


        else
        { Label1.Text = "hatalı giriş yaptınız"; }

    }
}