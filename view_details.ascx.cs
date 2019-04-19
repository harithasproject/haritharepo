using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_view_details : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox1.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select * from events where event_no=@no";
        cmd1.Parameters.AddWithValue("@no", TextBox1.Text);
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        TextBox2.Text = dr.GetString(1);
        TextBox3.Text = dr.GetString(2);
        TextBox4.Text = dr.GetDateTime(3).ToShortDateString();
        db2.execute(cmd1);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["event_no"] = TextBox1.Text;
        Response.Redirect("view_eventgallery.aspx");
       
    }
}