using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=UNCON\\SQLEXPRESS;Initial Catalog=hakanaras;Integrated Security=True");
        SqlCommand con = new SqlCommand("INSERT INTO admin (id,lig_adi,kazanan,sezon,ulke) VALUES (@id,@lig_adi,@kazanan,@sezon,@ulke)", baglanti);
        baglanti.Open();
        con.Parameters.AddWithValue("@id", TextBox1.Text);
        con.Parameters.AddWithValue("@lig_adi", TextBox2.Text);
        con.Parameters.AddWithValue("@kazanan", TextBox3.Text);
        con.Parameters.AddWithValue("@sezon", TextBox4.Text);
        con.Parameters.AddWithValue("@ulke", TextBox5.Text);

        if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == "") || (TextBox5.Text == ""))
        {
            Label1.Text = "Eksik bilgi girdiniz";


        }
        else
        {
            con.ExecuteNonQuery();
            Label1.Text = "Kayıt Yapıldı";
            Response.Redirect("Admin.aspx");

        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=UNCON\\SQLEXPRESS;Initial Catalog=hakanaras;Integrated Security=True");
        baglanti.Open();
        SqlCommand com = new SqlCommand("DELETE FROM admin WHERE id='" + TextBox1.Text + "'", baglanti);
        com.ExecuteNonQuery();
        Label1.Text = "Kayıt silindi";
        Response.Redirect("Admin.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection("Data Source=UNCON\\SQLEXPRESS;Initial Catalog=hakanaras;Integrated Security=True");
        baglanti.Open();
        SqlCommand com = new SqlCommand("UPDATE admin SET id=@id,lig_adi=@lig_adi,sezon=@sezon,ulke=@ulke WHERE id='" + TextBox1.Text + "'", baglanti);
        com.Parameters.AddWithValue("@id", TextBox1.Text);
        com.Parameters.AddWithValue("@lig_adi", TextBox2.Text);
        com.Parameters.AddWithValue("@kazanan", TextBox3.Text);
        com.Parameters.AddWithValue("@sezon", TextBox4.Text);
        com.Parameters.AddWithValue("@ulke", TextBox5.Text);
        if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == "") || (TextBox5.Text == ""))
        {
            Label1.Text = "Tüm alanları doldurun";


        }
        else
        {
            com.ExecuteNonQuery();
            Label1.Text = "Kayıt Güncellendi";
            Response.Redirect("Admin.aspx");
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}