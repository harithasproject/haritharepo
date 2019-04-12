using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_stud_admission : System.Web.UI.UserControl
{
    public static int xx;
    public static string fn;
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db2 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "select adm_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd1);
        dr.Read();
        int x = dr.GetInt32(0);
        x++;
        string divid = "ADM_" + x.ToString();
        TextBox1.Text = divid;


        dbconnect db3 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "update key_gen set adm_no=@x";
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
   



    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        String x = RadioButtonList1.Text;
        FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        fn = FileUpload1.FileName;

        if (x.Equals("Yes"))
        {
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            MultiView1.ActiveViewIndex = 1;


            dbconnect db5 = new dbconnect();
            SqlCommand cmd5 = new SqlCommand();
            cmd5.CommandText = "select guard_no from key_gen";
            SqlDataReader dr5 = db5.executeread(cmd5);
            dr5.Read();
            xx = dr5.GetInt32(0);
            xx++;
            string did = "GUARD_" + xx.ToString();
            TextBox14.Text = did;
            db5.execute(cmd5);
        }
    }
    protected void DropDownList3_SelectedIndexChanged1(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select div from division where class=@class";
        cmd4.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        while (dr2.Read())
        {
            DropDownList2.Items.Add(dr2.GetString(0));
        }
        db4.execute(cmd4);
    }
    protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
    {

        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select div_id from division where class=@class and div=@division";
        cmd4.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd4.Parameters.AddWithValue("@division", DropDownList2.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        dr2.Read();
        TextBox12.Text = dr2.GetString(0);
        db4.execute(cmd4);
    }
    protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select guardian_no from admission,div_allot where admission.adm_no=div_allot.adm_no and div_allot.div_id=@div_id";
        cmd4.Parameters.AddWithValue("@div_id", TextBox12.Text);
        //   cmd4.Parameters.AddWithValue("@division", DropDownList2.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        dr2.Read();
        TextBox12.Text = dr2.GetString(13);
        db4.execute(cmd4);

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
       // FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into admission values(@adm_no,@class,@name,@photo,@aadhar,@dob,@mother,@religion,@nation,@state,@medium,@prev_school,@tc,@guardian_no,@status)";
        cmd2.Parameters.AddWithValue("@adm_no", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd2.Parameters.AddWithValue("@name", TextBox2.Text);
       // cmd2.Parameters.AddWithValue("@photo", "~/photos/" + FileUpload1.FileName);
        cmd2.Parameters.AddWithValue("@photo", "~/photos/" + fn);
        cmd2.Parameters.AddWithValue("@aadhar", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@dob", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@mother", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@religion", TextBox6.Text);
        cmd2.Parameters.AddWithValue("@nation", TextBox7.Text);
        cmd2.Parameters.AddWithValue("@state", TextBox8.Text);
        cmd2.Parameters.AddWithValue("@medium", DropDownList2.SelectedValue);
        cmd2.Parameters.AddWithValue("@prev_school", TextBox10.Text);
        cmd2.Parameters.AddWithValue("@tc", TextBox11.Text);
        cmd2.Parameters.AddWithValue("@guardian_no", TextBox13.Text);
       
        cmd2.Parameters.AddWithValue("@status", "Notalloted");
        db5.execute(cmd2);
       
           
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db5 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();

        cmd2.CommandText = "insert into admission values(@adm_no,@class,@name,@pic,@aadhar,@dob,@mother,@religion,@nation,@state,@medium,@prev_school,@tc,@guardian_no,@status)";
        cmd2.Parameters.AddWithValue("@adm_no", TextBox1.Text);
        cmd2.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd2.Parameters.AddWithValue("@name", TextBox2.Text);
        cmd2.Parameters.AddWithValue("@pic", "~/photos/" + fn);
        cmd2.Parameters.AddWithValue("@aadhar", TextBox3.Text);
        cmd2.Parameters.AddWithValue("@dob", TextBox4.Text);
        cmd2.Parameters.AddWithValue("@mother", TextBox5.Text);
        cmd2.Parameters.AddWithValue("@religion", TextBox6.Text);
        cmd2.Parameters.AddWithValue("@nation", TextBox7.Text);
        cmd2.Parameters.AddWithValue("@state", TextBox8.Text);
        cmd2.Parameters.AddWithValue("@medium", DropDownList2.SelectedValue);
        cmd2.Parameters.AddWithValue("@prev_school", TextBox10.Text);
        cmd2.Parameters.AddWithValue("@tc", TextBox11.Text);
        cmd2.Parameters.AddWithValue("@guardian_no", TextBox13.Text);
        cmd2.Parameters.AddWithValue("@status", "Notalloted");
        db5.execute(cmd2);
       



        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set adm_no=@x";
        cmd3.Parameters.AddWithValue("@x", xx);
        db3.execute(cmd3);





        dbconnect db11 = new dbconnect();
        SqlCommand cmd11 = new SqlCommand();
        cmd11.CommandText = "insert into guardian values(@guardian_no,@gname,@occupation,@account_no,@address,@relation,@phone,@email)";
        cmd11.Parameters.AddWithValue("@guardian_no", TextBox13.Text);
        cmd11.Parameters.AddWithValue("@gname", TextBox14.Text);
        cmd11.Parameters.AddWithValue("@occupation", TextBox15.Text);
        cmd11.Parameters.AddWithValue("@account_no", TextBox16.Text);
        cmd11.Parameters.AddWithValue("@address", TextBox17.Text);
        cmd11.Parameters.AddWithValue("@relation", DropDownList4.SelectedValue);
        cmd11.Parameters.AddWithValue("@phone", TextBox18.Text);
        cmd11.Parameters.AddWithValue("@email", TextBox20.Text);
        db11.execute(cmd11);

        dbconnect db33 = new dbconnect();
        SqlCommand cmd33 = new SqlCommand();
        cmd33.CommandText = "update key_gen set guard_no=@x";
        cmd33.Parameters.AddWithValue("@x", xx);
        db33.execute(cmd33);

        dbconnect db34 = new dbconnect();
        SqlCommand cmd34 = new SqlCommand();
        String id = TextBox3.Text + TextBox14.Text;
        cmd34.CommandText = "insert into tbl_login values(@login_id,@password,@type)";
        cmd34.Parameters.AddWithValue("@login_id", id);
        cmd34.Parameters.AddWithValue("@password", TextBox18.Text);
        cmd34.Parameters.AddWithValue("@type", "guardian");
        db34.execute(cmd34);
    }
}