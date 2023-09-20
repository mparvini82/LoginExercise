<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Shop.aspx.cs" Inherits="LoginExercise.WebForm2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <style>
        .text-center {
            text-align: center;
            vertical-align: middle !important;
        }
    </style>
    <title></title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">

        <div class="row justify-content-end mb-1">
            <div class="col-auto">
                <asp:Button ID="Button1" runat="server" Text="افزودن محصول" CssClass="btn btn-primary" OnClick="OpenAddProductBtn_Click" />
            </div>
        </div>
        <div id="BoxAddProduct" runat="server" class=" bg-light p-3 rounded-4 mb-3" style="border: 2px solid #485e97;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title">Add Book</h1>
                        <asp:Button ID="btnClose" runat="server" OnClick="btnClose_Click" type="button" class="btn-close" aria-label="Close"></asp:Button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-6">
                                <label class="text-2xl text-dark">Name</label>
                                <br />
                                <label class="text-2xl text-dark">Price</label>
                                <br />
                                <br />
                                <br />
                                <asp:FileUpload ID="FileUploadImage" runat="server" />
                                <asp:Label ID="lblMessage" runat="server"></asp:Label>

                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                <br />
                                <br />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="add" OnClick="AddProductBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
        <itemtemplate>
            <div class="row justify-content-center text-center ">
                <div class="col-12 table-responsive text-center">

                    <asp:GridView CssClass="table table-hover text-center" runat="server" ID="ShopGridView" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID" ViewStateMode="Enabled">
                        <Columns>
                            <asp:CommandField ShowSelectButton="true" SelectText="خرید" ItemStyle-CssClass="text-center" />
                            <asp:BoundField DataField="Price" HeaderText="قیمت" />
                            <asp:BoundField DataField="Rate" HeaderText="میزان رضایت" />
                            <asp:TemplateField HeaderText="عکس">
                                <ItemTemplate>
                                    <image src="../Images/<%# Eval("ProductID") %>.jpg" style="width: 190px; height: auto; border-radius: 5px;" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="نام" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </itemtemplate>


        <div class="row mt-3">
            <div class="col">
                <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="categort" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</asp:Content>
