<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zjs_select.aspx.cs" Inherits="zjs_select" %>

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
        .big_box {
            width: 100%;
            height: 700px;
        }
        .top_box {
            display: flex;
            justify-content: center;
            background-color: #99BCDD;
            padding: 30px;
            height: 5%;
        }
        .bottom {
            display: flex;
            justify-content: center;
            background-color: #d9e4e6;
            height: 80%;
            padding: 0;
            margin: 0;
            width: 100%;
        }
        .cap {
            display: flex;
            justify-content: center;
            background-color: #99BCDD;
        }
        .in_box1 {
            margin-right: 20px;
        }
        .in_box2 {
            margin-left: 20px;
            margin-right: 20px;
        }
        .in_box3 {
            margin-left: 20px;
            padding-top: 3.5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="big_box">
            <div class="cap">
            <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Size="30px" ForeColor="#334F5B"></asp:Label>
            </div>
            <div class="top_box">
                <div class="in_box1">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="20px" ForeColor="White" Font-Bold="False"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" EnableTheming="True" Height="20px" Width="170px"></asp:TextBox>
                </div>
                <div class="in_box2">
                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="20px" ForeColor="White"></asp:Label>
                    <asp:TextBox ID="TextBox2" Height="20px" Width="170px" runat="server"></asp:TextBox>
                </div>
                <div class="in_box3">
                    <asp:Button ID="Button1" runat="server" Text="Button" Font-Size="15px" Height="25px" Width="55px" BackColor="#EFEEEE" BorderColor="#1E5670" Font-Bold="True" ForeColor="#1E5670" OnClick="Button1_Click" />
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Button" Font-Size="15px" Height="25px" Width="55px" OnClick="Button2_Click" BackColor="#EFEEEE" BorderColor="#1E5670" Font-Bold="True" ForeColor="#1E5670" />
                </div>
            </div>
            <div class="bottom">
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="25%" Width="600px">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sno" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100%" Width="600px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="学号" ReadOnly="True" SortExpression="sno" />
                        <asp:BoundField DataField="sname" HeaderText="姓名" SortExpression="sname" />
                        <asp:BoundField DataField="sgender" HeaderText="性别" SortExpression="sgender" />
                        <asp:BoundField DataField="sage" HeaderText="年龄" SortExpression="sage" />
                        <asp:BoundField DataField="smajor" HeaderText="专业" SortExpression="smajor" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:web_projectConnectionString %>" SelectCommand="SELECT * FROM [stu_infor]"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
