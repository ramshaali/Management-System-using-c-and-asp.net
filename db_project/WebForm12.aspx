<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm12.aspx.cs" Inherits="db_project.WebForm12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>dir_view</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+JP">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans">
    <link rel="stylesheet" href="assets/css/Features-Blue.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Tamplate-SB-Admin-on-BSS.css">
</head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-dark navbar-expand-md" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <h3 class="text-center text-light">&nbsp;
                    <img src="http://nu.edu.pk/Content/images/Footer-Logo.png" width ="150"/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Welcome</h3><span class="navbar-text"></span>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"></li>
                </ul> <asp:HyperLink class="btn btn-info btn-sm text-capitalize" type="button" NavigateUrl="~/WebForm2.aspx" ID="HyperLink1" runat="server" Height="61px" Width="78px"><br>Logout<br></asp:HyperLink>
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp; &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </strong></span></div>
            <div class="intro">
                <h3 class="display-4 text-center text-info">Director's View</h3>
                <div class="card">
                    <div class="card-body" style="background: #d4edda;">
                        <p class="text-info card-text">Director of FAST NUCES can view all sorts of requests related to Degree Issuance of students, which is processed by Onestop Student Service. Click on the type of request to view further details.</p>
                    </div>
                </div>
                <p class="text-center">
                    

                </p>
            </div>
        </div>
        <div class="container">
            <div class="intro">
                <h2 class="text-center" style="margin-top: -60px;"><asp:LinkButton   class="btn btn-info btn-lg shadow" type="button" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Width="137px">Processed Requests</asp:LinkButton>
                </h2><h2 class="text-center" style="margin-top: -60px;"><asp:LinkButton class="btn btn-info btn-lg shadow" type="button" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="136px">Pending Requests</asp:LinkButton></h2>
               <h2 class="text-center" style="margin-top: -60px;"><asp:LinkButton class="btn btn-info btn-lg shadow" type="button" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" Width="136px">All Requests</asp:LinkButton></h2>
               <h2 class="text-center" style="margin-top: -60px;"> <asp:LinkButton class="btn btn-info btn-lg shadow" type="button"  ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Width="138px">Today's Requests</asp:LinkButton>
                  
                </h2>
                <h2 class="text-center" style="margin-top: -60px;"> <asp:LinkButton  class="btn btn-info btn-lg shadow" type="button" ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Width="139px">History</asp:LinkButton></h2>
             <%-- <div></div>
                <div></div>--%>
                <img class="shadow-none" src="http://nu.edu.pk/Content/images/Footer-Logo.png" height="150" width="500" style="margin-top: 200px;"/>
                <p class="text-center"></p>
            </div>
        </div>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
    </form>
</body>

</html>
