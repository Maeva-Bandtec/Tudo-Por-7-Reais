<%@ Page Title="R$7 | COMPRAS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Compra.aspx.cs" Inherits="Compra" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Cabecalho" runat="Server">
    <link href="css/Style.css" rel="stylesheet" />

    <%--<asp:GridView ID="pergRespond" DataSourceID="dadosRespond" AllowPaging="true" AllowSorting="true" runat="server" Width="715px"></asp:GridView>
    <asp:SqlDataSource ID="dadosRespond" runat="server"
        ConnectionString="Data Source=JOÃORIBEIRO;Initial Catalog=TudoPor7;Integrated Security=True"
        ProviderName="System.Data.SqlClient"
        SelectCommand="SELECT ID, Pergunta, DtPergunta, Resposta, DtResposta from PerguntasVendedor where Status = 1"></asp:SqlDataSource>--%>
</asp:Content>
<%-- && ServicoID = Session['ServicoID']--%>

<asp:Content ID="Content3" ContentPlaceHolderID="Corpo" runat="server">

    <br />
    <table class="tabStyle">
        <tr style="padding-left: 20px;">
            <td rowspan="2" style="width: 300px; margin-left: 20px;">
                <div style="padding-right: 50px;">
                    <div style="margin-right: 20px">
                        <div class="divAba" id="divVideo">VIDEO </div> |
                        <div class="divAba" id="divFoto">FOTO </div>
                    </div>
                    <div class="DivCont" id="divImgID">
                        <img id="fotoServ" class="img-thumbnail" src="[LinkFoto]" runat="server" />
                    </div>
                    <div class="DivCont HID" id="divVidID">
                        <iframe id="frame" src="<%# "DataItem.video" %>" class="DivCont"></iframe>
                    </div>
                </div>
            </td>
        </tr>
        <tr style="text-align: center;">
            <td>
                <h3>Informações do Serviço </h3>
                <p>
                    <asp:Label ID="lblInfoServ" runat="server"></asp:Label>
                </p>
                <p>
                    <asp:Label ID="lblPrazo" runat="server"></asp:Label>
                    dia(s)
                </p>
                <p>
                    <asp:Label ID="lblServVend" runat="server"></asp:Label>
                </p>
            </td>
            <tr>
                <td></td>
                <td style="text-align: center;">
                    <asp:Button Text="Comprar" CssClass="btn btn-success btn-lg" runat="server" ID="btnComprar" OnClick="btnComprar_Click" />
                </td>
            </tr>
        </tr>
    </table>
    <br />
    <%--     <h3>INFORMAÇÕES DO SERVIÇO </h3>
           <div>
            <p>
                Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
			e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
            </p>
        </div>--%>

    <div>


        <%--
            <div class="make-question">	
                <form class="ch-form-row" action="/question/send" method="post" id="form_quest">	
                    <input name="itemId" id="itemId" value="MLB554203063" type="hidden">	
                    <input name="token" id="token" value="2b20b2241d56e7c18ab921dab95bed3598ff105b6d611f15a58183843c239c69bead56dab9bacd2ace23ec4efe09e68c" type="hidden">	
                    <div class="wraper-textarea">	
                        <i class="vip-icon ch-icon-comment"></i>	
                        <span class="ch-hide">Pergunta:</span>	
                        <p>	
                            <a id="reuseQuestion" class="pt-ques-text" href="#">repita a última realizada</a>	
                            <textarea class="" name="questionText" id="questionText" cols="110" width="90%" title="Escreva sua pergunta..." placeholder="Escreva sua pergunta ou">Escreva sua pergunta...</textarea>	
                            </p>	

                    </div>	
                    <div style="display: none;" class="wraper-actions">
                        <div class="ch-form-actions tips">	
                            <input disabled="disabled" value="Perguntar" name="saveQuest" id="saveQuest" class="ch-btn ch-btn-small ch-btn-disabled" type="submit">	Não digite dados de contato, não use linguagem vulgar, oferte ou pergunte por outro produto.	
                            <p class="contQuestion">Restam <span id="display">977</span> caracteres.</p>	

                        </div>	

                    </div>	

                </form>	

            </div>
        --%>




        <h3>PERGUNTE AO VENDEDOR </h3>

        <asp:TextBox Style="resize: none; margin-bottom: 6px; width: 900px" CssClass="form-control" ClientIDMode="Static" runat="server" ID="areaPerg" TextMode="MultiLine" PlaceHolder="Escreva sua pergunta..." />
    </div>
    <%--            <textarea style="display: inline-block; height: 150px;" class="editing" name="questionText" id="questionText" 
                cols="110" Width="90%" title="Escreva sua pergunta..." placeholder="Escreva sua pergunta...">Escreva sua pergunta...</textarea>--%>


    <div style="display: inline-block; position: relative; left: 834px;">
        <asp:Button CssClass="btn btn-default" Text="Enviar" runat="server" ID="btnEnviar" OnClick="btnEnviar_Click" />
    </div>

    <br />
    <h3>PERGUNTAS </h3>
    <%--<div class="CONTAINER" style="margin-left: 0px; width: 1000px;">--%>



    <%--<div id="h0" class="HEADER">Pergunta 1 </div>
            <div id="i0" class="ITEM HID">
                <p>
                    Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
				e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
                </p>
            </div>--%>
    <%--<div id="h1" class="HEADER">Pergunta 2 </div>
            <div id="i1" class="ITEM HID">
                <p>
                    Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
				e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
                </p>
            </div>
            <div id="h2" class="HEADER">Pergunta 3 </div>
            <div id="i2" class="ITEM HID">
                <p>
                    Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
				e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
                </p>
            </div>
            <div id="h3" class="HEADER">Pergunta 4 </div>
            <div id="i3" class="ITEM HID">
                <p>
                    Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
				e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
                </p>
            </div>
            <div id="h4" class="HEADER">Pergunta 5 </div>
            <div id="i4" class="ITEM HID">
                <p>
                    Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, 
				e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos.
                </p>
            </div>--%>


    <%--<asp:GridView ID="pergRespond" DataSourceID="dadosRespond" AllowPaging="True" AllowSorting="True" runat="server" Width="715px" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Pergunta" HeaderText="Pergunta" SortExpression="Pergunta" />
                    <asp:BoundField DataField="DtPergunta" HeaderText="DtPergunta" SortExpression="DtPergunta" />
                    <asp:BoundField DataField="Resposta" HeaderText="Resposta" SortExpression="Resposta" />
                    <asp:BoundField DataField="DtResposta" HeaderText="DtResposta" SortExpression="DtResposta" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="dadosRespond" runat="server"
                ConnectionString="Data Source=JOÃORIBEIRO;Initial Catalog=TudoPor7;Integrated Security=True"
                ProviderName="System.Data.SqlClient"
                SelectCommand="SELECT Pergunta, DtPergunta, Resposta, DtResposta from PerguntasVendedor where Status = 1"></asp:SqlDataSource>--%>



    <%-- <table class="tbl1">
                <tr class="tbPerg">
                    <td id="txtPergunta">&nbsp;</td>
                </tr>
                <tr class="tbResp">
                    <td id="tdPergunta">&nbsp;</td>
                </tr>
                <tr class="tbPerg">
                    <td id="txtResposta">&nbsp;</td>
                </tr>
                <tr class="tbResp">
                    <td id="tdResposta">&nbsp;</td>
                </tr>
            </table>--%>



    <%--</div>--%>
    <%--<asp:Table CssClass="tbl1" ID="tbl1" runat="server" Visible="false" >
            <asp:TableRow CssClass="tbPerg" runat="server">
                <asp:TableCell ID="cel1" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="tbData" runat="server">
                <asp:TableCell ID="cel2" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="tbPerg" runat="server">
                <asp:TableCell ID="cel3" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="tbData" runat="server">
                <asp:TableCell ID="cel4" runat="server"></asp:TableCell>
            </asp:TableRow >
        </asp:Table>--%>

    <asp:UpdatePanel ID="painel" runat="Server" UpdateMode="Conditional">
        <ContentTemplate>
            <table id="tbl1" class="tbl1">
                <tbody>
                    <asp:Literal ID="tbLiteral" runat="server"></asp:Literal>
                </tbody>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>

    <script type="text/javascript">
        //var headers = [
        //    document.getElementById("h0"),
        //    document.getElementById("h1"),
        //    document.getElementById("h2"),
        //    document.getElementById("h3"),
        //    document.getElementById("h4")
        //];
        //var items = [
        //    document.getElementById("i0"),
        //    document.getElementById("i1"),
        //    document.getElementById("i2"),
        //    document.getElementById("i3"),
        //    document.getElementById("i4")
        //];

        //function criaClick(h) {
        //    return function () {
        //        for (var i = 0; i <= 4; i++) {
        //            items[i].className = "ITEM HID";
        //        }
        //        items[h].className = "ITEM";
        //    };
        //}
        //for (var i = 0; i <= 4; i++) {
        //    headers[i].onclick = criaClick(i);
        //}

        //var but = [
        //    document.getElementById("x0"),
        //    document.getElementById("x1")
        //];
        //var cont = [
        //    document.getElementById("y0"),
        //    document.getElementById("y1")
        //];

        //function aaaaa(h) {
        //	return function () {

        //        for (var i = 0; i <= 1; i++) {
        //        	cont[i].className = "DivCont HID";

        //        };
        //        cont[h].className = "DivCont";
        //    }
        //}
        //for (var i = 0; i <= 1; i++) {
        //    but[i].onclick = aaaaa(i);
        //}

        var imgCont = document.getElementById("divImgID");
        var videoCont = document.getElementById("divVidID");
        var btnVideo = document.getElementById("divVideo");
        var btnFoto = document.getElementById("divFoto");

        function mostraVideo() {
            if (document.getElementById("frame").srcdoc == "") {
                document.getElementById("frame").srcdoc = "<br/><p><strong>Nenhum vídeo foi vinculado a esse serviço.</strong></p>";
            }
            videoCont.className = "DivCont";
            imgCont.className = "DivCont HID";
        };
        function mostraFoto() {
            imgCont.className = "DivCont";
            videoCont.className = "DivCont HID";
        };


        btnFoto.addEventListener("click", mostraFoto);
        btnVideo.addEventListener("click", mostraVideo);

        var areaPerg = document.getElementById("areaPerg");

        areaPerg.onblur = function () {
            if (areaPerg.value.length > 0) {
                areaPerg.style("height", "150");
            }
        };
    </script>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Rodape" runat="server">
</asp:Content>

