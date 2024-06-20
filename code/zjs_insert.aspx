<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zjs_insert.aspx.cs" Inherits="zjs_insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
        .table_add {
            display: flex;
            justify-content: center;
            height: 60%;
            width: 70%;
        }
        .box {
            display: flex;
            justify-content: center;
            height: 700px;
            width: 100%;
            /*margin-top: 10px;*/
            /*padding-top: 20px;*/
            background-color: #99bcdd;
        }
        .table {
            width: 50%;
            background-color: #c4e3f3;
            color: #2d4e76;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
            <div class="table_add">
                <table class="table">
                    <caption style="font-size: 30px;color: #2d4e76"><b>请输入要添加的学生信息</b></caption>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="必须填写学号！" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="25px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="必须填写性别！" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Height="25px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="必须填写年龄！" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Button" Font-Size="20px" Height="35px" Width="100px" BackColor="#366F9B" BorderColor="#366F9B" ForeColor="White" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Button" Font-Size="20px" Height="35px" Width="100px" BackColor="#366F9B" BorderColor="#366F9B" CausesValidation="False" ForeColor="White" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="输入有误！" ShowMessageBox="True" ShowSummary="False" />
            </div>
        </div>
    </form>
</body>
</html>
