<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="VirtualClass.student" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 30px;
        }
    </style>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
     <center><p>
        <img alt="" src="images/images (5).jpg" style="width: 1205px; height: 163px" />
    </p>
    </center> 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click1">LOGOUT</asp:LinkButton>
        &nbsp;<center>
    <table bgcolor="#CCFFFF"><tr><td>
        <asp:Label ID="Label1" runat="server" Text="First semester" ForeColor="#3333CC"></asp:Label></td>
        <td><asp:Button ID="Button1" runat="server" Text="View" onclick="Button1_Click1" 
                BackColor="#CC99FF" /></td></tr>
        
        <tr><td colspan="2">
        <asp:GridView ID="GridView1" runat="server" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1" Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify">

        <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="true" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#CC66FF" Font-Bold="True" ForeColor="#0099FF" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />

        </asp:GridView>
        </td></tr>

        <tr><td>
            <asp:Label ID="Label2" runat="server" Text="Second Semester" 
                ForeColor="#3333CC"></asp:Label></td>
        <td>
            <asp:Button ID="Button2" runat="server" Text="View" onclick="Button2_Click" 
                BackColor="#CC99FF" /></td></tr>
        <tr><td colspan="2">
            <asp:GridView ID="GridView2" runat="server" 
                onselectedindexchanged="GridView2_SelectedIndexChanged" Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify">
                    <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td></tr>

        <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="third semester" ForeColor="#3333CC"></asp:Label>
            </td>
        <td>
            <asp:Button ID="Button3" runat="server" Text="view" onclick="Button3_Click" 
                BackColor="#CC99FF" />
            </td></tr>
        <tr>
        <td colspan="2">
            <asp:GridView ID="GridView3" runat="server" 
                onselectedindexchanged="GridView3_SelectedIndexChanged" Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify">

                    <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            </td></tr>
            <tr><td>
                <asp:Label ID="Label4" runat="server" Text="Fourth semester" 
                    ForeColor="#3333CC"></asp:Label>
                </td><td>
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="View" 
                        BackColor="#CC99FF" />
                </td></tr>
            <tr><td colspan="2">
            <asp:GridView ID="GridView4" runat="server" onselectedindexchanged="GridView4_SelectedIndexChanged" 
                Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify">

                    <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                </td></tr>
            <tr><td class="style1">
                <asp:Label ID="Label5" runat="server" Text="Fifth Semester" ForeColor="#3333CC"></asp:Label>
                </td><td class="style1">
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="View" 
                        BackColor="#CC99FF" BorderColor="#CC99FF" />
                </td></tr>
            <tr><td colspan="2">
            <asp:GridView ID="GridView5" runat="server" onselectedindexchanged="GridView5_SelectedIndexChanged" 
                Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify">

                    <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                </td></tr>
            <tr><td>
                <asp:Label ID="Label6" runat="server" Text="Sixth Semeter" ForeColor="#3333CC"></asp:Label>
                </td><td>
                    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="View" 
                        BackColor="#CC99FF" />
                </td></tr>
            <tr><td colspan="2">
            <asp:GridView ID="GridView6" runat="server" onselectedindexchanged="GridView6_SelectedIndexChanged" 
               Caption="PDF FILES" CellPadding="5" HorizontalAlign="Justify" >

                    <RowStyle BackColor="#E3EAEB" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" SelectText="Download" ControlStyle-ForeColor="Blue"/>
        </Columns>
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#7C6F57" />
        <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
                </td></tr>
        </table>
        </center>
        <br />
        
        
        <br />
        <br /><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </div>
    </form>
</body>
</html>
