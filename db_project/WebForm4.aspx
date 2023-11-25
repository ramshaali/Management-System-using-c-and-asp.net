<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="db_project.WebForm4" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>homepage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Features-Blue.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Tamplate-SB-Admin-on-BSS.css">
</head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-dark navbar-expand-md" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <h3 class="text-center text-light">
                    <img src="http://nu.edu.pk/Content/images/Footer-Logo.png" width ="150"/>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome to Onestop!</h3><span class="navbar-text"></span>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"></li>
                </ul><asp:LinkButton class="btn btn-info btn-sm text-capitalize" type="button" ID="LinkButton7" runat="server" Height="37px" OnClick="LinkButton7_Click" Width="103px">Logout</asp:LinkButton>
                
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp;</strong>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </span></div>
            <div class="intro">
                <h2 class="text-center">WE OFFER OUR STUDENTS...</h2>
                <p class="text-center">&nbsp;</p>
            </div>
            <div class="row features">
                <div class="col-sm-6 col-md-4 item"><i class="fas fa-user-graduate icon"></i>
                    <h3 class="name">Degree Issuance</h3>
                    <p class="description">Students of graduating year are only required to fill this form. As per the rules, the degree is issued to the student within 15 Days. Before submitting the form It's compulsory to pay Fee challan.</p><asp:LinkButton  class="btn btn-primary" type="button" ID="LinkButton3" runat="server" Height="31px" OnClick="LinkButton3_Click" Width="62px">Click</asp:LinkButton>
                    
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fas fa-hands-helping icon"></i>
                    <h3 class="name">Complaint Form</h3>
                    <p class="description">Fill this form in case of any discrepancy found in the issued degree. Filling this form means application reviewal. Please note that the complaint form is only liable in case of spelling mistakes, incorrect input of data or printing error<br> <asp:LinkButton class="btn btn-primary" type="button" ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Height="35px" Width="51px">Click</asp:LinkButton>
                       
                </div>
                <div class="col-sm-6 col-md-4 item"><i class="fa fa-list-alt icon"></i>
                    <h3 class="name">View Transcript</h3>
                    <p class="description">Students of FAST can view the list of all courses taken together with the credit hours and the&nbsp; grades earned in all courses.<br></p> <asp:LinkButton class="btn btn-primary" type="button" ID="LinkButton4" runat="server" Height="32px" OnClick="LinkButton4_Click" Width="56px">Click</asp:LinkButton>
                    
                   
                    
                </div>
               
            </div>
        </div>
        <div class="container">
            <div class="intro">
                <h2 class="text-center"></h2>
                    <img class="shadow-none" src="http://nu.edu.pk/Content/images/Footer-Logo.png" height="150" width="500">
                <p class="text-center"></p>
            </div>
        </div>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>

</html>

