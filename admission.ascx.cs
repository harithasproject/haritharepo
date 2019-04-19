using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class publicss_admission : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select appli_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string divid = "APPLIC_" + x.ToString();
        TextBox1.Text = divid;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set appli_no=@x";
        cmd2.Parameters.AddWithValue("@x", x);
        db3.execute(cmd2);

        if (!IsPostBack)
        {
            dbconnect db4 = new dbconnect();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select distinct class from division";
            SqlDataReader dr1 = db4.executeread(cmd4);
            while (dr1.Read())
            {
                DropDownList1.Items.Add(dr1.GetInt32(0).ToString());
            }
            db4.execute(cmd4);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into application values(@applic_no,@class,@name,@pic,@aadhar,@dob,@guardian,@occupation,@bank_no,@address,@relationship,@ph,@email,@mother,@rel,@nationality,@state,@medium,@prev_school,@tc,@status)";
        cmd2.Parameters.AddWithValue("@applic_no", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd2.Parameters.AddWithValue("@name", TextBox2.Text);
          cmd2.Parameters.AddWithValue("@pic", "~/photos/" + FileUpload1.FileName);
        cmd2.Parameters.AddWithValue("@aadhar", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@dob", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@guardian", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@occupation", TextBox6.Text);
        cmd2.Parameters.AddWithValue("@bank_no", TextBox7.Text);
        cmd2.Parameters.AddWithValue("@address", TextBox8.Text);
        cmd2.Parameters.AddWithValue("@relationship", DropDownList2.Text);
        cmd2.Parameters.AddWithValue("@ph", TextBox9.Text);
        cmd2.Parameters.AddWithValue("@email", TextBox10.Text);
        cmd2.Parameters.AddWithValue("@mother", TextBox11.Text);
        cmd2.Parameters.AddWithValue("@rel", TextBox12.Text);
        cmd2.Parameters.AddWithValue("@nationality", TextBox13.Text);
        cmd2.Parameters.AddWithValue("@state", TextBox14.Text);
        cmd2.Parameters.AddWithValue("@medium", DropDownList3.SelectedValue);
        cmd2.Parameters.AddWithValue("@prev_school", TextBox15.Text);
        cmd2.Parameters.AddWithValue("@tc", TextBox16.Text);
        cmd2.Parameters.AddWithValue("@status", "applied");
        db5.execute(cmd2);
    
    }
}