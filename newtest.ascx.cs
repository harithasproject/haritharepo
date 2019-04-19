using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class publicss_newtest : System.Web.UI.UserControl
{
    DateTime dt = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string a = Request.QueryString["id"];
        //TextBox1.Text = a;



       
     
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int d = dt.Day;
        int m = dt.Month;
        int y = dt.Year;
       
        Label1.Text = d.ToString();
        Label2.Text = m.ToString();
       
       
       Label3.Text = y.ToString();

        dbconnect db6 = new dbconnect();
        SqlCommand cmd6 = new SqlCommand();
        cmd6.CommandText = "insert into attendence values(@roll_no,@div_id,@date,@month,@year)";
        cmd6.Parameters.AddWithValue("@roll_no", "");
        cmd6.Parameters.AddWithValue("@div_id", "");
        cmd6.Parameters.AddWithValue("@date",d );
        cmd6.Parameters.AddWithValue("@month", m);
         cmd6.Parameters.AddWithValue("@year",y );
        db6.execute(cmd6);
    }
}