using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_feepattern : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select fee_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string divid = "FEE_" + x.ToString();
        TextBox1.Text = divid;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set fee_no=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db6 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();

        cmd3.CommandText = "insert into fee_pattern values(@fee_no,@fname,@description,@amount)";
        cmd3.Parameters.AddWithValue("@fee_no", TextBox1.Text);
        cmd3.Parameters.AddWithValue("@fname", TextBox2.Text);
        cmd3.Parameters.AddWithValue("@description", TextBox3.Text);
        cmd3.Parameters.AddWithValue("@amount", TextBox4.Text);
        db6.execute(cmd3);
    }
}