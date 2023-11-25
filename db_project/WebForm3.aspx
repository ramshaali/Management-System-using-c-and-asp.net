<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="db_project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
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
                </ul> <asp:LinkButton class="btn btn-info btn-sm text-capitalize" type="button" ID="LinkButton3" runat="server" Height="36px" OnClick="LinkButton3_Click" Width="104px">HomePage</asp:LinkButton>
                
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp;<asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                </strong></span></div>
            <div class="intro">
                <h2 class="display-4 text-center text-info">Degree Issuance Complaint Form</h2>
                <h3 style="font-size: 14px"> Fill in the follwing details to apply for the complaint form in case of any discrepancy found in the issued degree. Filling this form means application reviewal. Please note that the complaint form is only liable in case of spelling mistakes, incorrect input of data or printing error.</h3>
                <p class="text-center">&nbsp;</p>
        <div class="degree_issuance">
            <h3> Personal Information </h3>

            <label for="sname">Candidate Name in Block Letters:
            <asp:TextBox ID="sname" runat="server"></asp:TextBox>
            </label>
            &nbsp;&nbsp &nbsp
            <label for="reg">Registration No: </label>
            <label for="reg">
            <asp:TextBox ID="reg" runat="server"></asp:TextBox>
            </label>
            &nbsp;<br>
            <label for="cnic">CNIC : </label>
            <label for="cnic">
            <asp:TextBox ID="cnic" runat="server"></asp:TextBox>
            </label>
            &nbsp;<br>
            <label for="fname">Father's name:  </label>
            <label for="fname">
            <asp:TextBox ID="fname" runat="server"></asp:TextBox>
            </label>
            &nbsp;<br><br>  
               <p>-----------------------------------------------------------------------------------</p>
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
            &nbsp;<br>
            <label for="sec">Section: </label>
            <label for="sec">
            <asp:TextBox ID="sec" runat="server"></asp:TextBox>
            </label>
            &nbsp;&nbsp &nbsp <br>
            <label for="yr">Year of Passing: </label>
            <label for="yr">
            <asp:TextBox ID="yr" runat="server"></asp:TextBox>
            </label>
            &nbsp;&nbsp &nbsp <br>
            <label for="cgpa">CGPA: </label>
            <label for="cgpa">
            <asp:TextBox ID="cgpa" runat="server"></asp:TextBox>
            </label>
            &nbsp;<br><br>
            <h5 style="text-align:center"> <u>I solemnly declare that the facts mentioned are correct</u> </h5>    
         </div>
        </div>
            <asp:LinkButton  class="btn btn-info" data-toggle="modal" data-target="#modal1" type="button" ID="LinkButton1" runat="server" Height="39px" OnClick="LinkButton1_Click" Width="166px">Submit</asp:LinkButton>
       </div>
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
