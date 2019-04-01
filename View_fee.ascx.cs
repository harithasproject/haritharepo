using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_View_fee : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from fee_pattern";
        SqlDataReader dr = db.executeread(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
}