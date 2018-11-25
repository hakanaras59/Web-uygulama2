using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class Kaydol : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=UNCON\\SQLEXPRESS;Initial Catalog=hakanaras;Integrated Security=True");
        baglanti.Open();
        SqlCommand con = new SqlCommand("INSERT INTO uye_tablo (ad_soyad,kullanici_adi,sifre,eposta) VALUES (@ad_soyad,@kullanici_adi,@sifre,@eposta)", baglanti);
        
        con.Parameters.AddWithValue("@ad_soyad", TextBox1.Text);
        con.Parameters.AddWithValue("@kullanici_adi", TextBox2.Text);
        con.Parameters.AddWithValue("@sifre", TextBox3.Text);
        con.Parameters.AddWithValue("@eposta", TextBox4.Text);
      

        if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == "") )
        {
            Label1.Text = "Eksik bilgi girdiniz";


        }
        else
        {
            con.ExecuteNonQuery();
            Label1.Text = "Kayıt Yapıldı";
            Response.Redirect("Kaydol.aspx");

        }
    }
}