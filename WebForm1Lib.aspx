<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1Lib.aspx.cs" Inherits="WebApplicationLib.WebForm1Lib" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        
        <asp:Table ID="Table1" runat="server" Height="126px" Width="526px">

            <asp:TableRow>
                <asp:TableCell Font-Size="Large" Font-Bold="True">

                    LIBRARY MANAGEMENT SYSTEM
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="STUDENT ID"></asp:Label>
                  </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="STUDENT NAME"></asp:Label>
                  </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label3" runat="server" Text="ISSUE DATE"></asp:Label>
                  </asp:TableCell>
                <asp:TableCell>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
                        <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="RETURN DATE"></asp:Label>
                  </asp:TableCell>
                <asp:TableCell>
                   <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                </asp:TableCell>
            </asp:TableRow>
                    
        </asp:Table>
       
       &nbsp;&nbsp;&nbsp;
        <div style="margin-left: 320px">
            <asp:Button ID="Button1" runat="server" Text="ISSUE" />

       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       <asp:Button ID="Button2" runat="server" Text="RETURN" />
              <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
              </div>  
    </form>
</body>
</html>
