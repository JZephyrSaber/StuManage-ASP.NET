<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zjs_Register.aspx.cs" Inherits="zjs_Register" %>

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
        .box1 {
            width: 100%;
            display: flex;
            justify-content: center;
            height: 700px;
            
        }
        .reg_box {
            display: flex;
            justify-content: center;
            width: 100%;
            height: 100%;
            background-color: #c4e3f3;
        }
        .tab_1 {
            width: 60%;
            height: 50%;
            background-color: #99bcdd;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box1">
            <div class="reg_box">
                <table class="tab_1">
                    <caption style="font-size: 35px;color: #2D4E76"><b>用户注册</b></caption>
                    <tr>
                        <td style="width: 50%" align="right">
                            <asp:Label ID="Label2" runat="server" Font-Size="22px" Text="Label" ForeColor="#2D4E76"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="180px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="必须填写用户名！" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%" align="right">
                            <asp:Label ID="Label3" runat="server" Font-Size="22px" Text="Label" ForeColor="#2D4E76"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="180px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="必须填写密码！" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 50%" align="right">
                            <asp:Label ID="Label4" runat="server" Font-Size="22px" Text="Label" ForeColor="#2D4E76"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="180px" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="必须确认密码！" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="两次密码不一致！" ForeColor="Red">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="Button1" runat="server" Text="Button" Font-Size="20px" Height="35px" Width="80px" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" Font-Size="20px" Height="35px" Width="80px" CausesValidatio
                                        n="False" CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </div>
            &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" EnableViewState="False" HeaderText="ErrorWarning!" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>
