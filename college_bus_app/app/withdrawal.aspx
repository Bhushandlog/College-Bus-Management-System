<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="withdrawal.aspx.cs" Inherits="withdrawal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="lblmobile" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblopn_bal" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblrem_bal" runat="server" Visible="false"></asp:Label>

    <div class="container tm-mt-big tm-mb-big">
        <div class="row">
            <div class="col-12 mx-auto tm-login-col">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="tm-block-title mb-4">Withdrawal Amount</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="username">Enter Amount To Withdrawal</label>
                                <asp:TextBox ID="txtamount" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group mt-4">
                                <asp:Button ID="btnwithdrawal" runat="server" Text="Withdrawal" CssClass="btn btn-primary btn-block text-uppercase" OnClick="btnwithdrawal_Click" />
                            </div>

                            <div class="col-12 text-center">
                            <h2 class="tm-block-title mb-4">
                                
                               <a href="Options.aspx"> Back To Services </a>

                            </h2>
                        </div>
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

