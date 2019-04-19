using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class publicss_view_eventgallery : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String no=Session["event_no"].ToString();
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select pic,caption from gallery where event_no=@no order by date DESC ";
        cmd.Parameters.AddWithValue("@no",no);
        SqlDataReader dr = db.executeread(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}