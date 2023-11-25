<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="db_project.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <!DOCTYPE html>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>homepage</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/Features-Blue.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar-1.css">
    <link rel="stylesheet" href="assets/css/gradient-navbar.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/Tamplate-SB-Admin-on-BSS.css">
</head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-dark navbar-expand-md" id="app-navbar">
        <div class="container-fluid"><a class="navbar-brand" href="#"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <h3 class="text-center text-light">&nbsp;
                    <img src="http://nu.edu.pk/Content/images/Footer-Logo.png" width ="150"/>
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Welcome</h3><span class="navbar-text"></span>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item"></li>
                </ul><asp:LinkButton ID="LinkButton1"  class="btn btn-info btn-sm text-capitalize" runat="server" OnClick="LinkButton1_Click" Height="49px" Width="81px">Logout</asp:LinkButton>
            </div>
        </div>
    </nav>
    <section class="features-blue">
        <div class="container">
            <div class="alert alert-success" role="alert"><span><strong>Hello&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="265px"></asp:TextBox>
                </strong></span></div>
            <div data-bss-hover-animate="pulse" class="intro">
                <h2 class="text-center"></h2>
                <h1 class="display-4 text-info">&nbsp; &nbsp; &nbsp; &nbsp; All Requests</h1>
                <p class="text-center">
                    &nbsp;
                    <asp:GridView ID="GridView2" runat="server" Height="182px" Width="351px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
                </p>
            </div>
        </div>
        <div class="container">
            <div class="intro">
                <h2 class="text-center">
                    <asp:LinkButton class="btn btn-info btn-lg" data-toggle="modal" data-target="#modal1" type="button" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Width="270px">Process a Request</asp:LinkButton>
                  </h2>
                <br /> <br/>
                 <br /> <br/>
                <img class="shadow-none" src="http://nu.edu.pk/Content/images/Footer-Logo.png" height="150" width="500">
                <p class="text-center"></p>
            </div>
        </div>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    </form>
</body>

</html>