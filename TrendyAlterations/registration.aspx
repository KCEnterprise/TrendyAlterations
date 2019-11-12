<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="TrendyAlterations.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trendy Alterations : Registration</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <style type="text/css">
        .auto-style1 {
            margin-top: 0;
        }

        .auto-style1 {
            height: 26px;
        }

        .auto-style7 {
            height: 600px;
            width: 1145px;
            position: absolute;
            top: 1064px;
            left: 331px;
            margin-top: 1px;
            bottom: -200px;
        }

        .auto-style9 {
            height: 62px;
        }

        .auto-style10 {
            height: 32px;
        }

        .auto-style12 {
            height: 45px;
        }

        .auto-style16 {
            height: 1000px;
            width: 95%;
        }

        .auto-style17 {
            height: 721px;
        }

        .auto-style18 {
            width: 101px;
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style17">
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
        <div class="auto-style7">
            <table class="auto-style16">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFirstName" runat="server" Height="54px" Width="367px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName0" runat="server"
                            ControlToValidate="txtFirstName"
                            ErrorMessage="First Name Required"
                            Display="None" ForeColor="Red" Font-Bold="True" Font-Italic="False" Font-Size="Small"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="labLastName" runat="server" Text="Last Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtLastName" runat="server" Height="54px" Width="367px"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName1" runat="server"
                            ControlToValidate="txtLastName"
                            ErrorMessage="Last Name Required"
                            Display="None" ForeColor="Red" Font-Bold="True" Font-Italic="False" Font-Size="Small" InitialValue=" "></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="labEmail" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtEmail" runat="server" Height="54px" Width="367px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validationEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address Required in format &quot;xxx@xxx.com&quot;" Font-Bold="True" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="None"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="requiredEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email Address Required" Font-Bold="True" Font-Size="Small" ForeColor="Red" InitialValue=" " Display="None"></asp:RequiredFieldValidator>
                        <br />
                    </td>

                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Label ID="labDOB" runat="server" Text="Date of Birth"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtDOB" type="date" runat="server" Height="54px" Width="367px"></asp:TextBox>
                        <br />

                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Must be older than 18" MaximumValue="2001-09-01" MinimumValue="1900-01-01" ControlToValidate="txtDOB"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="requiredDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth Required" Font-Bold="True" Font-Size="Small" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>

                    </td>

                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="labPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPhoneNumber" runat="server" Height="54px" placeholder="### - ### - ####" Width="367px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Must be in the form ###-###-####" Font-Bold="True" Font-Size="Small" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="None"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="labPassword" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Height="54px" Width="367px" placeholder="Must have special characters, numbers and upper/lower case letters" onkeyup="checkPasswordStrength()" ></asp:TextBox>
                        <asp:Label ID="lblMessage" runat="server" Font-Size="Smaller"></asp:Label>
                        <script type="text/javascript">
                            function checkPasswordStrength() {
                                var passwordTextBox = document.getElementById("txtPassword");
                                var password = passwordTextBox.value;
                                var specialCharacters = "!£$%^&*_@#~?";
                                var passwordScore = 0;

                                passwordTextBox.style.color = "white";

                                // Contains special characters
                                for (var i = 0; i < password.length; i++) {
                                    if (specialCharacters.indexOf(password.charAt(i)) > -1) {
                                        passwordScore += 20;
                                        break;
                                    }
                                }

                                // Contains numbers
                                if (/\d/.test(password))
                                    passwordScore += 20;

                                // Contains lower case letter
                                if (/[a-z]/.test(password))
                                    passwordScore += 20;

                                // Contains upper case letter
                                if (/[A-Z]/.test(password))
                                    passwordScore += 20;

                                if (password.length >= 8)
                                    passwordScore += 20;

                                var strength = "";
                                var backgroundColor = "red";

                                if (passwordScore >= 100) {
                                    strength = "Strong";
                                    backgroundColor = "green";
                                }
                                else if (passwordScore >= 80) {
                                    strength = "Medium";
                                    backgroundColor = "gray";
                                }
                                else if (passwordScore >= 60) {
                                    strength = "Weak";
                                    backgroundColor = "maroon";
                                }
                                else {
                                    strength = "Very Weak";
                                    backgroundColor = "red";
                                }

                                document.getElementById("lblMessage").innerHTML = strength;
                                passwordTextBox.style.backgroundColor = backgroundColor;
                            }
                        </script>
                        <br />
                        <asp:RequiredFieldValidator ID="requiredPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Must enter a password" Font-Bold="True" Font-Size="Small" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="labConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style9">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" OnTextChanged="txtConfirmPassword_TextChanged" TextMode="Password" Height="54px" Width="367px"></asp:TextBox>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords must match" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="requiredConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Required confirm password" Font-Bold="True" Font-Size="Small" ForeColor="Red" Display="None"></asp:RequiredFieldValidator>
                    </td>

                </tr>

            </table>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="btnRegister" runat="server" Text="Register !" OnClick="CreateUser" />
            &nbsp;
        </div>
        <div>
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

            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Italic="True" Font-Size="Larger" ForeColor="Red" HeaderText="The following errors occured:" Height="55px" Width="431px" DisplayMode="List" />
        </div>

    </form>

</body>
</html>
