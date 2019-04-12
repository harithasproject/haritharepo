using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_add_gallery : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox5.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select gallery_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string galno = "G_" + x.ToString();
        TextBox1.Text = galno;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set gallery_no=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);


       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into gallery values(@gallery_no,@caption,@description,@event_no,@pic,@date)";
        cmd6.Parameters.AddWithValue("@gallery_no", TextBox1.Text);
        cmd6.Parameters.AddWithValue("@caption", TextBox2.Text);
        cmd6.Parameters.AddWithValue("@description", TextBox3.Text);
        cmd6.Parameters.AddWithValue("@event_no",TextBox5.Text);
        cmd6.Parameters.AddWithValue("@pic", "~/photos/" + FileUpload1.FileName);
        cmd6.Parameters.AddWithValue("@date", TextBox4.Text);

        db6.execute(cmd6);
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into gallery values(@gallery_no,@caption,@description,@event_no,@pic,@date)";
        cmd6.Parameters.AddWithValue("@gallery_no", TextBox1.Text);
        cmd6.Parameters.AddWithValue("@caption", TextBox2.Text);
        cmd6.Parameters.AddWithValue("@description", TextBox3.Text);
        cmd6.Parameters.AddWithValue("@event_no", TextBox5.Text);
        cmd6.Parameters.AddWithValue("@pic", "~/photos/" + FileUpload1.FileName);
        cmd6.Parameters.AddWithValue("@date", TextBox4.Text);

        db6.execute(cmd6);
    }
}