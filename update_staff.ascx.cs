using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_update_staff : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox1.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from faculty where staff_id=@id";
        cmd2.Parameters.AddWithValue("@id", a);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
       // TextBox1.Text = dr1.GetString(1);
        TextBox11.Text = dr1.GetString(1);
        TextBox2.Text = dr1.GetString(2);
        //TextBox10.Text = dr1.GetString(3).
        TextBox10.Text = dr1.GetDateTime(3).ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db1 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "update faculty set post=@pst, email=@em, ph=@p where staff_id=@id";
        cmd1.Parameters.AddWithValue("@pst",DropDownList3.SelectedValue);
        cmd1.Parameters.AddWithValue("@em",TextBox8.Text);
        cmd1.Parameters.AddWithValue("@p",TextBox9.Text);
        cmd1.Parameters.AddWithValue("@id", TextBox1.Text);
        db1.execute(cmd1);


        dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into qualification values(@staff_id,@class,@school,@board,@year,@mark)";
        cmd2.Parameters.AddWithValue("@staff_id", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@class", DropDownList2.SelectedValue);
        cmd2.Parameters.AddWithValue("@school", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@board", TextBox8.Text);
        cmd2.Parameters.AddWithValue("@year", TextBox10.Text);
        cmd2.Parameters.AddWithValue("@mark", TextBox9.Text);
        db5.execute(cmd2);

    }

    
    
       
    
   
}