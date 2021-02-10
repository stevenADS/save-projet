<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="Myapplication.Demo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:ListBox ID="lstLocation" runat="server">
            <asp:ListItem>Html</asp:ListItem>
            <asp:ListItem>c++</asp:ListItem>
            <asp:ListItem>php</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <br />
        <asp:RadioButton ID="chkASP" runat="server" Text="ASP" />
        <br />
        <asp:RadioButton ID="chkC" runat="server" Text="c++" />
        <br />
        <br />
        <br />
        nom
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="prenom"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new-dbConnectionString2 %>" SelectCommand="SELECT * FROM [essai]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        prenom<asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="nom" DataValueField="prenom"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:new-dbConnectionString3 %>" SelectCommand="SELECT * FROM [essai]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" style="width: 61px" />
    </form>
</body>
</html>
