<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="TrendyAlterations.ShoppingCart" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-5 ">
                  <div class="p-3  bg-light">                 
                        <h2 style="text-align: center;">Shopping Cart</h2>
                   
                        <div class="cart-row">
                            <div class="row py-4">
                                <div class="col" >ITEM</div>
                                <div class="col" >PRICE</div>
                                <div class="col" style="left: 0px; top: 0px" >QUANTITY</div>
                            </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:ImageField DataImageUrlField="imageURL" HeaderText="Item" ControlStyle-Height="100px" ControlStyle-Width="200px">
                                    </asp:ImageField>
                                    <asp:BoundField DataField="productName" HeaderText="Name" />
                                    <asp:BoundField DataField="unitPrice" HeaderText="Price" />
                                    <asp:BoundField DataField="productDesc" HeaderText="Description" />
                                </Columns>
                            </asp:GridView>
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

</asp:Content>
