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
            <div class="row justify-content-center text-center ">
                <div class="col-12 table-responsive text-center">
                    <asp:GridView CssClass="table table-hover text-center" runat="server" ID="ShopGridView" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductID">
                        <Columns>
                            <asp:CommandField ShowSelectButton="true" SelectText="خرید" ItemStyle-CssClass="text-center" />
                            <asp:BoundField DataField="Price" HeaderText="قیمت" />
                            <asp:BoundField DataField="Rate" HeaderText="میزان رضایت" />
                            <asp:TemplateField HeaderText="عکس">
                                <ItemTemplate>
                                    <image src="../Images/<%# Eval("Name") %>.jpg" style="width: 190px; height: auto; border-radius: 5px;" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Name" HeaderText="نام" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col">
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="categort" runat="server" ForeColor="Red" />
                </div>
            </div>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</asp:Content>
