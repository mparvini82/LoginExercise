<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersTable.aspx.cs" Inherits="LoginExercise.UsersTable" %>

<!DOCTYPE html>
<html>
<head>
    <title>Profile Edit</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <h1>Edit Profile</h1>
        <hr />

        <form runat="server">
            <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Personid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="عملیات" DeleteText="حذف" ShowEditButton="True" EditText="ویرایش" ControlStyle-CssClass="btn btn-light d-inline" UpdateText="بروزسانی" CancelText="انصراف" />
                    <asp:BoundField DataField="Firstname" HeaderText="First Name" InsertVisible="False" />
                    <asp:BoundField DataField="Lastname" HeaderText="Last Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" InsertVisible="False" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Name" />
                    <asp:TemplateField HeaderText="Admin">
                        <ItemTemplate>
                            <asp:Button  ID="MakeAdminButton" runat="server" Text="Make Admin" CssClass="btn btn-primary" OnCommand="MakeAdminButton_Command" CommandArgument='<%# Eval("PersonID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=192.168.100.35\sql2022;Initial Catalog=Test;Persist Security Info=True;User ID=sa;Password=Elentr@2022" 
                DeleteCommand="DELETE FROM Users WHERE PersonID = @PersonID" 
                InsertCommand="INSERT INTO [Users] ([Firstname], [Lastname], [Email],[Password]) VALUES (@Firstname, @Lastname, @Email,@Password)" 
                ProviderName="System.Data.SqlClient" 
                SelectCommand="SELECT * FROM Users " 
                UpdateCommand="UPDATE Users SET Firstname = @Firstname , Lastname=@Lastname ,Email=@Email ,Password=@Password   WHERE PersonID = @PersonID">
            </asp:SqlDataSource>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>