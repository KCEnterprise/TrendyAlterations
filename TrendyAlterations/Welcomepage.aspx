<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcomepage.aspx.cs" Inherits="TrendyAlterations.Welcomepage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Trendy Alterations.com:WELCOME</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
    <style type="text/css">
        .auto-style3 {
            height: 50px;
        }

        .auto-style13 {
            height: 67px;
            width: 656px;
            position: absolute;
            top: 601px;
            left: 585px;
            margin-top: 2px;
            bottom: 522px;
        }
        .auto-style14 {
            height: 50px;
            width: 821px;
            position: absolute;
            top: 711px;
            left: 505px;
            margin-top: 2px;
            bottom: 429px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Header -->
			<header id="header" class="alt">
                <div class="logo">

                    <asp:HyperLink ID="hprlogo" runat="server" NavigateUrl="~/Welcomepage.aspx"> <asp:Image ID="Image1" runat="server" href="homepage.aspx"  ImageURL="~/Images/TrendyAlterationsLogo.png" CssClass="auto-style1" Height="208px" Width="225px" /> </asp:HyperLink>
                   

                </div>
            
				<div class="inner">
					<h1><a href="homepage.aspx">Trendy Alterations</a></h1>
					<p class="auto-style3">"SNIPPED TO FIT"</p>
				</div>
			</header>

         <div>         
            <div class="auto-style13">
               
                <h3>WELCOME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblName" runat="server" Font-Size="X-Large"/> </h3> 
               
            </div>
        </div>

         <div class="auto-style14">
             
                 <div>

                            <asp:HyperLink ID="HyplHome" runat="server" NavigateUrl="~/homepage.aspx">Home</asp:HyperLink>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                            <asp:HyperLink ID="HyplAbout" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:HyperLink ID="HyplPackages" runat="server" NavigateUrl="~/Packages.aspx">Packages</asp:HyperLink>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:HyperLink ID="HyplContact" runat="server" NavigateUrl="~/Contact.aspx">Contact Us</asp:HyperLink>
                      
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:HyperLink ID="HyplHidden1" runat="server"  Visible="False"></asp:HyperLink>

                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:HyperLink ID="HyplHidden2" runat="server"  Visible="False"></asp:HyperLink>

                                                  <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        </div>
             </div>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Banner -->
					<section id="intro" class="main">
						<span class="icon fa-diamond major"></span>
						<h2>Clean &amp; saucy !</h2>
						<p>The best around for wedding fittings, tuzedo rentals <br />
                            and alterations and custom tailoring too! <br />
                           From casual to formal alteration, there is an alteration service available for you!</p>
						<ul class="actions">
							<li><a href="#" class="button big">Learn More</a></li>
						</ul>
					</section>

				<!-- Items -->
					<section class="main items">
						<article class="item">
							<header>
								<a href="#"><img src="images/formalwear.jpg" alt="" /></a>
								<h3>FORMAL ALTERATIONS</h3>
							</header>
							<p>We offer several affordable packages in formal alterations. They include : <br />
                                Hemming   |  Take in/out<br />
                                Sleeve adjustments  |   Bust Adjustment<br />
                                etc<br />
							</p>
							<ul class="actions">
								<li><a href="#" class="button">More</a></li>
							</ul>
						</article>
						<article class="item">
							<header>
								<a href="#"><img src="images/casualwear.jpg" alt="" /></a>
								<h3>CASUAL /PROFESSIONAL ALTERATIONS</h3>
							</header>
							<p>We offer several affordable packages in casual pprofessional alterations. They include : <br />
                                Hemming   |  Take in/out<br />
                                Sleeve adjustments  |   Zipper Replacement<br />
                                *Packages based on piece of clothing presented (skirt, pants)
							</p>

							<ul class="actions">
								<li><a href="Packages.aspx" class="button">More</a></li>
							</ul>
						</article>
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
