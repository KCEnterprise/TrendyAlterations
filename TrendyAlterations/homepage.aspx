﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="TrendyAlterations.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trendy Alterations.com</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <style type="text/css">
        .auto-style3 {
            height: 50px;
        }

        .auto-style13 {
            height: 50px;
            width: 821px;
            position: absolute;
            top: 584px;
            left: 571px;
            margin-top: 2px;
            bottom: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
        <header id="header" class="alt">
            <div class="logo">

                <asp:HyperLink ID="hprlogo" runat="server" NavigateUrl="~/homepage.aspx">
                    <asp:Image ID="Image1" runat="server" href="homepage.aspx" ImageUrl="~/Images/TrendyAlterationsLogo.png" CssClass="auto-style1" Height="208px" Width="225px" />
                </asp:HyperLink>


            </div>

            <div class="inner">
                <h1><a href="homepage.aspx">Trendy Alterations</a></h1>
                <p class="auto-style3">"SNIPPED TO FIT"</p>
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
                <a class="nav-link" id="messages-tab" data-toggle="tab" href="Products.aspx" role="tab" aria-controls="messages" aria-selected="false">Packages</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="settings-tab" data-toggle="tab" href="Contact.aspx" role="tab" aria-controls="settings" aria-selected="false">Contact Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="login-tab" data-toggle="tab" href="Login.aspx" role="tab" aria-controls="settings" aria-selected="false">Log In</a>
            </li>
        </ul>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Banner -->
            <section id="intro" class="main">
                <span class="icon fa-diamond major"></span>
                <h2>Clean &amp; saucy !</h2>
                <p>
                    The best around for wedding fittings, tuzedo rentals
                    <br />
                    and alterations and custom tailoring too!
                    <br />
                    From casual to formal alteration, there is an alteration service available for you!
                </p>
                <ul class="actions">
                    <li><a href="About.aspx" class="button big">Learn More</a></li>
                </ul>
            </section>

            <!-- Items -->
            <section class="main items">
                <article class="item">
                    <header>
                        <a href="#">
                            <img src="images/formalwear.jpg" alt="" /></a>
                        <h3>FORMAL ALTERATIONS</h3>
                    </header>
                    <p>
                        We offer several affordable packages in formal alterations. They include :
                        <br />
                        Hemming   |  Take in/out<br />
                        Sleeve adjustments  |   Bust Adjustment<br />
                        etc<br />
                    </p>
                    <ul class="actions">
                        <li><a href="Packages.aspx" class="button">More</a></li>
                    </ul>
                </article>
                <article class="item">
                    <header>
                        <a href="#">
                            <img src="images/casualwear.jpg" alt="" /></a>
                        <h3>CASUAL /PROFESSIONAL ALTERATIONS</h3>
                    </header>
                    <p>
                        We offer several affordable packages in casual pprofessional alterations. They include :
                        <br />
                        Hemming   |  Take in/out<br />
                        Sleeve adjustments  |   Zipper Replacement<br />
                        *Packages based on piece of clothing presented (skirt, pants)
                    </p>

                    <ul class="actions">
                        <li><a href="Packages.aspx" class="button">More</a></li>
                    </ul>
                </article>
            </section>

            <!-- CTA -->
            <section id="cta" class="main special">
                <h2>Register with us!</h2>
                <p>Deals and discounts await once you register. It only takes one minute to register. </p>
                <ul class="actions">
                    <li><a href="registration.aspx" class="button big">Get Started</a></li>
                </ul>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <ul class="icons">
                    <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                    <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                    <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                    <li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
                    <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                </ul>
                <p class="copyright">&copy; Untitled. Design: <a href="https://templated.co">TEMPLATED</a>. Images: <a href="https://unsplash.com">Unsplash</a>.</p>
            </footer>

        </div>

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </form>
</body>
</html>
