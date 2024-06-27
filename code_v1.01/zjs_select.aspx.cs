using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class zjs_select : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Button1.Text = "查询";
        this.Button2.Text = "主页";
        this.Label4.Text = "查询学生信息";
        this.Label1.Text = "学号：";
        this.Label2.Text = "姓名：";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Select";
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
        GridView2.Visible = false;
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        String no = TextBox1.Text.Trim();
        String name = TextBox2.Text.Trim();
        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from stu_infor where sno='" + no + "' or " + "sname='" + name + "'", sqlConnection);
        DataSet ds = new DataSet();
        sqlDataAdapter.Fill(ds, "stu_table");
        if (ds.Tables["stu_table"].Rows.Count != 0)
        {
            GridView1.DataSource=ds.Tables["stu_table"];
            GridView1.DataBind();
            GridView1.HeaderRow.Cells[0].Text = "学号";
            GridView1.HeaderRow.Cells[1].Text = "姓名";
            GridView1.HeaderRow.Cells[2].Text = "性别";
            GridView1.HeaderRow.Cells[3].Text = "年龄";
            GridView1.HeaderRow.Cells[4].Text = "专业";
        }
        else
        {
            Response.Write("<script>alert('无结果！');</script>");
            TextBox1.Text = "";
            TextBox2.Text = "";
            GridView2.Visible = true;
            GridView1.Visible = false;
        }
    }
}