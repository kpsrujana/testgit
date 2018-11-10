<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="VirtualClass.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
    <table  style="background-position: center center; width: 570px; color: #000000; font-size: large; text-decoration: blink; font-weight: 300;" 
            bgcolor="#CCFFFF" frame="below">
        <tr>
            <td colspan=2>
               ADMIN LOGIN
            </td>
         
        </tr>
        <tr>
            <td>
              USERNAME
            </td>
            <td>
                <asp:TextBox ID="admintext" runat="server"></asp:TextBox>  
            </td>
           
        </tr>
        <tr>
            <td>
                PASSWORD
            </td>
            <td>
                <asp:TextBox ID="passtext" runat="server" TextMode="Password"
                ></asp:TextBox>
            </td>
         
        </tr>
        <tr><td>
            <asp:Button ID="Button1" runat="server" Text="LOGIN" 
                onclick="Button1_Click" BackColor="#0099FF" /></td></tr>
    </table>
    </center>
</asp:Content>
