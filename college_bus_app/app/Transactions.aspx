<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Transactions.aspx.cs" Inherits="Transactions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblmobile" runat="server" Visible="false"></asp:Label>

    <div class="container tm-mt-big tm-mb-big">
        <div class="row">
            <div class="col-12 mx-auto tm-login-col">
                <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="tm-block-title mb-4">View Transactions</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <div class="form-group mt-4">
                                <div style="width: 380px; height: 480px; overflow: scroll">
                                    <asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="withdrawal" HeaderText="withdrawal" SortExpression="withdrawal"></asp:BoundField>
                                            <asp:BoundField DataField="deposite" HeaderText="deposite" SortExpression="deposite"></asp:BoundField>
                                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date"></asp:BoundField>
                                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time"></asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
                                </div>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:connection %>' SelectCommand="SELECT [mobile_no], [withdrawal], [deposite], [date], [time] FROM [transactions]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

