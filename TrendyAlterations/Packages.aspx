<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="TrendyAlterations.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Trendy Alterations.com:Packages</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
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
        .auto-style15 {
            width: 837px;
        }
        #drop_zone {
          border: 5px solid blue;          
        }
       
        .auto-style24 {
            height: 192px;
            width: 911px;
        }
        .auto-style25 {
            float: right;
            width: 682px;
            height: 196px;
        }
       
        .auto-style26 {
            height: 660px;
            width: 592px;
        }
               
        .auto-style27 {
            margin-top: 100px;
            float: right;
            padding-right: 100px;
            margin-left: 0px;
        }
               
        </style>
    <script>
        if (document.readyState == 'loading') {
            document.addEventListener('DOMContentLoaded', ready)
        } else {
            ready()
        }

        function ready() {
            var removeCartItemButtons = document.getElementsByClassName('btn-danger')
            for (var i = 0; i < removeCartItemButtons.length; i++) {
                var button = removeCartItemButtons[i]
                button.addEventListener('click', removeCartItem)
            }

            var quantityInputs = document.getElementsByClassName('cart-quantity-input')
            for (var i = 0; i < quantityInputs.length; i++) {
                var input = quantityInputs[i]
                input.addEventListener('change', quantityChanged)
            }

            var addToCartButtons = document.getElementsByClassName('shop-item-button')
            for (var i = 0; i < addToCartButtons.length; i++) {
                var button = addToCartButtons[i]
                button.addEventListener('click', addToCartClicked)
            }

            document.getElementsByClassName('btn-purchase')[0].addEventListener('click', purchaseClicked)
        }

        function purchaseClicked() {
            alert('Thank you for your purchase')
            var cartItems = document.getElementsByClassName('cart-items')[0]
            while (cartItems.hasChildNodes()) {
                cartItems.removeChild(cartItems.firstChild)
            }
            updateCartTotal()
        }

        function removeCartItem(event) {
            var buttonClicked = event.target
            buttonClicked.parentElement.parentElement.remove()
            updateCartTotal()
        }

        function quantityChanged(event) {
            var input = event.target
            if (isNaN(input.value) || input.value <= 0) {
                input.value = 1
            }
            updateCartTotal()
        }

        function addToCartClicked(event) {
            var button = event.target
            var shopItem = button.parentElement.parentElement
            var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText
            var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText
            var imageSrc = shopItem.getElementsByClassName('shop-item-image')[0].src
            addItemToCart(title, price, imageSrc)
            updateCartTotal()
        }

        function addItemToCart(title, price, imageSrc) {
            var cartRow = document.createElement('div')
            cartRow.classList.add('cart-row')
            var cartItems = document.getElementsByClassName('cart-items')[0]
            var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
            for (var i = 0; i < cartItemNames.length; i++) {
                if (cartItemNames[i].innerText == title) {
                    alert('This item is already added to the cart')
                    return
                }
            }
            var cartRowContents = `
        <div class="cart-item cart-column">
            <br/>
            <img class="cart-item-image" src="${imageSrc}" width="100" height="100">
            <span class="cart-item-title">${title}</span>&nbsp;&nbsp;
            <span class="cart-price cart-column">${price}&nbsp;&nbsp;
            </span><input class="cart-quantity-input" type="number" value="1" style="width:50px">
            <button class="btn btn-danger" type="button">REMOVE</button>
        </div>        
        <div class="cart-quantity cart-column">           

        </div>`
            cartRow.innerHTML = cartRowContents
            cartItems.append(cartRow)
            cartRow.getElementsByClassName('btn-danger')[0].addEventListener('click', removeCartItem)
            cartRow.getElementsByClassName('cart-quantity-input')[0].addEventListener('change', quantityChanged)
        }

        function updateCartTotal() {
            var cartItemContainer = document.getElementsByClassName('cart-items')[0]
            var cartRows = cartItemContainer.getElementsByClassName('cart-row')
            var total = 0
            for (var i = 0; i < cartRows.length; i++) {
                var cartRow = cartRows[i]
                var priceElement = cartRow.getElementsByClassName('cart-price')[0]
                var quantityElement = cartRow.getElementsByClassName('cart-quantity-input')[0]
                var price = parseFloat(priceElement.innerText.replace('$', ''))
                var quantity = quantityElement.value
                total = total + (price * quantity)
            }
            total = Math.round(total * 100) / 100
            document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
        }
        </script>
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

        <!-- Wrapper -->
			
				<!-- Banner -->
				<div id="productsleft" class="productlist">
						<h2 class="auto-style15">Formal Alterations</h2>
                        <ul class="product" id:"formalproducts" style="list-style-type: none" >
                                <li class="auto-style24">
                                        <div style="float:left">
                                            <asp:Image ID="imgFsleeve"  runat="server"  CssClass="shop-item-image" ImageURL="~/Images/Fsleeve.jpg"   Height="196px" Width="205px"  />
                                          </div>
                                        <div class="auto-style25" style="font-family: 'times New Roman', Times, serif; font-size: large;">
                                                <asp:Label ID="lblFSleeveID"  runat="server" Text="F_SleeveAlt" ForeColor="#9966FF" Font-Bold="True"></asp:Label>&nbsp;&nbsp;||&nbsp;&nbsp;
                                                <asp:Label ID="lblFSleeveName" runat="server" Class="shop-item-title"  ForeColor="#9966FF" Text="Sleeve Adjustment" Font-Bold="True"></asp:Label>
                                                  <br />
                                                <asp:Label ID="lblFSleevePrice" runat="server" Class="shop-item-price" Text="Label">$4000</asp:Label>
                                                  &nbsp;&nbsp;
                                                  <br />
                                                <asp:Label ID="lblFSleeveCategory" runat="server" Text="Formal" Font-Names="Segoe Script"></asp:Label>
                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                                <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                                                <br />
                                                  <br />
                                                <asp:Label ID="lblFSleeveDesc" runat="server" Text="Label">Description: Sleeve cutting, sleeve take in and sleeve removal </asp:Label>
                                                  <br />
                                        </div>                                       
                                </li>
                            
                                <li class="auto-style24"  > 
                                   <br />
                                    <div>
                                        <div style="float:left">
                                            <asp:Image ID="ImgFhemming" runat="server"  CssClass="shop-item-image" ImageURL="~/Images/F_hemming.jpg"    Height="196px" Width="205px"  />
                                           </div>
                                        <div class="auto-style25" id="FSleeveProduct" style="font-family: 'times New Roman', Times, serif; font-size: large;">
                                               <asp:Label ID="lblFHemID" CssClass="ID" runat="server" Text="F_Hem" ForeColor="#9966FF" Font-Bold="True"></asp:Label>&nbsp;&nbsp;||&nbsp;&nbsp;
                                                <asp:Label ID="lblFHemProdName" Class="shop-item-title" runat="server"  ForeColor="#9966FF" Font-Bold="True">Hemming</asp:Label>
                                                  <br />
                                                <asp:Label ID="lblFHemPrice" Class="shop-item-price" runat="server" Text="Label">$2500</asp:Label>
                                                  <br />
                                                <asp:Label ID="lblFHemCategory" runat="server" Text="Formal" Font-Names="Segoe Script"></asp:Label>
                                                &nbsp; &nbsp;&nbsp;&nbsp;
                                                <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                                                &nbsp;&nbsp;
                                                <br />
                                                  <br />
                                                <asp:Label ID="lblFHemDesc" runat="server" Text="Label">Description: Hem repairs, hem installation, cut and Hem </asp:Label>
                                                  <br />
                                        </div>
                                    </div>
                                </li>

                            <li class="auto-style24"  > 
                                <br /><br />
                                    <div style="float:left">
                                        <asp:Image ID="ImgFtakein" runat="server" CssClass="shop-item-image" ImageURL="~/Images/Ftakein.jpg"    Height="196px" Width="205px"  />
                                      </div>
                                    <div class="auto-style25" style="font-family: 'times New Roman', Times, serif; font-size: large;">
                                           <asp:Label ID="lblFtakeinID" runat="server" Text="F_Hem" ForeColor="#9966FF" Font-Bold="True"></asp:Label>&nbsp;&nbsp;||&nbsp;&nbsp;
                                            <asp:Label ID="lblFtakeinName" Class="shop-item-title" runat="server"  ForeColor="#9966FF" Font-Bold="True">Take In</asp:Label>
                                              <br />
                                            <asp:Label ID="lblFTakeinPrice" Class="shop-item-price" runat="server" Text="Label">$5000</asp:Label>
                                              <br />
                                            <asp:Label ID="lblFTakeinCategory" runat="server" Text="Formal" Font-Names="Segoe Script"></asp:Label>
                                            &nbsp;&nbsp;&nbsp; &nbsp;
                                                <button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
                                            <br />
                                              <br />
                                            <asp:Label ID="lblFTakeinDesc" runat="server" Text="Label">Description: Take In Waist, let out waist </asp:Label>
                                              <br />
                                    </div>
                        </li>
                        
					</ul>

				</div>
                <div class="auto-style27">
                    <h2 style="text-align: center;">Shopping Cart</h2>
                     <div  id= "cart" class="auto-style26" style="border: medium none #FFFFFF; background-color: #C0C0C0">
                         
                    <div class="cart-row">
                        <span class="cart-item cart-header cart-column">&nbsp;&nbsp; ITEM</span>
                        <span class="cart-price cart-header cart-column">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRICE</span>
                        <span class="cart-quantity cart-header cart-column">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; QUANTITY</span>
                    </div>
                    <div class="cart-items">
                    </div>
                    <div class="cart-total">
                        <strong class="cart-total-title">Total:    </strong>&nbsp;&nbsp;&nbsp;
                        <span class="cart-total-price">$0</span>
                    </div>
                    <button class="btn btn-primary btn-purchase" type="button">PURCHASE</button>                     
                        </div>

                </div>
                
			
    </form>
</body>
</html>
