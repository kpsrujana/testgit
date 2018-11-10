<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="treport.aspx.cs" Inherits="VirtualClass.treport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 203px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table style="width: 100%;" bgcolor="#E1B7E1">
            <tr>
         
         
                <td class="style1" colspan=6 align="center">
                    <asp:Label ID="Label1" runat="server" Text="SEM WISE  REPORTS" 
                        BackColor="White"></asp:Label>
                    <br />
                    <br />
                </td>
               
            </tr>
            <tr>
                <td class="style1">
                    <asp:Button ID="Button1" runat="server" Text="First Sem" 
            onclick="Button1_Click" />
                </td>
                <td>                    <asp:Button ID="Button7" runat="server" onclick="Button7_Click" 
                        Text="Second Sem" />
                </td>
                <td>                    <asp:Button ID="Button8" runat="server" onclick="Button8_Click" 
                        Text="Third Sem" />
                </td><td>                    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                        Text="Fourth sem" />
                </td><td>                    <asp:Button ID="Button10" runat="server" onclick="Button10_Click" 
                        Text="Fifth Sem" />
                </td><td>
                    <asp:Button ID="Button11" runat="server" onclick="Button11_Click" 
                        Text="Sixth sem" />
                </td>
                
                
                </tr>
                <tr><td colspan=6>   <center>
                   
                    <br />
                   
                   <asp:GridView ID="GridView1" runat="server" Caption="SEM WISE DETAILS" 
                        >
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView></center></td></tr>
                </table>







                
             
            
               
                   <asp:GridView ID="GridView2" runat="server" Caption="Second Sem Details" >
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
                
           
                   <asp:GridView ID="GridView3" runat="server" Caption="Third Sem Details" >
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
            
           
                   <asp:GridView ID="GridView4" runat="server" Caption="Fourth Sem Details" >
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
             
                   <asp:GridView ID="GridView5" runat="server" Caption="Fifth Sem Details" >
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
             <asp:GridView ID="GridView6" runat="server" 
            Caption="Sixth Sem Details" >
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" /></asp:GridView>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admins.aspx">BACK </asp:HyperLink>
    
                  
        
        <br />
   
   </center>

    </div>
    </form>
</body>
</html>
