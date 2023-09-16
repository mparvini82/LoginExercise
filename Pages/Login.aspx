<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginExercise.Login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" />
    <style>
        .error-message {
            color: red;
            margin-top: 3px;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">Sign In</h2>
        <form id="form1" runat="server">
            <div class="mb-3">
                <label for="emailtxt" class="form-label">Email</label>
                <asp:TextBox ID="emailtxt" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="emailtxtRequiredFieldValidator" runat="server" ControlToValidate="emailtxt"
                    ErrorMessage="*." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:Label ID="EmailChecker" runat="server" Text="This email is already taken!" Visible="false" ForeColor="red"></asp:Label>
            </div>
            <div class="mb-3">
                <label for="passwordtxt" class="form-label">Password</label>
                <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordtxtRequiredFieldValidator" runat="server" ControlToValidate="passwordtxt"
                    ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <asp:Button ID="submit" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary"/>
            <a href="SignUp.aspx" class="d-block mt-3">Don't have an account? Create one</a>
            <asp:Label ID="Error" runat="server" Text="Password or Email is not correct!" ForeColor="Red" Visible="false"></asp:Label>
           <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            <asp:Label ID="success" runat="server" Text="Your account has been successfully created!" ForeColor="ForestGreen" Visible="false"></asp:Label> 
                </ContentTemplate>
                </asp:UpdatePanel>--%>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>