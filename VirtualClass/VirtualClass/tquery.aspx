<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tquery.aspx.cs" Inherits="VirtualClass.tquery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="View Queries" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" 
            >
        <Columns>
            <asp:CommandField ShowSelectButton="true" SelectText="Answer" />
        </Columns>
        
        </asp:GridView> </p>
    <p>
        &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="query description"></asp:Label>        
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="submit" onclick="Button1_Click" />
    </p>
    <p>
            &nbsp;</p>
    </form>
</body>
</html>
