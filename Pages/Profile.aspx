<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LoginExercise.Pages.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  

    <div class="">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header pb-0">
                    <div class="d-flex align-items-center">
                        <p class="mb-0">Edit Profile</p>
                    </div>
                </div>
                <div class="card-body">
                    <p class="text-uppercase text-sm">User Information</p>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="example-text-input" class="form-control-label">Firstname</label>
                                <br />
                                <label for="example-text-input" class="form-control-label">Lastname</label>

                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="example-text-input" class="form-control-label">Email</label>
                                <br />
                                <label for="example-text-input" class="form-control-label">Gender</label>

                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="Gender" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <hr class="horizontal dark">
                    <p class="text-uppercase text-sm">Contact Information</p>
                    <div class="row">
                        <div class="col-md-1">
                            <div class="form-group">

                                <label for="example-text-input" class="form-control-label">Address</label>
                                <br />
                                <label for="example-text-input" class="form-control-label">City</label>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">
                                <asp:TextBox ID="Address" runat="server"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="City" runat="server"></asp:TextBox>


                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <label for="example-text-input" class="form-control-label">Country</label>
                                <br />
                                <label for="example-text-input" class="form-control-label">Postal code</label>

                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group">

                                <asp:TextBox ID="Postalcode" runat="server"></asp:TextBox>
                                <br />
                                <asp:TextBox ID="Country" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <hr class="horizontal dark">
                    <p class="text-uppercase text-sm">About me</p>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="example-text-input" class="form-control-label">About me</label>
                                <asp:TextBox ID="aboutme" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="example-text-input" class="form-control-label">About me</label>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <hr class="horizontal dark">
                                            <p class="text-uppercase text-sm">Profile Picture</p>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <asp:FileUpload ID="profilePictureUpload" runat="server" />
                                                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <asp:Button runat="server" ID="save" OnClick="save_Click" class="btn btn-primary" type="submit" Text="Save Changes"></asp:Button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
