using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //OleDbConnection cn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|MCH醫院醫療儀器管理公告版.mdb");
        string strConn = ConfigurationManager.ConnectionStrings["accDB"].ConnectionString;
        OleDbConnection cn = new OleDbConnection(strConn);
        cn.Open();
        OleDbCommand oDBcomStr = new OleDbCommand();
        oDBcomStr.Connection = cn;
        



     

        //insert 新增
       /* DataSet ds1 = new DataSet();
        OleDbDataAdapter oDBda1 = new OleDbDataAdapter("insert into 負責人([負責人編號],[負責人],[代號])VALUES (111,'aaa','K')", cn);
        oDBda1.Fill(ds1, "123");*/
        
        //Select 取值
        DataSet ds = new DataSet();
        OleDbDataAdapter oDBda = new OleDbDataAdapter("select * From 負責人", cn);
        oDBda.Fill(ds, "123");
        Label1.Text = ds.Tables["123"].Rows[1][1].ToString();
        GridView1.DataSource = ds.Tables["123"];
        GridView1.DataBind();

        cn.Close();
    }
    
}