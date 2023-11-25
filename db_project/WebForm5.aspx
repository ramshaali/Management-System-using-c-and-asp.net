<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="db_project.WebForm5" %>


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

<style>

.outer {
    width:20px; height:20px; text-align:center; margin-left: 40%;
}

   .outer-border{
    width:800px; height:650px; padding:20px; text-align:center; border: 10px solid powderblue ; margin-left: 120px;
}

.inner-dotted-border{
    width:750px; height:600px; padding:20px; text-align:center; border: 5px solid white;border-style: dotted;
}

.certification{
    font-size:45px; font-weight:bold;    color: powderblue;
}

.certify{
    font-size:20px;
}

.name{
    font-size:20px;    color: green;
}

.fs-30{
    font-size:20px;
}

.fs-20{
    font-size:20px;
}
    .relative {
        height: 140px;
        width: 155px;
    }
</style>
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
                </ul><asp:LinkButton class="btn btn-info btn-sm text-capitalize" type="button" ID="LinkButton2" runat="server" Height="37px" OnClick="LinkButton2_Click" Width="107px">HomePage</asp:LinkButton>
                
            </div>
        </div>
    </nav>
     <section class="features-blue">
        <div class="container">

                 <div class="outer-border">
        <div class="inner-dotted-border">
       <span class="certification">Certificate of Completion</span>
       <br><br>
       <span class="certify"><i>This is to certify that</i></span>
       <br><br>
       <span class="name"><b>&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp &nbsp</b></span>
      <span class="certify"><i> with Reg #  </i></span>
       <span class="name"><b>&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp &nbsp</b></span><br/><br/>
       <span class="certify"><i>has successfully completed the certification</i></span> <br/><br/>
       <span class="fs-30">&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp &nbsp</span> <br/><br/>
       <span class="fs-20">with the CGPA of  <b> &nbsp;&nbsp &nbsp<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;</b></span><br/><br/>
       <span class="certify"><i>dated</i></span><br>
      <span class="fs-30"><span class="date"><b><label for="date"> <asp:TextBox ID="date" runat="server"></asp:TextBox> </label> &nbsp;&nbsp &nbsp</b></br></span></span>    
        <br/>
         <div class="intro">
                <img class="shadow-none" src="http://nu.edu.pk/Content/images/Footer-Logo.png" height="80" width="300">
                <p class="text-center"></p>
        </div>
           
               
        </div>
      </section>
         <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
