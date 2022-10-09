<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="blowfish.aspx.cs" Inherits="CryptoCalc.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="homediv" runat="server">
    <div class="jumbotron jumbotron-fluid" style="background-color: darkorange;">
        <div class="container">
            <h1 class="display-4">Blowfish</h1>
            <p class="lead">A 64-bit Symmetric Block Cipher</p>
        </div>
    </div>
    <div class="form-group form-group-lg container justify-content-center" style="height:750px;width:1100px; background-color:#fed800">
        <form runat="server">
            
            <h1><b>Encryption</b></h1>
            <br />
            <asp:Label runat="server" Text="Message " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="msg" runat="server" Placeholder="Message"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="msg"></asp:RequiredFieldValidator>

            <br />
            <br />
            <asp:Label runat="server" Text="Key " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="pkey" runat="server" Placeholder="Key" ></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="pkey"></asp:RequiredFieldValidator>
            <br />

            <asp:Button CssClass="btn btn-lg btn-primary" ID="enc" OnClick="enc_click" Text="Encrypt" runat="server" /><br /><br />
            <asp:Label runat="server" Text="Encrypted Message " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="cipher" runat="server" Placeholder="Cipher"></asp:TextBox>
            <br />
            <hr />
            <h1><b>Decryption</b></h1>
            <br />
            <asp:Label runat="server" Text="Decrypted Message " class="display-5"></asp:Label><br />
            <asp:TextBox CssClass="form-control" ID="decrypt" runat="server" Placeholder="Message"></asp:TextBox>
            <br /><br />
        </form>
    </div>
</asp:Content>
