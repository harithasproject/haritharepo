using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_division : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select div_id from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string divid = "DIV_" + x.ToString();
        TextBox1.Text = divid;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set div_id=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);


        dbconnect db4 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select name from faculty where staff_id not in (select staff_id from division)";
        SqlDataReader dr1 = db4.executeread(cmd3);
        while (dr1.Read())
        {
            DropDownList3.Items.Add(dr1.GetString(0));
        }
        db4.execute(cmd3);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into division values(@div_id,@class,@division,@staff_id,@year)";
        cmd6.Parameters.AddWithValue("@div_id", TextBox1.Text);
        cmd6.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd6.Parameters.AddWithValue("@division", DropDownList2.SelectedValue);
        cmd6.Parameters.AddWithValue("@staff_id", TextBox3.Text);
        cmd6.Parameters.AddWithValue("@year", TextBox2.Text);
        db6.execute(cmd6);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        dbconnect db5 = new dbconnect();
        SqlCommand cmd5 = new SqlCommand();
        cmd5.CommandText = "select * from faculty where name=@nm ";
        cmd5.Parameters.AddWithValue("@nm", DropDownList3.SelectedValue);
        SqlDataReader dr = db5.executeread(cmd5);
        dr.Read();
        TextBox3.Text = dr.GetString(0);
    }
}