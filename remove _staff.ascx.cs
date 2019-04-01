using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_remove__staff : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dbconnect db1 = new dbconnect();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "select name from faculty";
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
        cmd2.CommandText = "select * from faculty where name=@nm";
        cmd2.Parameters.AddWithValue("@nm", DropDownList1.SelectedValue);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
        TextBox1.Text = dr1.GetString(1);
        TextBox2.Text = dr1.GetString(2);
        TextBox10.Text = dr1.GetDateTime(3).ToShortDateString();
        TextBox7.Text = dr1.GetString(5);
        TextBox8.Text = dr1.GetString(6);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "delete from facilty where staff_id_id=@id";
        cmd3.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
        db3.execute(cmd3);
    }
}