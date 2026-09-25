<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="library.aspx.cs" Inherits="WebApplib1.library" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
        <h2>Library Book Issue & Return</h2>

<table>

<tr>
<td>Student ID</td>
<td>
<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Student Name</td>
<td>
<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
</td>
</tr>

<tr>
<td>Book Name</td>
<td>
<asp:DropDownList ID="ddlBook" runat="server">
<asp:ListItem>C Programming</asp:ListItem>
<asp:ListItem>Java</asp:ListItem>
<asp:ListItem>Python</asp:ListItem>
<asp:ListItem>DBMS</asp:ListItem>
</asp:DropDownList>
</td>
</tr>

<tr>
<td>Issue Date</td>
<td>
<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</td>
</tr>

<tr>
<td>Return Date</td>
<td>
<asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
</td>
</tr>

<tr>
<td colspan="2" align="center">

<asp:Button ID="btnIssue" runat="server" Text="Issue Book" OnClick="btnIssue_Click" />

&nbsp;

<asp:Button ID="btnReturn" runat="server" Text="Update Return Book" OnClick="btnReturn_Click" />

<asp:Button ID="btnDelete" runat="server" Text="Delete Issue Book" OnClick="btnDelete_Click" Height="26px" />

</td>
</tr>

</table>

<br />

<asp:GridView
ID="GridView1"
runat="server"
AutoGenerateColumns="False"
DataKeyNames="StudentID"
DataSourceID="SqlDataSource1">

<Columns>

<asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" SortExpression="StudentID" />

<asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />

<asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />

<asp:BoundField DataField="IssueDate" HeaderText="IssueDate" SortExpression="IssueDate" />

<asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" SortExpression="ReturnDate" />

</Columns>

</asp:GridView>


<asp:SqlDataSource
    ID="SqlDataSource1"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:LibraryDBConnectionString2 %>"
    SelectCommand="SELECT * FROM [Library1]"
    InsertCommand="INSERT INTO [Library1] (StudentID, StudentName, BookName, IssueDate, ReturnDate) VALUES (@StudentID, @StudentName, @BookName, @IssueDate, @ReturnDate)"
    UpdateCommand="UPDATE [Library1] SET StudentName=@StudentName, BookName=@BookName, IssueDate=@IssueDate, ReturnDate=@ReturnDate WHERE StudentID=@StudentID"
    DeleteCommand="DELETE FROM [Library1] WHERE StudentID=@StudentID">

    <InsertParameters>
        <asp:ControlParameter Name="StudentID" ControlID="txtID" PropertyName="Text" />
        <asp:ControlParameter Name="StudentName" ControlID="txtName" PropertyName="Text" />
        <asp:ControlParameter Name="BookName" ControlID="ddlBook" PropertyName="SelectedValue" />
        <asp:ControlParameter Name="IssueDate" ControlID="Calendar1" PropertyName="SelectedDate" />
        <asp:ControlParameter Name="ReturnDate" ControlID="Calendar2" PropertyName="SelectedDate" />
    </InsertParameters>

    <UpdateParameters>
        <asp:ControlParameter Name="StudentID" ControlID="txtID" PropertyName="Text" />
        <asp:ControlParameter Name="StudentName" ControlID="txtName" PropertyName="Text" />
        <asp:ControlParameter Name="BookName" ControlID="ddlBook" PropertyName="SelectedValue" />
        <asp:ControlParameter Name="IssueDate" ControlID="Calendar1" PropertyName="SelectedDate" />
        <asp:ControlParameter Name="ReturnDate" ControlID="Calendar2" PropertyName="SelectedDate" />
    </UpdateParameters>

    <DeleteParameters>
        <asp:ControlParameter Name="StudentID" ControlID="txtID" PropertyName="Text" />
    </DeleteParameters>

</asp:SqlDataSource>
        


    </form>
</body>
</html>
