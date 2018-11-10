<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profiles.aspx.cs" Inherits="VirtualClass.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 70px;
        }
        .style3
        {
            width: 85px;
        }
        .style4
        {
            width: 96px;
        }
        </style>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server">
    <div>


   
        <table style="width: 100%; height: 47px;" bgcolor="#D7F4EE">
          <tr><td class="style3">
        
              <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">PROFILE</asp:LinkButton></td>
        <td class="style4">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1" >UPLOAD</asp:LinkButton></td>
 
                
                    <td class="style1">
                    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" >LOGOUT</asp:LinkButton></td>
                    </tr>  
        </table>
    

    </div>
    <center><p>
        <img alt="" src="images/images (5).jpg" style="width: 1205px; height: 163px" />
    </p>
    </center> 
    <table style="width: 100%;">
        <tr><td><asp:Label ID="Label1" runat="server" ></asp:Label></td></tr>
    <tr><td align=center> <asp:Label ID="Label2" runat="server"></asp:Label></td></tr>
    <tr><td align="center"> <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="157px"></asp:TextBox></td></tr>
    <tr><td align="center"> <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="158px"></asp:TextBox></td></tr>
    <tr><td align="center"><asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="156px"></asp:TextBox></td></tr>
    <tr><td align="center"><asp:Button ID="Button1" runat="server" Text="UPDATE" 
            onclick="Button1_Click" BackColor="#66FFCC" ForeColor="Black" Height="36px" 
            Width="100px" /></td></tr>
            <tr><td align="center">
                <asp:Label ID="Label3" runat="server" ></asp:Label></td></tr>
    </table>
    
     

    </form>
    
</body>
</html>
