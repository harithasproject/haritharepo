using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class office_view_stud : System.Web.UI.UserControl
{
    public static int r;
    protected void Page_Load(object sender, EventArgs e)
    {

        


        String did = Session["divid"].ToString(); 
        dbconnect db = new dbconnect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select div_allotment.adm_no from div_allotment,admission where divid=@did  and  div_allotment.adm_no=admission.adm_no order by name";
        cmd.Parameters.AddWithValue("@did", did);
        SqlDataReader dr2 = db.executeread(cmd);
         r = 1;
        while (dr2.Read())
        {
            String adm = dr2.GetString(0);
            dbconnect db1 = new dbconnect();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "update div_allotment set roll_no=@rol where adm_no=@adm";
            cmd1.Parameters.AddWithValue("@rol",r);
            cmd1.Parameters.AddWithValue("@adm", adm);
            r = r + 1;
            db1.execute(cmd1);

        }




        dbconnect db2 = new dbconnect();
        SqlCommand cmd2 = new SqlCommand();
        cmd2.CommandText = "select * from admission,div_allotment where admission.adm_no=div_allotment.adm_no";
        SqlDataReader dr3 = db2.executeread(cmd2);
        DataList1.DataSource = dr3;
        DataList1.DataBind();

    }
}