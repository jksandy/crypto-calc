<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="md5.aspx.cs" Inherits="CryptoCalc.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="homediv" runat="server">
    <div class="jumbotron jumbotron-fluid" style="background-color: yellowgreen;">
        <div class="container">
            <h1 class="display-4">MD-5</h1>
            <p class="lead">128-bit Hash Function to get a Message Digest</p>
        </div>
    </div>
    <div class="form-group form-group-lg container justify-content-center" style="height:450px; width:1100px;background-color:lightgreen">
        <form runat="server">
            <br /><br />

            <asp:Label runat="server" Text="Message " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="msg" runat="server" Placeholder="Message" AutoPostBack="True" OnTextChanged="msg_TextChanged"></asp:TextBox>

            <br />
            <asp:Label runat="server" Text="Hash " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control " ID="hash" runat="server" Placeholder="Hash" Enabled="False"></asp:TextBox>

            <br />
            <asp:Label runat="server" Text="Message appended with Hash " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="msgphash" runat="server" Placeholder="Message appended with Hash" OnTextChanged="msgphash_TextChanged" AutoPostBack="True"></asp:TextBox>
            
            <br />
            <br />

            <asp:Label runat="server" ID ="sflag" class="display-6 alert alert-success" role="alert" Text="No change in message! Try modifying the message appended with hash">
            </asp:Label>
              <asp:Label runat="server" ID ="dflag" class="display-6 alert alert-danger" role="alert" Text="Data Integrity Lost!" Visible = false>
            </asp:Label>

        </form>
    </div>
</asp:Content>
