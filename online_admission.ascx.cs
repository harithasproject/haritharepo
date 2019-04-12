using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_online_admission : System.Web.UI.UserControl
{
    public static int xx;
    public String sk,did;
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = Request.QueryString["id"];
        TextBox1.Text = a;
          dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from application where applic_no=@no";
        cmd2.Parameters.AddWithValue("@no", a);
        SqlDataReader dr1 = db2.executeread(cmd2);
        dr1.Read();
       TextBox2.Text = dr1.GetInt32(1).ToString();
        TextBox3.Text = dr1.GetString(2);
        Image1.ImageUrl = dr1.GetString(3);
        TextBox4.Text = dr1.GetString(4);
       TextBox5.Text = dr1.GetDateTime(5).ToShortDateString();
       TextBox21.Text = dr1.GetString(13);
        TextBox6.Text = dr1.GetString(14);
        TextBox7.Text = dr1.GetString(15);
        TextBox8.Text = dr1.GetString(16);
        TextBox9.Text = dr1.GetString(17);
        TextBox10.Text = dr1.GetString(18);
       TextBox11.Text = dr1.GetString(19);


        if (!IsPostBack)
        {
            dbconnect db4 = new dbconnect();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select distinct class from division";
            SqlDataReader dr2 = db4.executeread(cmd4);
            while (dr2.Read())
            {
                DropDownList1.Items.Add(dr2.GetInt32(0).ToString());
            }
            db4.execute(cmd4);
        }


        
    }
   
   /* protected void Button2_Click(object sender, EventArgs e)
    {
         //FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db4 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();

        cmd1.CommandText = "insert into admission values(@adm_no,@class,@name,@photo,@aadhar,@dob,@mother,@religion,@nation,@state,@medium,@prev_school,@tc)";
        cmd1.Parameters.AddWithValue("@adm_no", "");
        cmd1.Parameters.AddWithValue("@class",Label2.Text);
        cmd1.Parameters.AddWithValue("@name", TextBox2.Text);
     //   cmd1.Parameters.AddWithValue("@photo", "~/photos/" + FileUpload1.FileName);
        cmd1.Parameters.AddWithValue("@aadhar",TextBox3.Text);
        cmd1.Parameters.AddWithValue("@religion",TextBox13.Text);
        cmd1.Parameters.AddWithValue("@nation",TextBox14.Text);
        cmd1.Parameters.AddWithValue("@state",TextBox15.Text);
        cmd1.Parameters.AddWithValue("@medium",TextBox18.Text);
        cmd1.Parameters.AddWithValue("@prev_school",TextBox16.Text);
        cmd1.Parameters.AddWithValue("@tc",TextBox17.Text);
        db4.execute(cmd1);
    }*/


   /* protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
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
        }*/

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
         /* dbconnect db4 = new dbconnect();
            SqlCommand cmd4 = new SqlCommand();
            cmd4.CommandText = "select div_id from division where class=@class and div=@division";
           cmd4.Parameters.AddWithValue("@class", DropDownList1.SelectedValue);
        cmd4.Parameters.AddWithValue("@division",DropDownList2.SelectedValue);
            SqlDataReader dr2 = db4.executeread(cmd4);
            dr2.Read();
            TextBox12.Text = dr2.GetString(0);
            db4.execute(cmd4);
        */

            dbconnect db5 = new dbconnect();
            SqlCommand cmd5 = new SqlCommand();
            cmd5.CommandText = "select name from admission,div_allot where admission.adm_no=div_allot.adm_no and div_allot.div_id=@div_id";
            cmd5.Parameters.AddWithValue("@div_id",TextBox12.Text);
           
            SqlDataReader dr3 = db5.executeread(cmd5);
            while (dr3.Read())
            {
                DropDownList3.Items.Add(dr3.GetString(2));
            }
            db5.execute(cmd5);
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbconnect db4 = new dbconnect();
        SqlCommand cmd4 = new SqlCommand();
        cmd4.CommandText = "select guardian_no from admission,div_allot where admission.adm_no=div_allot.adm_no and div_allot.div_id=@div_id";
        cmd4.Parameters.AddWithValue("@div_id",TextBox12.Text);
     //   cmd4.Parameters.AddWithValue("@division", DropDownList2.SelectedValue);
        SqlDataReader dr2 = db4.executeread(cmd4);
        dr2.Read();
        TextBox12.Text = dr2.GetString(13);
        db4.execute(cmd4);

    }
    
    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        String x = RadioButtonList1.Text;

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
            TextBox13.Text = did;
            db5.execute(cmd5);
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        


        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select adm_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd2);
        dr.Read();
        xx = dr.GetInt32(0);
        xx++;
        string divid = "ADM_" + xx.ToString();
        //TextBox1.Text = divid;
        db2.execute(cmd2);

      dbconnect db4 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "insert into admission values(@adm_no,@class,@name,@photo,@aadhar,@dob,@mother,@religion,@nation,@state,@medium,@prev_school,@tc,@guardian_no)";
        cmd1.Parameters.AddWithValue("@adm_no", divid);
        cmd1.Parameters.AddWithValue("@class",TextBox2.Text);
        cmd1.Parameters.AddWithValue("@name", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@photo",Image1.ImageUrl);
        cmd1.Parameters.AddWithValue("@aadhar", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@dob", TextBox5.Text);
        cmd1.Parameters.AddWithValue("@mother", TextBox21.Text);
        cmd1.Parameters.AddWithValue("@religion", TextBox6.Text);
        cmd1.Parameters.AddWithValue("@nation", TextBox7.Text);
        cmd1.Parameters.AddWithValue("@state", TextBox8.Text);
        cmd1.Parameters.AddWithValue("@medium", TextBox9.Text);
        cmd1.Parameters.AddWithValue("@prev_school", TextBox10.Text);
        cmd1.Parameters.AddWithValue("@tc", TextBox11.Text);
        cmd1.Parameters.AddWithValue("@guardian_no", TextBox21.Text);
        db4.execute(cmd1);
       


        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set adm_no=@x";
        cmd3.Parameters.AddWithValue("@x", xx);
        db3.execute(cmd3);

    }
    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
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
    protected void DropDownList2_SelectedIndexChanged1(object sender, EventArgs e)
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
    protected void Button2_Click(object sender, EventArgs e)
    {

        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select adm_no from key_gen";
        SqlDataReader dr = db2.executeread(cmd2);
        dr.Read();
        xx = dr.GetInt32(0);
        xx++;
        string divid = "ADM_" + xx.ToString();
        //TextBox1.Text = divid;
        db2.execute(cmd2);

        dbconnect db4 = new dbconnect();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = "insert into admission values(@adm_no,@class,@name,@photo,@aadhar,@dob,@mother,@religion,@nation,@state,@medium,@prev_school,@tc,@guardian_no)";
        cmd1.Parameters.AddWithValue("@adm_no", divid);
        cmd1.Parameters.AddWithValue("@class", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@name", TextBox3.Text);
        cmd1.Parameters.AddWithValue("@photo", Image1.ImageUrl);
        cmd1.Parameters.AddWithValue("@aadhar", TextBox4.Text);
        cmd1.Parameters.AddWithValue("@dob", TextBox5.Text);
        cmd1.Parameters.AddWithValue("@mother", TextBox21.Text);
        cmd1.Parameters.AddWithValue("@religion", TextBox6.Text);
        cmd1.Parameters.AddWithValue("@nation", TextBox7.Text);
        cmd1.Parameters.AddWithValue("@state", TextBox8.Text);
        cmd1.Parameters.AddWithValue("@medium", TextBox9.Text);
        cmd1.Parameters.AddWithValue("@prev_school", TextBox10.Text);
        cmd1.Parameters.AddWithValue("@tc", TextBox11.Text);
        cmd1.Parameters.AddWithValue("@guardian_no", TextBox21.Text);
        db4.execute(cmd1);




        dbconnect db3 = new dbconnect();
        SqlCommand cmd3 = new SqlCommand();
        cmd3.CommandText = "update key_gen set adm_no=@x";
        cmd3.Parameters.AddWithValue("@x", xx);
        db3.execute(cmd3);





        dbconnect db11 = new dbconnect();
        SqlCommand cmd11 = new SqlCommand();
        cmd11.CommandText = "insert into guardian values(@guardian_no,@gname,@occupation,@account_no,@address,@relation,@phone,@email)";
        cmd11.Parameters.AddWithValue("@guardian_no",TextBox13.Text );
        cmd11.Parameters.AddWithValue("@gname", TextBox14.Text);
        cmd11.Parameters.AddWithValue("@occupation", TextBox15.Text);
        cmd11.Parameters.AddWithValue("@account_no", TextBox16.Text);
        cmd11.Parameters.AddWithValue("@address",TextBox17.Text);
        cmd11.Parameters.AddWithValue("@relation",DropDownList4.SelectedValue);
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