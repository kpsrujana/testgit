<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ssreg.aspx.cs" Inherits="VirtualClass.ssreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 168px;
            height: 74px;
        }
        .style2
        {
            width: 313px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <center>
        <table style="width: 73%; background-image: url('images/ima3.jpg');" 
            frame="void" >
        <tr>
            <td class="style1" colspan="2" align="justify">
                &nbsp;
                <asp:Label ID="Label1" runat="server" Text="STUDENT REGISTRATION" ></asp:Label>
            </td>
           
          
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="USN"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
         <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label4" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            </td>
            <td class="style6">
                &nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Incorrect format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
         
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label6" runat="server" Text="Contact"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
         <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label7" runat="server" Text="adress"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
          
        </tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Label ID="Label8" runat="server" Text="username"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="usertext" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="usertext" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
        <tr><td class="style2">
                &nbsp;
                <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
            </td>
            <td class="style8">
                &nbsp;
                <asp:TextBox ID="passtext" runat="server" TextMode ="Password" MaxLength="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="passtext" ErrorMessage="fill this field" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
        <tr>
            <td class="style2">
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
            </td>
            <td class="style8">
                &nbsp;
                </td>
          
        </tr>
    </table>
    </center>
        <center><asp:Label ID="Label10" runat="server" ></asp:Label></center>
    </div>
    </form>
</body>
</html>
