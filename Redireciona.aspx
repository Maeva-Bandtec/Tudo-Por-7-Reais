<%@ Page Title="Redirecionando..." Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" Runat="Server">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css' />
    <script type="text/javascript">

        var tempo = 10;
        document.onload = roda();

        function roda() {
            setInterval(
            function () {
                tempo--;
                document.getElementById('num').innerHTML = tempo;

                if (tempo < 1) {
                    window.location = "/Login.aspx";
                }
            }, 1000);
        }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" Runat="Server">
    
<div style="text-align:center; border: 1px dashed black; border-radius: 6px 6px; width: 300px; margin: 10%; margin-left: 38%">
<h1>Sessão expirada!</h1>
<img src="images/history.png" />
<p>Você está sendo redirecionado para<br /> a página de Login em <span id="num" style="font-weight:bold">10</span> segundos...<br />
ou clique <a href="/Login.aspx">aqui</a> para prosseguir.</p>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" Runat="Server">
</asp:Content>

