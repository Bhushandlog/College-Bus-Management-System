<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default_old.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
         setTimeout(function(){
            window.location.href = 'Login.aspx';
         }, 4000);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-12 mx-auto tm-login-col">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12 text-center">
                <h2 class="tm-block-title mb-4"> Welcome To Tourist App. </h2>
              </div>
            </div>
            <div class="row mt-2">
              <div class="col-12">

                  <h3 class="tm-block-title mb-4">
                  </h3>

                  <img src="img/img.png" width="300" />

                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
                  <br />
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

