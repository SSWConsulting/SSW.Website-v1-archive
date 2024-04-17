
<%@ Page Language="C#" AutoEventWireup="false" CodeBehind="Tester.aspx.cs" Inherits=".Tester" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
         <asp:Label ID="Label2" runat="server" Text="PCID"></asp:Label>
        <asp:TextBox ID="txtPCID" runat="server" Text="12745072"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Client"></asp:Label>
        <asp:TextBox ID="txtClient" runat="server" Text="495453767"></asp:TextBox><br />        
        <asp:Label ID="Label4" runat="server" Text="ProductName"></asp:Label>
        <asp:TextBox ID="txtProduct" runat="server" Text="SSW eXtreme Emails!"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Button" /><br /><br />
        
        
        
    </div>
    </form>
</body>
</html>