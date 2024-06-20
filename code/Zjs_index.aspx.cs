using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Zjs_index : System.Web.UI.Page
{
    
    
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "用户名";
        this.Label2.Text = "密码";
        this.Button1.Text = "登录";
        this.Button2.Text = "注册";
        this.Label3.Text = "欢迎访问本系统";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "学生系统";
        TextBox1.Focus();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        SqlCommand command = new SqlCommand("select * from user_s where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        command.Connection = sqlConnection;     // 命定下达是在sqlConnection内
        SqlDataReader dr = command.ExecuteReader();
        if (dr.HasRows)     // 如果有行
        {
            Session["log"] = 1;
            Response.Redirect("ZjsContent.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>alert('用户名或密码错误');</script>");
            TextBox2.Text = "";
            TextBox2.Focus();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("zjs_Register.aspx");
    }
}
