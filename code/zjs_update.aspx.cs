using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows;

public partial class zjs_update : System.Web.UI.Page
{
    public void DropDataBind()
    {
        SqlConnection SqlConnection = new SqlConnection("server=.;database=web_project;Integrated Security=true;");
        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select * from stu_infor", SqlConnection);
        DataSet ds = new DataSet();
        sqlDataAdapter.Fill(ds, "stu_table");
        if (ds.Tables["stu_table"].Rows.Count != 0)
        {
            DropDownList1.DataSource = ds.Tables["stu_table"];
            DropDownList1.DataTextField = ds.Tables["stu_table"].Columns["sno"].ToString();
            DropDownList1.DataBind();
            DataRow dr = ds.Tables["stu_table"].Rows[0];
            TextBox1.Text = dr[1].ToString().Trim();
            if (dr[2] != Convert.DBNull)
            {
                if ((string)dr[2]=="男")
                {
                    RadioButton1.Checked = true;
                }
                else
                {
                    RadioButton2.Checked = true;
                }
            }
            else
            {
                RadioButton1.Checked = false;
                RadioButton2.Checked = false;
            }
            
            TextBox2.Text = dr[3].ToString().Trim();
            TextBox3.Text = dr[4].ToString().Trim();
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        this.Label1.Text = "请选择学号";
        this.Label2.Text = "姓名";
        this.Label3.Text = "性别";
        this.Label4.Text = "年龄";
        this.Label5.Text = "专业";
        this.Button1.Text = "更新";
        this.Button2.Text = "删除";
        this.Button3.Text = "返回主页";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "DataUpdate";
        if (Session["log"] == null)
        {
            Response.Redirect("Zjs_index.aspx");
        }
        else
        {
            Button1.Attributes["OnClick"] = "return confirm('Are you sure to update this?')";
            Button2.Attributes["OnClick"] = "return confirm('Are you sure to delete?')";      // 删除确认
            if (!IsPostBack)
            {
                DropDataBind();
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ZjsContent.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        String del = "delete from stu_infor where sno=@sid";
        try
        {
            using (SqlCommand command = new SqlCommand(del,sqlConnection))
            {
                command.Parameters.AddWithValue("@sid", DropDownList1.SelectedValue);
                command.ExecuteNonQuery();
            }
            
            DropDataBind();
            
        }
        catch (Exception exception)
        {
            Console.WriteLine(exception);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConnection = new SqlConnection();
        sqlConnection.ConnectionString = "server=.;database=web_project;Integrated security=true;"; // 设定连接字符串
        sqlConnection.Open();
        try
        {
            String update = "update stu_infor set sname=@name,sgender=@gender,sage=@age,smajor=@major where sno=@sid";
            using (SqlCommand command = new SqlCommand(update,sqlConnection))
            {
                command.Parameters.AddWithValue("@sid", DropDownList1.SelectedValue);
                command.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                if (RadioButton1.Checked)
                {
                    command.Parameters.AddWithValue("@gender", RadioButton1.Text);
                }
                else
                {
                    command.Parameters.AddWithValue("@gender", RadioButton2.Text);
                }

                command.Parameters.AddWithValue("@age", TextBox2.Text.Trim());
                command.Parameters.AddWithValue("@major", TextBox3.Text.Trim());
                command.ExecuteNonQuery();
            }
        }
        catch (Exception exception)
        {
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        // 一定要将DropDownList的AutoPostBack属性打开
        SqlConnection SqlConnection = new SqlConnection("server=.;database=web_project;Integrated Security=true;");
        String sid = DropDownList1.SelectedValue.Trim();
        SqlDataAdapter sqlD = new SqlDataAdapter("select * from stu_infor where sno='" + sid + "'", SqlConnection);
        DataSet dataSet = new DataSet();
        sqlD.Fill(dataSet, "stu_table");
        DataRow dataRow = dataSet.Tables["stu_table"].Rows[0];
        TextBox1.Text = dataRow[1].ToString().Trim(); 
        if ((string)dataRow[2]=="男")
        {
            RadioButton1.Checked = true;
            RadioButton2.Checked = false;
        }
        else
        {
            RadioButton2.Checked = true;
            RadioButton1.Checked = false;
        }

        TextBox2.Text = dataRow[3].ToString().Trim();
        TextBox3.Text = dataRow[4].ToString().Trim();
    }
}
