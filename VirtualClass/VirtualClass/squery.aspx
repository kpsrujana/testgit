<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="squery.aspx.cs" Inherits="VirtualClass.squery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 30px;
            width: 323px;
        }
        .style2
        {
            height: 30px;
            width: 351px;
        }
        .style4
        {
            width: 351px;
        }
        .style5
        {
            width: 323px;
        }
    </style>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server">
    <center>
    <table style="width:62%;">
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="QUERY"></asp:Label>
                &nbsp;</td>
                <td class="style4"></td>
            
           
        </tr>
     <%--   <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            
        </tr>--%>
        <tr>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="Subject"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
        <td class="style5">
            <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label></td>
        <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td></tr>
            <tr>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" Height="20px" 
                    onclick="Button1_Click" /></td>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server" ></asp:Label>
                </td></tr>
    </table>
      </center>
      <center>
          <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ANSWERED QUERIES</asp:LinkButton>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
  </center>
  
    <div>
    
    </div>
    </form>
</body>
</html>
