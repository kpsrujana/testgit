<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="treg.aspx.cs" Inherits="VirtualClass.treg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 322px;
            height: 53px;
        }
        .style2
        {
            width: 300px;
        }
        .style3
        {
            width: 300px;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
        .style5
        {
            width: 300px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
        }
    </style>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server">
    <div>
    <center>
        <table style="width:65%; background-image: url('images/ima3.jpg'" 
            >
            <tr>
                <td class="style1" colspan="2" align="justify">
                    <asp:Label ID="Label7" runat="server" Text="Teacher Registration" Height="27px" 
                        Width="196px"></asp:Label>
                </td>
                
              
            </tr>
            
            <tr>
            
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Teacher Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            
                <tr>
                <td class="style2" valign="middle">
                    <asp:Label ID="Label3" runat="server" Text="contact"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="10" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
              
            </tr>
            <tr>
                <td class="style2" style="padding: inherit; margin: auto">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Incorrect Format" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label9" runat="server" Text="Adress"></asp:Label>
                    </td>
                <td class="style6">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="fill this field" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="User name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="teachertext" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="teachertext" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
             <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="passtext" runat="server" MaxLength="6" TextMode="Password" 
                       ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="passtext" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
               
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                </td>
                <td class="style4">
                    &nbsp;</td>
                
            </tr>
        </table>
    </center>
    <center>
        <asp:Label ID="Label8" runat="server" ></asp:Label></center>
    </div>
    </form>
</body>
</html>
