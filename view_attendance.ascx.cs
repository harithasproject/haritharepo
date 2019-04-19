using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_view_attendance : System.Web.UI.UserControl
{
    public static int d;
    protected void Page_Load(object sender, EventArgs e)
    {
         DateTime dt= DateTime.Now;
      // TextBox4.Text = dt.ToShortDateString();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
    String month= DropDownList2.SelectedValue;
     

        switch (month)
        {
         
            case "January":
                d = 1;
                break;
            case "February":
                d=2;
                break;
            case "March":
                d = 3;
                break;
            case "April":
                d = 4;
                break;
            case "May":
                d = 5;
                break;
            case "June":
                d = 6;
                break;
            case "July":
                d = 7;
                break;
            case "August":
                d = 8;
                break;
            case "September":
                d = 9;
                break;
            case "October":
                d = 10;
                break;
            case "November":
                d=11;
                break;
            case "December":
                d = 12;
                break;

            default:
                break;


        }
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select date from attendence where month=@no";
        cmd1.Parameters.AddWithValue("@no",d);
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();


        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select convert(varchar(11),date,120)date from attendence where roll_no=@r";
        cmd.Parameters.AddWithValue("@r", DropDownList1.SelectedValue);
        SqlDataReader dr1 = db.executeread(cmd);
        DataList1.DataSource = dr1;
        DataList1.DataBind();
        

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
}