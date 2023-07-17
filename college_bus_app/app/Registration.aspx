<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container tm-mt-big tm-mb-big">
        <div class="row">
            <div class="col-12 mx-auto tm-login-col">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="tm-block-title mb-4">Registration</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="username">Name</label>
                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="username">Mobile</label>
                                <asp:TextBox ID="txtmobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="username">Address</label>
                                <asp:TextBox ID="txtaddress" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group mt-3">
                                <label for="password">Password</label>
                                <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="form-group mt-4">
                                <asp:Button ID="btnsave" runat="server" Text="Register" CssClass="btn btn-primary btn-block text-uppercase" OnClick="btnsave_Click" />
                            </div>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <br />
                            <br />
                            <div class="col-12 text-center">
                                <a href="Login.aspx">
                                    <h2 class="tm-block-title mb-4">Click here to login</h2>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

