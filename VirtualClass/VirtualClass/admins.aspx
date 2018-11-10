<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admins.aspx.cs" Inherits="VirtualClass.admins" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server">
    <div>
    <center>
    <img alt="" src="images/images (5).jpg" style="width: 1205px; height: 163px"  />
    </center>
    <br />
    <br />
    <br />
    <br />
       <center>
        
                  <asp:LinkButton ID="LinkButton3" runat="server" BorderColor="#CCFFFF" 
                        onclick="LinkButton3_Click" Font-Size="X-Large" BackColor="#CCFFFF">TEACHER DETAILS</asp:LinkButton>
                  <br />
                <br />
                    <asp:LinkButton ID="LinkButton2" runat="server" BorderColor="#CCFFCC" 
                        onclick="LinkButton2_Click" Font-Size="X-Large" BackColor="#CCFFFF">STUDENT DETAILS</asp:LinkButton>
                  <br />
               <br />
                   
                       <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#CCFFFF" 
            onclick="LinkButton1_Click" Font-Size="X-Large">SEMWISE DETAILS</asp:LinkButton>
           
       
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">LOGOUT</asp:HyperLink>
           
       
  </center>
    
    </div>
    </form>
</body>
</html>
