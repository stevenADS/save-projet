<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo1.aspx.cs" Inherits="Myapplication.Demo1" Trace="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; color: #000000; font-weight: 300; background-color: #0000FF;">
            Un nouveau départ ! Let gO<br />
            <br />
            <br />
        </div>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
         <br />
         <br />
            <asp:Button ID="Button1" runat="server" OnClick="btnSubmit_Click" Text="Display" />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Insert" />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Update" style="height: 26px" />
            <br />
            <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button3_Click" />
            <br />
            <br />
            <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                <asp:BoundField DataField="Prenom" HeaderText="Prenom" SortExpression="Prenom" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:new-dbConnectionString6 %>" SelectCommand="SELECT DISTINCT * FROM [Essai1] ORDER BY [Nom] DESC"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="idinscription" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="idinscription" HeaderText="idinscription" ReadOnly="True" SortExpression="idinscription" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="adresse" HeaderText="adresse" SortExpression="adresse" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:new-dbConnectionString7 %>" DeleteCommand="DELETE FROM [inscription] WHERE [idinscription] = @idinscription" InsertCommand="INSERT INTO [inscription] ([idinscription], [date], [adresse], [email]) VALUES (@idinscription, @date, @adresse, @email)" SelectCommand="SELECT * FROM [inscription]" UpdateCommand="UPDATE [inscription] SET [date] = @date, [adresse] = @adresse, [email] = @email WHERE [idinscription] = @idinscription">
            <DeleteParameters>
                <asp:Parameter Name="idinscription" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idinscription" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="adresse" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="idinscription" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
            <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" style="width: 61px" />
        <div>
        </div>
    </form>
</body>
</html>
