<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminProducts.aspx.cs" Inherits="TrendyAlterations.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="ProductsDataSource">
                                <Columns>
                                    <asp:BoundField DataField="productID" HeaderText="Product ID" ReadOnly="True" SortExpression="productID" />
                                    <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
                                    <asp:BoundField DataField="productDesc" HeaderText="Product Description" SortExpression="productDesc" />
                                    <asp:BoundField DataField="unitPrice" HeaderText="Price" SortExpression="unitPrice" />
                                    <asp:BoundField DataField="imageURL" HeaderText="Image URL" SortExpression="imageURL" />
                                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowHeader="True" />
                                </Columns>
                            </asp:GridView>


    <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TrendyAlteration_DBConnectionString %>" SelectCommand="SELECT * FROM [Product]" DeleteCommand=
        "DELETE FROM [Product] WHERE [productID] = @productID"> </asp:SqlDataSource>


    <%--Add data to database--%>
    <table class="table table-striped">
  <thead>
  </thead>
  <tbody>
    <tr>
       <td style="width: 357px">Product ID</td>
      <td>
          <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
       <td style="width: 357px">Name</td>
      <td>
          <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr> <td style="width: 357px">Description</td>
      <td>
          <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
        </td>
    </tr>
      <tr>
       <td style="width: 357px">Price</td>
      <td>
          <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
          </td>
    </tr>
      <tr>
       <td style="width: 357px">Image:</td>
      <td>
          <asp:TextBox ID="txtImage" runat="server"></asp:TextBox><asp:FileUpload ID="FileUpload1" runat="server" />
          </td>
    </tr>
    </tbody>
    </table>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnAddProduct" runat="server" Text="Add Product" OnClick="btnAddProduct_Click" />
    <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="lbl_addProduct_message" runat="server" Text=""></asp:Label>

       


</asp:Content>
