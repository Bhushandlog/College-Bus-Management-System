<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewBusDetails.aspx.cs" Inherits="ViewBusDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="lblmobile" runat="server" Visible="false"></asp:Label>
    <asp:Label ID="lblstud_bus_no" runat="server" Visible="false"></asp:Label>


    <div class="container tm-mt-big tm-mb-big">
        <div class="row">
            <div class="col-12 mx-auto tm-login-col">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="tm-block-title mb-4">View Bus Details</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">


                            <div class="form-group">
                                <label for="username" style="color:yellow">Bus No.:</label>
                                <asp:Label ID="lbldriver_bus_no" runat="server" ForeColor="White"></asp:Label>
                                <br />
                                <label for="username" style="color:yellow">Bus Name:</label>
                                <asp:Label ID="lblbus_name" runat="server" ForeColor="White"></asp:Label>
                                <br />
                                <label for="username" style="color:yellow">Route:</label>
                                <asp:Label ID="lblroute" runat="server" ForeColor="White"></asp:Label>
                                <br />
                                <label for="username" style="color:yellow">Driver Name:</label>
                                <asp:Label ID="lbldriver_name" runat="server" ForeColor="White"></asp:Label>
                                <br />
                                <label for="username" style="color:yellow">Driver Contact No.:</label>
                                <asp:Label ID="lbldriver_no" runat="server" ForeColor="White"></asp:Label>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

