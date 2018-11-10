<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teacher.aspx.cs" Inherits="VirtualClass.teacher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 219px;
            height: 54px;
        }
        .style3
        {
            width: 113px;
            height: 54px;
        }
        .style17
        {
            width: 219px;
            height: 22px;
        }
        .style21
        {
            width: 219px;
            height: 66px;
        }
        .style24
        {
            width: 219px;
            height: 60px;
        }
        .style28
        {
            width: 219px;
            height: 57px;
        }
        .style32
        {
            width: 113px;
            height: 60px;
        }
        .style33
        {
            width: 113px;
            height: 57px;
        }
        .style34
        {
            width: 113px;
            height: 66px;
        }
        .style35
        {
            width: 113px;
            height: 22px;
        }
        .style36
        {
            width: 77px;
            height: 60px;
        }
        .style37
        {
            width: 77px;
            height: 57px;
        }
        .style38
        {
            width: 77px;
            height: 66px;
        }
        .style39
        {
            width: 77px;
            height: 22px;
        }
        .style40
        {
            width: 77px;
            height: 54px;
        }
        .style41
        {
            width: 101px;
            height: 60px;
        }
        .style42
        {
            width: 101px;
            height: 57px;
        }
        .style43
        {
            width: 101px;
            height: 66px;
        }
        .style44
        {
            width: 101px;
            height: 22px;
        }
        .style45
        {
            width: 101px;
            height: 54px;
        }
    </style>
</head>
<body background="images/ima3.jpg">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    
        <center>
            <p>
        <img alt="" src="images/images (5).jpg" style="width: 1205px; height: 163px" />
    </p>
    </center> 
     <center>

        <table style="width: 71%; height: 232px;" bgcolor="#CCFFFF">
            <tr>
            <td class="style32" >
                <asp:Label ID="Label1" runat="server" Text="First semeter" ForeColor="#3333CC"></asp:Label>
                </td>
                <td class="style24" align="left">
                <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#CC99FF" />
                </td>
                 
                <td class="style36" align="justify" >
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Add" onclick="Button1_Click1" 
                        BackColor="#CC99FF"  />
                </td>
               
               <td class="style41"> 
                    <asp:Label ID="Label2" runat="server" ></asp:Label> &nbsp;</td>
                    
                      </tr>
            <tr>
               <td class="style33" >
                   <asp:Label ID="Label3" runat="server" Text="Second Semester" 
                       ForeColor="#3333CC"></asp:Label>
                </td>
                <td class="style28" align="left">
                <asp:FileUpload ID="FileUpload2" runat="server" Width="211px" 
                        BorderColor="#CC99FF" />
                </td>
                <td class="style37" align="justify">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Add" onclick="Button2_Click" 
                        BackColor="#CC99FF" />
                </td>
               <td class="style42">
                   <asp:Label ID="Label4" runat="server" ></asp:Label></td>
            </tr>
            <tr>
               <td class="style32">
                   <asp:Label ID="Label5" runat="server" Text="Third Semester" ForeColor="#3333CC"></asp:Label>
                </td>
                <td class="style24" align="left">
                <asp:FileUpload ID="FileUpload3" runat="server" BorderColor="#CC99FF" />
                </td>
               
                <td class="style36" align="justify">
                    &nbsp;
                    <asp:Button ID="Button3" runat="server" Text="Add" onclick="Button3_Click" 
                        BackColor="#CC99FF" />
                </td>
               <td class="style41"> 
                   <asp:Label ID="Label6" runat="server" ></asp:Label></td>
            </tr>
            <tr>
               <td class="style34">
                   <asp:Label ID="Label7" runat="server" Text="Fourth semester" 
                       ForeColor="#3333CC"></asp:Label>
                </td>
            <td class="style21" align="left">
                &nbsp;
        <asp:FileUpload ID="FileUpload4" runat="server" BorderColor="#CC99FF" />
                &nbsp;</td>
            <td class="style38" align="justify">
                &nbsp;
                <asp:Button ID="Button4" runat="server" Text="add" onclick="Button4_Click" 
                    BackColor="#CC99FF" />
                &nbsp;</td><td class="style43">
                    <asp:Label ID="Label10" runat="server" ></asp:Label></td></tr>
             <tr>
                <td class="style35">
                    <asp:Label ID="Label8" runat="server" Text="Fifth semester" ForeColor="#3333FF"></asp:Label>
                 </td>
            <td class="style17" align="left">
                &nbsp;
        <asp:FileUpload ID="FileUpload6" runat="server" BorderColor="#CC99FF" />
                 &nbsp;</td>
            <td class="style39" align="justify">&nbsp;&nbsp;<asp:Button ID="Button5" 
                    runat="server" Text="add" onclick="Button5_Click" BackColor="#CC99FF" 
                     />
                &nbsp;&nbsp;</td><td class="style44">
                    <asp:Label ID="Label11" runat="server" ></asp:Label></td></tr>
                <tr class="style39">
                   <td class="style3">
                       <asp:Label ID="Label9" runat="server" Text="Sixth semester" ForeColor="#3333CC"></asp:Label>
                    </td>&nbsp;

        
                    <td class="style1" align="left">
        <asp:FileUpload ID="FileUpload7" runat="server" BorderColor="#CC99FF" />
                    </td>
                        <td class="style40" align="justify">
                             &nbsp;
                             <asp:Button ID="Button6" runat="server" Text="add" onclick="Button6_Click" 
                                BackColor="#CC99FF"   />&nbsp;</td>
                            <td class="style45"><asp:Label ID="Label12" runat="server" ></asp:Label></td>
                            </tr>
        </table>
        </center> 



        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1" >BACK</asp:LinkButton>
    </div>
    </form>
</body>
</html>
