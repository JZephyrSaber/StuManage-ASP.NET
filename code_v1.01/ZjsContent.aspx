<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ZjsContent.aspx.cs" Inherits="ZjsContent" %>

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
        .big_box{
            display: flex;
            background-color: #99b0dd;
            padding: 4px;
        }
        .box1 {
            width: 25%;
        }
        .box2 {
            width: 25%;
        }
        .box3 {
            width: 25%;
        }
        .box4 {
            width: 25%;
        }
        .bottom_box {
            width: 100%;
            height: 60%;
            display: flex;
            justify-content: center;
            background-color: #99bcdd;
        }
        .l_box {
            display: flex;
            justify-content: center;
        }
        .auto-style1 {
            width: 87%;
            height: 100%;
            margin: 0 10px 10px 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="l_box">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="30px" ForeColor="#366F9B"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Italic="False" Font-Strikeout="False" ForeColor="#471D21"></asp:Label>
            </div>
            <div class="big_box" align="center">
                <div class="box1">
                    <asp:Button ID="Button1" runat="server" Font-Size="20px" Height="35px" Text="Button" Width="90px" BackColor="#CDE8F3" BorderColor="#CDE8F3" ForeColor="#2D4E76" OnClick="Button1_Click" />
                </div>
                <div class="box2">
                    <asp:Button ID="Button2" runat="server" Font-Size="20px" Height="35px" Width="90px" Text="Button" BackColor="#CDE8F3" BorderColor="#CDE8F3" ForeColor="#2D4E76" OnClick="Button2_Click" />
                </div>
                <div class="box3">
                    <asp:Button ID="Button3" runat="server" Font-Size="20px" Height="35px" Width="90px" Text="Button" BackColor="#CDE8F3" BorderColor="#CDE8F3" ForeColor="#2D4E76" OnClick="Button3_Click" />
                </div>
                <div class="box4">
                    <asp:Button ID="Button4" runat="server" Font-Size="20px" Height="35px" Width="90px" Text="Button" BackColor="#CDE8F3" BorderColor="#CDE8F3" ForeColor="#2D4E76" OnClick="Button4_Click" />
                </div>
            </div>
            <div class="bottom_box">
                <img class="auto-style1" src="img/cmu_logo.jpg" /></div>
        </div>
    </form>
</body>
</html>
