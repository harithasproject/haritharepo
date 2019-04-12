using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class office_division_allotment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
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



    


      dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from admission where class=@class and status=@x";
        cmd.Parameters.AddWithValue("@class",Convert.ToInt32(DropDownList1.SelectedItem.Text));
       cmd.Parameters.AddWithValue("@x", "Notalloted");
        SqlDataReader dr = db.executeread(cmd);
        DataList1.DataSource = dr;
        DataList1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.Visible = true;
    }
}