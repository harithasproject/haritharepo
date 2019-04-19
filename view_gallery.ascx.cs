using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class teacher_view_gallery : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select pic,caption from gallery order by date DESC";
        SqlDataReader dr = db.executeread(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}