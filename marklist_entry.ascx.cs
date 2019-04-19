using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class teacher_marklist_entry : System.Web.UI.UserControl
{
    public static int t, v, u,total;
    public static double perc;

    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Session["login_id"].ToString();
        Label1.Text = id;
        dbconnect db1 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select staff_id from faculty where email=@em";
        cmd2.Parameters.AddWithValue("@em", id);
        SqlDataReader dr1 = db1.executeread(cmd2);
        dr1.Read();
        Label2.Text = dr1.GetString(0);
        db1.execute(cmd2);



        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select * from division where staff_id=@id";
        cmd1.Parameters.AddWithValue("@id", Label2.Text);
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        TextBox1.Text = dr.GetInt32(1).ToString();
        TextBox2.Text = dr.GetString(2);
        TextBox3.Text = dr.GetString(0);
        db2.execute(cmd1);

        if (!IsPostBack)
        {
            dbconnect db4 = new dbconnect();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select roll_no from div_allotment where divid=@id";
            cmd4.Parameters.AddWithValue("@id", TextBox3.Text);
            SqlDataReader dr2 = db4.executeread(cmd4);
            while (dr2.Read())
            {
                DropDownList1.Items.Add(dr2.GetInt32(0).ToString());
            }
            db4.execute(cmd4);
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select name from admission,div_allotment where admission.adm_no=div_allotment.adm_no and div_allotment.divid=@id ";
        cmd4.Parameters.AddWithValue("@id", TextBox3.Text);
        //cmd4.Parameters.AddWithValue("@div", DropDownList2.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        dr2.Read();
        TextBox4.Text = dr2.GetString(0);
        db4.execute(cmd4);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {
        String act = DropDownList4.SelectedValue;
        String port = DropDownList5.SelectedValue;
        String unit = DropDownList6.SelectedValue;
      
        if (act == "A")
        {
            t = 5;
        }
        else if (act == "B")
        {
            t = 4;
        }
        else if (act == "C")
        {
            t = 3;
        }
        else if (act == "D")
        {
            t = 2;
        }
        else
        {
            t = 1;
        }

        if (port == "A")
        {
            v = 5;
        }
        else if (port == "B")
        {
            v = 4;
        }
        else if (port == "C")
        {
            v = 3;
        }
        else if (port == "D")
        {
            v = 2;
        }
        else
        {
            v = 1;
        }


        if (unit == "A")
        {
            u = 5;
        }
        else if (unit == "B")
        {
            u = 4;
        }
        else if (unit == "C")
        {
            u = 3;
        }
        else if (unit == "D")
        {
            u = 2;
        }
        else
        {
            u= 1;
        }

        total = t + v + u;
        perc = total / 3;
        
        if (perc <= 5 && perc >= 4)
        {
            TextBox8.Text = "A";
        }
        else if(perc <= 4 && perc >= 5)
        {
            TextBox8.Text = "B";
       }
        else if (perc <= 3 && perc >= 2)
        {
            TextBox8.Text = "C";
        }
        else if (perc <= 2 && perc >= 1)
        {
            TextBox8.Text = "D";
        }
        else
        {
            TextBox8.Text = "E";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DropDownList3.Items.Remove(DropDownList2.SelectedItem);
        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into marks values(@roll_no,@div_id,@term_no,@subject,@act,@port,@unit,@ce,@term)";
         cmd6.Parameters.AddWithValue("@roll_no", DropDownList1.SelectedValue);
        cmd6.Parameters.AddWithValue("@div_id",TextBox3.Text);

        cmd6.Parameters.AddWithValue("@term_no", DropDownList2.SelectedValue);
        cmd6.Parameters.AddWithValue("@subject", DropDownList3.SelectedValue);
        cmd6.Parameters.AddWithValue("@act", DropDownList4.SelectedValue);
        cmd6.Parameters.AddWithValue("@port",DropDownList5.SelectedValue );
        cmd6.Parameters.AddWithValue("@unit", DropDownList6.SelectedValue);
        cmd6.Parameters.AddWithValue("ce", TextBox8.Text);
        cmd6.Parameters.AddWithValue("term", DropDownList6.SelectedValue);
        db6.execute(cmd6);
        Panel1.Visible = false;
    }
}