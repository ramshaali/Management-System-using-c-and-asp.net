<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="db_project.WebForm7" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
    div.relative
{
  position: relative;
        top: 0px;
        left: -1px;
    }

.outer
{
  position: relative;
  background-color: white;
}
body
{
background-color: PowderBlue;
}

.label_div {
 color: Navy ;
 font-family: Arial Rounded MT Bold;
}

#transcript {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#transcript td, #transcript th {
  border: 1px solid #ddd;
  padding: 8px;
}

#transcript tr:nth-child(even){background-color: #f2f2f2;}

#transcript tr:hover {background-color: #ddd;}

#transcript th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #0F52BA ;
  color: white;
}

</style>
</head>
<body>


    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
    <div class="outer">
        <div class="relative">&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton class="btn btn-info btn-lg shadow" type="button" ID="LinkButton1" runat="server" BackColor="#0099FF" OnClick="LinkButton1_Click1">HomePage</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="http://nu.edu.pk/Content/images/NU-logo.jpg" ></div>
   
        </div>
   
    <div class = "label_div">
    <h2> Student Transcript </h2>
   <br />
        <h3> Student Information </h3>
    <label for="sname">Name:
        <asp:TextBox ID="sname" runat="server"></asp:TextBox>
        </label>
    &nbsp;&nbsp &nbsp
    <label for="reg">Registration No: </label>
    <label for="reg">
        <asp:TextBox ID="reg" runat="server"></asp:TextBox>
        </label>
    &nbsp;<br><br>
 
   
    <h3> Degree Information </h3>
    <label for="deg">Degree: </label>
    <label for="deg">
        <asp:TextBox ID="deg" runat="server"></asp:TextBox>
        </label>
    &nbsp;&nbsp &nbsp
    <label for="major">Majors: </label>
    <label for="major">
        <asp:TextBox ID="major" runat="server"></asp:TextBox>
        </label>
    &nbsp;<br><br>
    <label for="sec">Section: </label>
    <label for="sec">
        <asp:TextBox ID="sec" runat="server"></asp:TextBox>
        </label>
    &nbsp;&nbsp &nbsp
    <label for="cgpa">CGPA: </label>
    <label for="cgpa">
        <asp:TextBox ID="cgpa" runat="server"></asp:TextBox>
        </label>
    &nbsp;<br />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="185px" Width="596px">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>
</div>
        

        <p>
            &nbsp;</p>
    </form>
</body>
</html>
