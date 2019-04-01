using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_update_division : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
         string a = Request.QueryString["id"];
         TextBox1.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from division where div_id=@no";
        cmd2.Parameters.AddWithValue("@no", a);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
        TextBox2.Text = dr1.GetInt32(1).ToString();
        TextBox3.Text = dr1.GetString(2);
        
        db2.execute(cmd2);
        
        }


    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db1 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "update division set staff_id=@id where division_id=@did";
        
        cmd1.Parameters.AddWithValue("@id",DropDownList1.SelectedValue);
        cmd1.Parameters.AddWithValue("@did", TextBox1.Text);
        db1.execute(cmd1);
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "select name from faculty where staff_id not in (select staff_id from division)";
        cmd3.Parameters.AddWithValue("@id",TextBox1.Text);
        SqlDataReader dr2 = db3.executeread(cmd3);
        dr2.Read();
        TextBox5.Text = dr2.GetString(0);
        db3.execute(cmd3);
        
    }
}

   
  
