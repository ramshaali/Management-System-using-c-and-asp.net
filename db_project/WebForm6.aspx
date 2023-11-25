<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="db_project.WebForm6" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<style>

body, html {
  font-family: Arial, Helvetica, sans-serif;
  color: Navy;
}
*{
box-sizing: border-box;
}

.bg-img {
    background-image: url('https://superhqwallpapers.com/wp-content/uploads/2021/08/Light-Blue-Background-HD-1.jpg');
    min-height: 380px;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    position: relative;
    top: 0px;
    left: 0px;
    height: 601px;
}

/*Form container */
.container {
    position: absolute;
    right: 11px;
    margin: 20px;
    max-width: 300px;
    padding: 16px;
    background-color: white;
    top: 23px;
    height: 439px;
    width: 384px;
 }

/*submit button */
.button {
    border-style: none;
    border-color: inherit;
    border-width: medium;
    background-color: #04AA6D;
    color: white;
    padding: 16px 20px;
    cursor: pointer;
    opacity: 0.9;
    transition: all 0.5s;
    cursor: pointer;
    width: 100%;
    margin-top: 0px;
    }
.button span {
    cursor: pointer;
    display: inline-block;
    position: relative;
    transition: 0.5s;
    top: -2px;
    left: -19px;
    width: 66px;
    margin-right: 0px;
}

.button span:after
{
    content: '\00bb';
    position: absolute;
    opacity: 0;
    top: 0;
    right: -20px;
    transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

.button:hover {
  opacity: 1;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div><img src="http://nu.edu.pk/Content/images/NU-logo.jpg" style="margin-left: 0px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
        <div class="bg-img">
            <div class="container">
                <h1> <b> Form Submitted successfully! </b></h1>
                <p> &nbsp;</p>
                <label for="email"><b>Token Number</b></label>  
                <br>
                <asp:TextBox ID="TextBox1" runat="server" Width="257px" Height="40px"></asp:TextBox>
                <br />
                <br>
                <label for="psw"><b>Current Department</b></label>
                <br>
                <asp:TextBox ID="TextBox2" runat="server" Width="264px" Height="42px" style="margin-top: 0px"></asp:TextBox>
                <br />
                <br />
                 <label for="psw"><b>Days Required</b></label><br />
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="268px"></asp:TextBox>
                <br />
                <br />
               
                <asp:Button ID="Button1" runat="server" BackColor="#009900" ForeColor="White" OnClick="Button1_Click" style="margin-left: 39px" Text="BACK TO PORTAL" Width="239px" />
               
                <br>
            </div>
        </div>
        </form>
    </body>
</html>

