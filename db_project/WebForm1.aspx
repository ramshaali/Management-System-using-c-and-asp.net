<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="db_project.WebForm1" %>
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
                    <li class="nav-item"><asp:HyperLink class="btn btn-info btn-sm text-capitalize" type="button" NavigateUrl="~/WebForm4.aspx" ID="HyperLink1" runat="server" Width="110px"><br>HomePage<br></asp:HyperLink>
                
                    </li>
                </ul>
                
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp;<asp:TextBox ID="TextBox39" runat="server"></asp:TextBox>
                </strong></span></div>
            <div class="intro">
                <h3 class="display-4 text-center text-info">Degree Issuance Form</h3>
                <p class="text-center">&nbsp;</p>
        <div class="degree_issuance">
            <h3> Personal Information </h3>
            <label for="sname">Candidate Name in Block Letters: </label>
            &nbsp;&nbsp &nbsp<asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
              <br><br>
            &nbsp;<label for="reg">Registration No: </label>
            &nbsp;<asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            <br><br>
            <label for="cnic">CNIC : </label>
            &nbsp;<asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <br><br>
            <label for="fname">Father's name:  </label>
            &nbsp;<asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
            <br><br>  
            <label for="present">Present Address:  </label>
            &nbsp;<asp:TextBox ID="TextBox27" runat="server" Height="27px"></asp:TextBox>
            <br><br>
            <label for="perm">Permanent Address:  </label>
            &nbsp;<asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
            <br><br>
            <label for="em">Email: </label>
            &nbsp;&nbsp&nbsp;<asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
            &nbsp
            <label for="pno"> Phone no: </label>
            &nbsp;&nbsp;<asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
&nbsp;            <br>

             <label for="pno"> Date: </label>
            <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
            <br><br>
            <label for="img">Select Passport Size Photo:  
            <asp:TextBox type="file" ID="TextBox9" runat="server"></asp:TextBox>
            </label>&nbsp;
             <p>  ----------------------------------------------------------------------------------</p>
&nbsp;
            <h3> Degree Information </h3>
            <label for="deg">Degree: </label>
            &nbsp;&nbsp&nbsp;&nbsp
            <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
            <label for="major">Majors: </label>
            &nbsp;<asp:TextBox ID="TextBox33" runat="server"></asp:TextBox>
            <br><br>
            <label for="sec">Section: </label>
            &nbsp;&nbsp<asp:TextBox ID="TextBox34" runat="server"></asp:TextBox>
&nbsp;&nbsp
                        <br><br>
            <label for="yr">Year of Passing: </label>
            &nbsp;&nbsp&nbsp;&nbsp<asp:TextBox ID="TextBox36" runat="server"></asp:TextBox>
&nbsp;             <br><br>
            <label for="cgpa">CGPA: </label>
            &nbsp;<asp:TextBox ID="TextBox35" runat="server"></asp:TextBox>
             <p>  ----------------------------------------------------------------------------------</p>
            <br>

            <h3> Fee Information </h3>
            <label for="fee">Amount of Fee: </label>
            &nbsp;<asp:TextBox ID="TextBox37" runat="server"></asp:TextBox>
            &nbsp &nbsp <br>
            <label for="cno">Challan no:    </label>         &nbsp;
             <asp:TextBox ID="TextBox38" runat="server"></asp:TextBox>
            <br><br>
            <h5 style="text-align:center"> <u>I solemnly declare that the facts mentioned are correct </h5>  
            <h2 class="text-center">
                <u>
                <asp:LinkButton ID="LinkButton1" class="btn btn-info" data-toggle="modal" data-target="#modal1" type="button" runat="server" Height="36px" OnClick="LinkButton1_Click" Width="85px">Submit</asp:LinkButton>
                </u>
            </h2>
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
