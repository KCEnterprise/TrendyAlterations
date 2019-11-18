<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TrendyAlterations.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.3/jquery-ui.js"></script>

     <div class="container"> 
        <div class="row">
              <div class="col-7">
                  <div class="p-1  bg-light container-fluid">
                      <h2 style="text-align: center;">Formal Alterations</h2>                  
                        <div class="row p-2 justify-content-center">
                            <div class="col-sm">
                                <asp:DataList ID="DataList1" runat="server" DataKeyField="productID" DataSourceID="SqlDataSource1" RepeatColumns="2" RepeatDirection="Horizontal" CellSpacing="-1" BorderStyle="None" ShowFooter="False" ShowHeader="False" OnItemCommand="DataList1_ItemCommand">
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
                                                    <asp:Button ID="Button1" Class="btn btn-primary shop-item-button" style="width: 139px; height: 36px; font-size: medium;" runat="server" Text="ADD TO CART" CommandName="AddtoCart" CommandArgument='<%# Eval("productID") %>' />
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
                                <div class="col" style="left: 0px; top: 0px" >QUANTITY</div>
                            </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:ImageField DataImageUrlField="imageURL" HeaderText="Item" ControlStyle-Height="200px" ControlStyle-Width="400px">
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
        </div> 
         
            <asp:HyperLink ID="hyp_addProduct" runat="server" NavigateUrl="~/addProduct.aspx" Text="Add New Product" CssClass="align-right"></asp:HyperLink>
    </div>
</asp:Content>
