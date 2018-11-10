<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tlogin.aspx.cs" Inherits="VirtualClass.tlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
    .style2
    {
        width: 497px;
    }
    .style3
    {
        width: 553px;
    }
        .style4
        {
            height: 67px;
        }
        .style5
        {
            width: 553px;
            height: 44px;
        }
        .style6
        {
            width: 497px;
            height: 44px;
        }
        .style7
        {
            width: 553px;
            height: 43px;
        }
        .style8
        {
            width: 497px;
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
  
        &nbsp;
        
    <center>
        <table style="background-position: center center; width: 570px; color: #000000; font-size: large; text-decoration: blink; font-weight: 300;" 
            bgcolor="#CCFFFF">
            <tr>
                <td colspan="2" align="center" class="style4">
                    <asp:Label ID="Label2" runat="server" Text="TEACHER REGISTRATION" 
                        ForeColor="Black"></asp:Label></td>
             
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label1" runat="server" Text="Teacher name" ForeColor="Black"></asp:Label>
                </td>
                <td class="style8">
                    <asp:TextBox ID="teachertext" runat="server"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label3" runat="server" Text="PASSWORD" ForeColor="Black"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="passtext" runat="server" TextMode="Password" MaxLength="6"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
                <td class="style3" align="center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Login" 
                        BackColor="#3399FF" />
                 </td>
                <td class="style2" align="center">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                        Text="Sign Up" ForeColor="Black" BackColor="#3399FF" />
                 </td>
               
            </tr>
        </table>
        </center>
        
   
</asp:Content>
