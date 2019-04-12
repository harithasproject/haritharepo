using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_allot : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox1.Text = a;
        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from admission where adm_no=@adm_no";
        cmd2.Parameters.AddWithValue("@adm_no", a);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
        TextBox2.Text = dr1.GetString(2);
        TextBox3.Text = dr1.GetInt32(1).ToString();
        db2.execute(cmd2);

        if (!IsPostBack)
        {
            dbconnect db4 = new dbconnect();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select div from division where class=@class";
            cmd4.Parameters.AddWithValue("@class", TextBox3.Text);
            SqlDataReader dr2 = db4.executeread(cmd4);
            while (dr2.Read())
            {
                DropDownList1.Items.Add(dr2.GetString(0));
            }
            db4.execute(cmd4);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select count(*) from div_allotment where divid=@divid";
        cmd.Parameters.AddWithValue("@divid", TextBox5.Text);
        SqlDataReader dr2 = db.executeread(cmd);
        dr2.Read();
        int count = dr2.GetInt32(0);
        if (count > 30)
        {
            Label1.Visible = true;

        }
        else
        {

            dbconnect db6 = new dbconnect();
            SqlCommand cmd6 = new SqlCommand();
            cmd6.CommandText = "insert into div_allotment values(@roll_no,@adm_no,@divid,@year)";
            cmd6.Parameters.AddWithValue("@roll_no", "");
            cmd6.Parameters.AddWithValue("@adm_no", TextBox1.Text);
            cmd6.Parameters.AddWithValue("@divid", TextBox5.Text);

            cmd6.Parameters.AddWithValue("@year", TextBox4.Text);
            db6.execute(cmd6);

            dbconnect db7 = new dbconnect();
            SqlCommand cmd7 = new SqlCommand();
            cmd7.CommandText = "update admission set status=@a where adm_no=@adm";
            cmd7.Parameters.AddWithValue("@a", "alloted");
            cmd7.Parameters.AddWithValue("@adm", TextBox1.Text);
            db7.execute(cmd7);


        
        }


       

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select div_id from division where class=@class and div=@div";
        cmd4.Parameters.AddWithValue("@class",TextBox3.Text);
        cmd4.Parameters.AddWithValue("@div", DropDownList1.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        dr2.Read();
        TextBox5.Text = dr2.GetString(0);
        db4.execute(cmd4);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["divid"] = TextBox5.Text;
        Response.Redirect("view_stud.aspx");
    }
}