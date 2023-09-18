<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersTable.aspx.cs" Inherits="LoginExercise.Pages.UsersTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
        <h1>Users Management</h1>
        <hr />

        
            <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Personid">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" HeaderText="Action" DeleteText="Delete" ShowEditButton="True" EditText="Edit" ControlStyle-CssClass="btn btn-light d-inline" UpdateText="Update" CancelText="Cancel" />
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
   

   <%-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>--%>
</asp:Content>
