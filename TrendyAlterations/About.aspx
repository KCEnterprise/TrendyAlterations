<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TrendyAlterations.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trendy Alterations.com:About Us</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style13 {
            height: 50px;
            width: 821px;
            position: absolute;
            top: 710px;
            left: 703px;
            margin-top: 2px;
            bottom: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <header id="header" class="alt">
            <div class="logo">
                <asp:Image ID="Image1" runat="server" href="homepage.aspx" ImageUrl="~/Images/TrendyAlterationsLogo.png" CssClass="auto-style1" Height="208px" Width="225px" />
            </div>
            <div class="inner" style="left: 4px; top: -3px">
                <h1><a href="homepage.aspx">Trendy Alterations</a></h1>
                <p>"SNIPPED TO FIT"</p>
            </div>

        </header>

        <ul class="list-inline d-flex justify-content-center" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link " id="home-tab" data-toggle="tab" href="homepage.aspx" role="tab" aria-controls="home" aria-selected="true">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="About.aspx" role="tab" aria-controls="profile" aria-selected="false">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="messages-tab" data-toggle="tab" href="Packages.aspx" role="tab" aria-controls="messages" aria-selected="false">Packages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="settings-tab" data-toggle="tab" href="Contact.aspx" role="tab" aria-controls="settings" aria-selected="false">Contact Us</a>
            </li>
        </ul>

        <!-- Banner -->
        <section id="intro" class="main">
            <span class="icon fa-diamond major"></span>
            <h2>About Us</h2>
            <p>
                Trendy Alterations originated in the middle of the night on the last ounce of energy<br />
                We are located in a small room in the back of a house.<br />
                We promise we can do your alterations.
            </p>

        </section>
    </form>
</body>
</html>
