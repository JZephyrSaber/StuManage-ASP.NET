<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zjs_index.aspx.cs" Inherits="Zjs_index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
        }
        .divbox {
            height: 100%;
            background: pink;
        }
        .left {
            float: left;
            width: 40%;
            height: 100%;
            background: silver;
        }
        .right {
            margin-left: 40%;
            height: 100%;
            background-color: skyblue;
        }
        .r_top {
            position: absolute;
            top: 0;
            width: 60%;
            height: 25%;
            background-color: #cde8f3;
        }
        .r_center {
            position: absolute;
            top: 25%;
            bottom: 25%;
            width: 60%;
            background-color: #99bcdd;
            padding-top: 5%;
        }
        .r_bottom {
            position: absolute;
            bottom: 0;
            width: 60%;
            height: 25%;
            background-color: #f3fafa;
        }
        .auto-style1 {
            width: 45%;
            height: 100%;
        }
        .auto-style3 {
            width: 100%;
            height: 703px;
        }
        .cap {
            font-size: 35px;
            color: #1E5670;
        }
        .form1 {
            width: 90%;
            height: 60%;
        }
        .container {
            display: flex;
            justify-content: center;
            bottom: 0;
            left: 30%;
            right: 30%;
            position: absolute;
        }
    </style>
</head>
<body>

    <div class="divbox">
        <div class="left">
            <img class="auto-style3" src="img/cmu-dormitory.jpg" /></div>
        <div class="right">
            <div class="r_top" align="center">
                <br><br><br>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Label" Font-Size="XX-Large" ForeColor="#1E5670"></asp:Label>
            </div>
            <div class="r_center" align="center">
                <form class="form1" id="form1" runat="server">
                    <table class="auto-style1">
                        <caption class="cap">LOGIN</caption>
                        <tr align="center" style="width: 50%">
                            <td style="margin-right: 0" align="right">
                                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="30px" ForeColor="#1E5670"></asp:Label>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox1" runat="server" Font-Size="20px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr align="center" style="width: 50%;margin-top: 100px">
                            <td align="right">
                                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="30px" ForeColor="#1E5670"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Font-Size="20px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2" style="padding-top: 20px">
                                <asp:Button ID="Button1" runat="server" Text="Button" Font-Size="20px" OnClick="Button1_Click" Height="40px" Width="100px" />
                                <asp:Button ID="Button2" runat="server" Text="Button" Font-Size="20px" Height="40px" Width="100px" OnClick="Button2_Click" />
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="r_bottom">
                <%-- <br><br> --%>
                <div class="container">©2021 - 2024 By JZephyr</div>
            </div>
        </div>
    </div>
</body>
</html>
