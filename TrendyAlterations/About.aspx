﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="TrendyAlterations.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trendy Alterations.com:About Us</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
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
                    <asp:Image ID="Image1" runat="server"  href="homepage.aspx"  ImageURL="~/Images/TrendyAlterationsLogo.png" CssClass="auto-style1" Height="208px" Width="225px" />
                </div>
				<div class="inner" style="left: 4px; top: -3px">
					<h1><a href="homepage.aspx">Trendy Alterations</a></h1>
					<p>"SNIPPED TO FIT"</p>
				</div>
                
                </header>

        <div class="auto-style13">
            <div>
                    <asp:HyperLink ID="HyplHome" runat="server" NavigateUrl="~/homepage.aspx">Home</asp:HyperLink>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:HyperLink ID="HyplAbout" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:HyperLink ID="HyplPackages" runat="server" NavigateUrl="~/Packages.aspx">Packages</asp:HyperLink>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:HyperLink ID="HyplContact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>

                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                </div>            
        </div>

        <!-- Banner -->
					<section id="intro" class="main">
						<span class="icon fa-diamond major"></span>
						<h2>About Us</h2>
						<p>Trendy Alterations originated in the middle of the night on the last ounce of energy<br />
						We are located in a small room in the back of a house.<br />
						We promise we can do your alterations.</p>
						
					</section>
    </form>
</body>
</html>