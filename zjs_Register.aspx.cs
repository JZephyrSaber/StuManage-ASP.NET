using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zjs_Register : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label2.Text = "用&nbsp;户&nbsp;名：";
        this.Label3.Text = "密&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;码：";
        this.Label4.Text = "确认密码：";
        this.Button1.Text = "注册";
        this.Button2.Text = "返回";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Register";
        TextBox1.Focus();
        if (Session["log"] == null)
        {
            Response.Redirect("Zjs_index.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Zjs_index.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        String insert = "insert into user_s (username,password) values (@user,@pwd)";
        try
        {
            using (SqlCommand command =new SqlCommand(insert,sqlConnection))
            {
                command.Parameters.AddWithValue("@user", TextBox1.Text.Trim());     // 删除字符串前后的空格，生成一个新字符串
                command.Parameters.AddWithValue("@pwd", TextBox2.Text.Trim());  // Parameters 把存储过程执行结束后得到的参数传到程序里
                command.ExecuteNonQuery();   // 返回受影响的行数
                // command.ExecuteReader();
            }
            Response.Write("<script>alert('注册成功！');location.href='Zjs_index.aspx'</script>");  // 注册成功后弹窗，按确定按钮后自动跳转到登录首页
        }
        catch (Exception exception)
        {
            Response.Write("<script>alert('用户名已存在!')</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}