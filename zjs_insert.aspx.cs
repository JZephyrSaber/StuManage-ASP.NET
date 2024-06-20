using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class zjs_insert : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "学号";
        this.Label2.Text = "姓名";
        this.Label3.Text = "性别";
        this.Label4.Text = "年龄";
        this.Label5.Text = "专业";
        this.Button1.Text = "确定添加";
        this.Button2.Text = "返回主页";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Add Student Information";
        TextBox1.Focus();
        if (Session["log"] == null)
        {
            Response.Redirect("Zjs_index.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("ZjsContent.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String s1 = TextBox1.Text.Trim();
        String s2 = TextBox2.Text.Trim();
        String s3 = TextBox3.Text.Trim();
        String s4 = TextBox4.Text.Trim();
        String s5 = TextBox5.Text.Trim();
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        String insert = "insert into stu_infor values (@no,@name,@gender,@age,@major)";
        if (TextBox2.Text==null)
        {
            s2 = " ";
        }

        if (TextBox5.Text==null)
        {
            s5 = " ";
        }
        try
        {
            using (SqlCommand command=new SqlCommand(insert,sqlConnection))
            {
                command.Parameters.AddWithValue("@no", s1);
                command.Parameters.AddWithValue("@name", s2);
                command.Parameters.AddWithValue("@gender", s3);
                command.Parameters.AddWithValue("@age", s4);
                command.Parameters.AddWithValue("@major", s5);
                command.ExecuteNonQuery();
            }
            Response.Write("<script>alert('Success!');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('Wrong!Usernumber is repetition!');</script>");
            TextBox1.Text = "";
        }
    }
}