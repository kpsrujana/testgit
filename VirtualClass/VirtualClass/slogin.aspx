<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="slogin.aspx.cs" Inherits="VirtualClass.slogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 83px;
            height: 66px;
        }
        .style4
        {
            width: 229px;
            height: 45px;
        }
        .style5
        {
            height: 45px;
        }
        .style6
        {
            width: 229px;
            height: 37px;
        }
        .style7
        {
            height: 37px;
        }
        .style8
        {
            width: 229px;
            height: 52px;
        }
        .style9
        {
            height: 52px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        
        

        <table style="background-position: center center; width: 570px; color: #000000; font-size: large; text-decoration: blink; font-weight: 300;" 
            bgcolor="#CCFFFF" frame="below">
            <tr>
                <td class="style1" align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="STUDENT LOGIN"></asp:Label>
                </td>
             
                
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="User Name"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="usertext" runat="server" ></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Password"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="passtext" runat="server"  TextMode="Password" MaxLength="6"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" 
                    BackColor="#3399FF" />
            </td>
            <td class="style9">
                <asp:Button ID="Button2" runat="server" Text="Sign Up" 
                    onclick="Button2_Click" BackColor="#3399FF" />
                </td></tr>
        </table>
        </center>
        
   
</asp:Content>
