using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_remove_division : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dbconnect db1 = new dbconnect();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select div_id from division";
            SqlDataReader dr1 = db1.executeread(cmd1);
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1.GetString(0));
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from division where div_id=@id";
        cmd2.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
        TextBox1.Text = dr1.GetInt32(1).ToString();
        TextBox2.Text = dr1.GetString(2);
        TextBox3.Text = dr1.GetString(3);
        TextBox5.Text = dr1.GetDateTime(4).ToShortDateString();
        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select name from faculty where staff_id=@id";
        cmd3.Parameters.AddWithValue("@id", TextBox3.Text);
        SqlDataReader dr2 = db3.executeread(cmd3);
        dr2.Read();

        TextBox4.Text = dr2.GetString(0);


        //TextBox5.Text = dr.GetDateTime(4);
        db3.execute(cmd3);


       
        
       


       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "delete from division where div_id=@id";
        cmd3.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
        db3.execute(cmd3);
    }
}