<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="db_project.WebForm2" %>




﻿

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css"/>


    <link rel="stylesheet" href="assets/fonts/ionicons.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css"/>
    <link rel="stylesheet" href="assets/css/Login-Form-Dark.css"/>
    <link rel="stylesheet" href="assets/css/styles.css"/>
    <script src="https://kit.fontawesome.com/a076d05399.js" ></script>


</head>

<body>
    <section class="login-dark">
        <form id="form1" runat="server">
            <div class="illustration">
                <h1> LOGIN</h1> <i class="icon ion-log-in"></i>
            </div>
            <div class="form-group">
                <asp:Label ID="Reg" runat="server" Text="Registration ID"></asp:Label><br/>
                <asp:TextBox ID="TextBox3" runat="server" Width="242px"></asp:TextBox>
                <br>
                <asp:Label ID="pwd" runat="server" Text="Password" ></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="242px" type ="password"></asp:TextBox>
                <br />

                <button class="btn btn-primary btn-block" type="submit">Log In</button></div>
        </form>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   
</body>

</html>

