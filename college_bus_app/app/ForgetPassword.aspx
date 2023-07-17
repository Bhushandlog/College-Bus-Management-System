<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-12 mx-auto tm-login-col">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12 text-center">
                <h2 class="tm-block-title mb-4">Enter Email Id To Receive Your Password</h2>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-12">
                  <div class="form-group">
                    <label for="username">Email Id</label>
                    <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                  <div class="form-group mt-4">
                    <asp:Button ID="btnsend_email" runat="server" Text="Send Email" CssClass="btn btn-primary btn-block text-uppercase" OnClick="btnsend_email_Click" />
                      <br />
                      <asp:Label ID="lblmsg" runat="server"></asp:Label>
                      <asp:Label ID="lblpassword" runat="server" Visible="false"></asp:Label>
                  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

