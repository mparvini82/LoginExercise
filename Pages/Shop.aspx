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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="row justify-content-end mb-1">
            <div class="col-auto">
                <asp:Button ID="Button1" runat="server" Text="افزودن محصول" CssClass="btn btn-primary" OnClick="Button1_Click" />
            </div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
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
                <asp:Label ID="lblHidden2" runat="server" Text=""></asp:Label>
                <ajaxToolkit:ModalPopupExtender ID="AddProductPopUp" runat="server" TargetControlID="lblHidden2" PopupControlID="BoxAddProductPopUp"></ajaxToolkit:ModalPopupExtender>
                <div id="BoxAddProductPopUp" class=" bg-light p-3  rounded-4" style="border: 2px solid #485e97;">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title">Add Book</h1>
                                <button type="button" class="btn-close" aria-label="Close" onclick="closeModal()"></button>
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
                                        <asp:FileUpload ID="FileUploadImage" CssClass="btn btn-outline-secondary" runat="server" TabIndex="8" EnableTheming="true" />
                       
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
                                <asp:Button ID="Button2" CssClass="btn btn-primary" runat="server" Text="add" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                    <script>
                        function closeModal() {
                            $find('<%= AddProductPopUp.ClientID %>').hide();
                        }
                    </script>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div class="row mt-3">
            <div class="col">
                <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="categort" runat="server" ForeColor="Red" />
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</asp:Content>
