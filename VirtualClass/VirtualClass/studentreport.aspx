<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentreport.aspx.cs" Inherits="VirtualClass.studentreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="VIEW STUDENT DETAILS" 
                        onclick="Button1_Click" BorderColor="#66FFFF" Height="45px" />
                </td>
                <td>
                    &nbsp;<asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                         
                        Caption="STUDENT DETAILS" >
                         <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#CC66FF" Font-Bold="True" ForeColor="#0099FF" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />


                    </asp:GridView></td></tr>

        </table>
    </div>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admins.aspx">BACK </asp:HyperLink>
    </p>
    </form>
</body>
</html>
