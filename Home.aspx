<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CryptoCalc.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="homediv" runat="server">
    <form runat="server">

        <div class="jumbotron jumbotron-fluid" style="background-color: powderblue;">
            <div class="container">
                <h1 class="display-4">CryptoCalc</h1>
                <p class="lead">A calculator to simulate RC-4, MD-5 and Blowfish</p>
            </div>
        </div>

        <div class="container" style="width:100vw;">

            <div class="row">

                <div class="col-4">
                    <div class="card" style="width: 420px; height: 740px; background-color: yellowgreen">
                        <div class="card-body">
                            <h1 class="card-title d-flex justify-content-center" style="font-family: 'Dosis', sans-serif;"><b>MD5</b></h1>
                            <h3 class="align-content-lg-between" style="font-family: 'Dosis', sans-serif;">The MD5 hashing algorithm is a one-way cryptographic function that accepts a message of any length as input and returns as output a fixed-length digest value to be used for authenticating the original message. The MD5 algorithm is a cryptographically broken but still widely used to produce a 128-bit hash. </h3>
                            <br />

                            <center>
                                <!--<asp:Button CssClass="btn-lg btn-danger" runat="server" Text="Explore" OnClick="Tomd5_Click" />-->
                                <br /><br />
                                <iframe width="320" height="315"
                                    src="https://www.youtube.com/embed/r6GlzIWiMD0"></iframe>
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card" style="width: 420px; height: 740px; background-color: darkorange">
                        <div class="card-body">
                            <h1 class="card-title d-flex justify-content-center" style="font-family: 'Dosis', sans-serif;"><b>Blowfish</b></h1>
                            <h3 class="align-content-lg-between" style="font-family: 'Dosis', sans-serif;">Blowfish is a variable-length, symmetric, 64-bit block cipher. Designed by Bruce Schneier in 1993 as a "general-purpose algorithm," it was intended to provide a fast, free, drop-in alternative to the aging Data Encryption Standard (DES) and International Data Encryption Algorithm (IDEA).</h3>
                            <br />
                            
                            <center>
                                <!--<asp:Button CssClass="btn-lg btn-danger" runat="server" Text="Explore" OnClick="Toblow_Click" />-->
                                <br /><br />
                                <iframe width="320" height="315"
                                    src="https://www.youtube.com/embed/D4hRGX0_ok0"></iframe>
                        </div>
                    </div>
                </div>



                <div class="col-4">
                    <div class="card" style="width: 420px; height: 740px; background-color: hotpink">
                        <div class="card-body">
                            <h1 class="card-title d-flex justify-content-center" style="font-family: 'Dosis', sans-serif;"><b>RC-4</b></h1>
                            <h3 class="align-content-lg-between" style="font-family: 'Dosis', sans-serif;">RC4 is a stream cipher and variable-length key algorithm. This algorithm encrypts one byte at a time (or larger units at a time). A key input is pseudorandom bit generator that produces a stream 8-bit number that is unpredictable without knowledge of input key, The output of the generator is called key-stream.</h3>
                            <br />
                            <center>
                                <!--<asp:Button CssClass="btn-lg btn-danger" runat="server" Text="Explore" OnClick="Torc4_Click" />-->
                                <br /><br />
                                <iframe width="320" height="315"
                                    src="https://www.youtube.com/embed/1UP56WM4ook"></iframe>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </form>
</asp:Content>
