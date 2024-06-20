<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zjs_update.aspx.cs" Inherits="zjs_update" %>

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
        .box {
            display: flex;
            justify-content: center;
            height: 700px;
            width: 100%;
            background-color: #99bcdd;
        }
        .table_box {
            display: flex;
            justify-content: center;
            height: 60%;
            width: 70%;
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
            <div class="table_box">
                <table class="table">
                    <caption style="font-size: 30px;color: #2d4e76"><b>学生信息处理</b></caption>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="sno" DataValueField="sno" Font-Size="18px" Height="25px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender" Text="男" Font-Size="18px" Height="25px" />
                            &nbsp;<asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="女" Font-Size="18px" Height="25px" />
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="25px"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="25px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr align="center">
                        <td style="width: 50%">
                            <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#366F9B" BorderColor="#366F9B" Font-Size="20px" ForeColor="White" Height="35px" Width="100px" OnClick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Button" BackColor="#366F9B" BorderColor="#366F9B" Font-Size="20px" ForeColor="White" Height="35px" Width="100px" OnClick="Button2_Click" />
                            <asp:Button ID="Button3" runat="server" Text="Button" BackColor="#366F9B" BorderColor="#366F9B" Font-Size="20px" ForeColor="White" Height="35px" Width="100px" OnClick="Button3_Click" />
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>
    </form>
</body>
</html>
