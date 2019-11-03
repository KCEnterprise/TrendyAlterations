<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TrendyAlterations.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

            var addToCartButtons = document.getElementsByClassName('btn btn-primary shop-item-button')
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


     <div class="container"> 
        <div class="row">
              <div class="col-7">
                  <div class="p-1  bg-light container-fluid">
                      <h2 style="text-align: center;">Formal Alterations</h2>                  
                        <div class="row p-2 justify-content-center">
                            <div class="col-sm">
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" CellSpacing="-1" BorderStyle="None" ShowFooter="False" ShowHeader="False" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                                    <FooterStyle />
                                    <HeaderStyle></HeaderStyle>
                                    <ItemStyle />
                                    <ItemTemplate>
                                        <table border="0">
                                            <tr>
                                                <td style="height: 266px">
                                                    <asp:Image ID="Image5" runat="server" CssClass="shop-item-image" Height="200px" ImageUrl='<%# Eval("imageURL") %>' Width="244px" BorderStyle="Double" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-style: none">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label2" runat="server" Class="shop-item-title" Font-Bold="True" ForeColor="#9966FF" Text='<%# Eval("productName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-style: none">
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("productDesc") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-style: none">
                                                    <asp:Label ID="Label3" runat="server"  Text='<%# Eval("unitPrice") %>'></asp:Label>&nbsp;&nbsp;&nbsp;                                                    
                                                    <asp:Button ID="Button1" Class="btn btn-primary shop-item-button" style="width: 139px; height: 36px; font-size: medium;" runat="server" Text="ADD TO CART" onclick="addToCart" />
                                                </td>
                                            </tr>                                            
                                        </table>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                    <SeparatorStyle BorderStyle="None" />
                                </asp:DataList>
                           
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TrendyAlteration_DBConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                           
                            </div>
                       </div>
                  </div>
              </div>

              <div class="col-md-5 ">
                  <div class="p-3  bg-light">                 
                        <h2 style="text-align: center;">Shopping Cart</h2>
                   
                        <div class="cart-row">
                            <div class="row py-4">
                                <div class="col" >ITEM</div>
                                <div class="col" >PRICE</div>
                                <div class="col" >QUANTITY</div>
                            </div>
                            <span class="cart-item cart-header cart-column"></span>
                            <span class="cart-price cart-header cart-column"></span>
                            <span class="cart-quantity cart-header cart-column"></span>
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

        </div>        
    </div>
</asp:Content>
