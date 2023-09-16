<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="LoginExercise.SignUp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        .error-message {
            color: red;
            margin-top: 3px;
            font-size: 12px;
        }
    </style>

</head>
<body>
    <div class="container mt-5" runat="server">
        <h2 class="text-center mb-4">Sign Up</h2>
        <form id="form1" runat="server">
            <div class="form-group">
                <label for="fnametxt">First Name</label>
                <asp:TextBox ID="fnametxt" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="fnametxtRequiredFieldValidator" runat="server" ControlToValidate="fnametxt"
                    ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="lnametxt">Last Name</label>
                <asp:TextBox ID="lnametxt" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lnametxtRequiredFieldValidator" runat="server" ControlToValidate="lnametxt"
                    ErrorMessage="*" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label for="emailtxt">Email</label>
                <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailtxtRequiredFieldValidator" runat="server" ControlToValidate="emailtxt"
                    ErrorMessage="*." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="EmailChecker" runat="server" Text="This email is already taken!" Visible="false" ForeColor="red"></asp:Label>
            </div>
            <div class="form-group">
                <label for="passwordtxt">Password</label>
                <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordtxtRequiredFieldValidator" runat="server" ControlToValidate="passwordtxt"
                    ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"
                    ID="RegularExpressionValidator1" ControlToValidate="passwordtxt" runat="server" ForeColor="Red" ErrorMessage="password must be eight characters including one uppercase letter, one special character and alphanumeric characters"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label for="confirmpasswordtxt">Confirm Password</label>
                <asp:TextBox ID="confirmpasswordtxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="confirmpasswordtxtRequiredFieldValidator" runat="server" ControlToValidate="confirmpasswordtxt"
                    ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="passwordCompareValidator" runat="server" ControlToValidate="confirmpasswordtxt"
                    ControlToCompare="passwordtxt" ErrorMessage="Passwords should match" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
            </div>

            <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary" />
            <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Label ID="success" runat="server" Text="Your account has been successfully created!" ForeColor="ForestGreen" Visible="false"></asp:Label> 
                </ContentTemplate>
                </asp:UpdatePanel>--%>
        </form>
    </div>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
