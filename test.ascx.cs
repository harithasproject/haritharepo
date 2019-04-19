using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class publicss_test : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db=new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from faculty";
        SqlDataReader dr = db.executeread(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        /*FileUpload1.SaveAs(Server.MapPath("~/photos/" + FileUpload1.FileName));
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();      
        cmd.CommandText = "insert into testt values (@pics)";
        cmd.Parameters.AddWithValue("@pics", "~/photos/" + FileUpload1.FileName);*/



    }
    
}