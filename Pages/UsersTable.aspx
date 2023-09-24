<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersTable.aspx.cs" Inherits="LoginExercise.Pages.UsersTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Add custom styles here */
        .table-responsive {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Users Management</h1>
    <hr />

    <div class="table-responsive">
        <asp:GridView CssClass="table table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Personid"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
            OnRowCreated="GridView1_RowCreated">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" HeaderText="Action" DeleteText="Delete" ShowEditButton="True" EditText="Edit" ControlStyle-CssClass="btn btn-light d-inline"
                    UpdateText="Update" CancelText="Cancel" />
                <asp:BoundField DataField="Firstname" HeaderText="First Name" InsertVisible="False" />
                <asp:BoundField DataField="Lastname" HeaderText="Last Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" InsertVisible="False" />
                <asp:BoundField DataField="Password" HeaderText="Password" />
                <asp:TemplateField HeaderText="Admin">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# Eval("Accesslevel").ToString() == "1" %>' Enabled="false" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkIsActive" runat="server" Checked='<%# Eval("Accesslevel").ToString() == "1" %>' />
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
 
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</asp:Content>