using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ZjsContent : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "欢迎进入系统！";
        this.Button1.Text = "查询";
        this.Button2.Text = "添加新生";
        this.Button3.Text = "信息处理";
        this.Button4.Text = "退出登录";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "System Content";
        if (Session["log"] == null)
        {
            Response.Redirect("Zjs_index.aspx");
        }
        else
        {
            SqlConnection sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
            sqlConnection.Open();
        }
        Label2.Text = DateTime.Now.ToLongDateString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Zjs_index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("zjs_select.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zjs_insert.aspx");
        // Server.Transfer("zjs_insert.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("zjs_update.aspx");
        // Server.Transfer("zjs_update.aspx");
    }
}