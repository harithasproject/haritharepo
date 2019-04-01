using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_update_feepattern : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox1.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from fee_pattern where fee_no=@no";
        cmd2.Parameters.AddWithValue("@no", a);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
        TextBox2.Text = dr1.GetString(1);

        TextBox3.Text = dr1.GetString(2);
        TextBox4.Text = dr1.GetInt32(3).ToString();
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db1 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "update fee_pattern set fname=@fn, description=@des, amount=@am where fee_no=@no";
        cmd1.Parameters.AddWithValue("@no",TextBox1.Text);
        cmd1.Parameters.AddWithValue("@fn", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@des", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@am", TextBox4.Text);
        db1.execute(cmd1);

    }
}