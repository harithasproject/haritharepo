using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_add_staff : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select staff_id from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string stfid = "Staff_" + x.ToString();
        TextBox1.Text = stfid;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set staff_id=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);

    }
   
    protected void Button2_Click(object sender, EventArgs e)
    {
        DropDownList2.Items.Remove(DropDownList2.SelectedItem);
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";


        dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into qualification values(@staff_id,@class,@school,@board,@year,@mark)";
        cmd2.Parameters.AddWithValue("@staff_id", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@class", DropDownList2.SelectedValue);
        cmd2.Parameters.AddWithValue("@school", TextBox11.Text);
        cmd2.Parameters.AddWithValue("@board", TextBox8.Text);
        cmd2.Parameters.AddWithValue("@year", TextBox10.Text);
        cmd2.Parameters.AddWithValue("@mark", TextBox9.Text);
        db5.execute(cmd2);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        dbconnect db6 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();

        cmd3.CommandText = "insert into qualification values(@staff_id,@class,@school,@board,@year,@mark)";
        cmd3.Parameters.AddWithValue("@staff_id", TextBox1.Text);
        cmd3.Parameters.AddWithValue("@class", DropDownList2.SelectedValue);
        cmd3.Parameters.AddWithValue("@school", TextBox11.Text);
        cmd3.Parameters.AddWithValue("@board", TextBox8.Text);
        cmd3.Parameters.AddWithValue("@year", TextBox10.Text);
        cmd3.Parameters.AddWithValue("@mark", TextBox9.Text);
        db6.execute(cmd3);
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "insert into faculty values(@staff_id,@name,@address,@dob,@sex,@post,@email,@ph)";
        cmd1.Parameters.AddWithValue("@staff_id", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@address", TextBox6.Text);
        cmd1.Parameters.AddWithValue("@sex",RadioButtonList2.SelectedValue);
        cmd1.Parameters.AddWithValue("@dob", TextBox7.Text);
        cmd1.Parameters.AddWithValue("@post", DropDownList1.SelectedValue);
        cmd1.Parameters.AddWithValue("@email", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@ph", TextBox5.Text);

        db4.execute(cmd1);



       /* dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into tbl_login values(@login_id,@password,@type)";
        cmd2.Parameters.AddWithValue("@login_id", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@password", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@type", DropDownList1.SelectedValue);
        db5.execute(cmd2);*/


    }
}