using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_add_newsandevents : System.Web.UI.UserControl
{
    public static int x;

    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select event_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string eventno = "EVENT_" + x.ToString();
        TextBox1.Text = eventno;


        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into events values(@event_no,@event_name,@description,@date)";
        cmd6.Parameters.AddWithValue("@event_no", TextBox1.Text);
        cmd6.Parameters.AddWithValue("@event_name", TextBox2.Text);
        cmd6.Parameters.AddWithValue("@description",TextBox3.Text );
        cmd6.Parameters.AddWithValue("@date", TextBox4.Text);
        
        db6.execute(cmd6);


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set event_no=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);
    }
   
}