<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TrendyAlterations.WebForm3" %>


<asp:Content ID="Login" ContentPlaceHolderID="MainContent" runat="Server">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .login-form {
            width: 340px;
            margin: 50px auto;
        }

            .login-form form {
                margin-bottom: 15px;
                background: #f7f7f7;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }

            .login-form h2 {
                margin: 0 0 15px;
            }

        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }

        .btn {
            font-size: 15px;
            font-weight: bold;
        }

        .auto-style4 {
            width: 647px;
            margin: 50px auto;
        }
    </style>
    <div class="shadow-lg p-3 mb-5 bg-white rounded">
        <div class="login-form">
            <form>
                <h2 class="text-center">Log in</h2>
                <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
                    <p>
                        <asp:Literal runat="server" ID="StatusText" />
                   </p>
                </asp:PlaceHolder>
                <div class="form-group">
                     <asp:TextBox runat="server" required="required" placeholder="Username" class="form-control" ID="Username" />
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" required="required" placeholder="Password" class="form-control" ID="Password" TextMode="Password" />
                </div>
                <div class="form-group">                    
                   <asp:Button runat="server" class="btn btn-primary btn-block" OnClick="SignIn" Text="Log in" />
                </div>
            </form>
        </div>
    </div>
</asp:Content>
