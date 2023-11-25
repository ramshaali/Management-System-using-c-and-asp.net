<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm11.aspx.cs" Inherits="db_project.WebForm11" %>





<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"  lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>degree_issue</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Features-Blue.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Tamplate-SB-Admin-on-BSS.css">

<style>
 .degree_issuance {
  width:600px;
  padding: 25px;
  border: 5px solid White;
  margin-left: -40px;
}
</style>
</head>


<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-dark navbar-expand-md" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <h3 class="text-center text-light">&nbsp;
                    <img src="http://nu.edu.pk/Content/images/Footer-Logo.png" width ="150"/>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome</h3><span class="navbar-text"></span>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"></li>
                </ul>    <asp:LinkButton class="btn btn-info btn-sm text-capitalize" type="button" ID="LinkButton2" runat="server" Height="88px" OnClick="LinkButton2_Click" Width="79px"><br>HomePage<br></asp:LinkButton>
            
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp;<asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                </strong></span></div>
            <div class="intro">
                <h3 class="display-4 text-center text-info">Finance Request Decision Form</h3>
                <p class="text-center">&nbsp;</p>
        <div class="degree_issuance">
            <h3> Request Information </h3>
            <label for="sname">Token No : </label>
            &nbsp;&nbsp &nbsp<asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
              <br>
            &nbsp;<label for="reg">FINANCE Request no: </label>
            &nbsp;<asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            <br><br>
             <p>  ----------------------------------------------------------------------------------</p>
&nbsp;
            <h3> Request Decision </h3>
            <label for="deg">Accepted( 1 or 0): </label>
            &nbsp;&nbsp&nbsp;&nbsp
            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox> <br>
            <label for="major">Comment: </label>
            &nbsp;<asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            <br><br>
             <p>  ----------------------------------------------------------------------------------</p>
            <asp:LinkButton  class="btn btn-info" data-toggle="modal" data-target="#modal1" type="button" ID="LinkButton1" runat="server" Height="59px" OnClick="LinkButton1_Click" Width="153px">Generate</asp:LinkButton>
            <br>

        
            </div>
                </u>
            </div>
        </div>
        <u>
            <div class="intro">
                <img class="shadow-none" src="http://nu.edu.pk/Content/images/Footer-Logo.png" height="150" width="500">
                <p class="text-center"></p>
            </div>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>

</html>

