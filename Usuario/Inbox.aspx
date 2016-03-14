<%@ Page Title="R$7 | INBOX" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Inbox.aspx.cs" Inherits="Inbox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
    <link href="css/Style.css" rel="stylesheet" />
    <script src="ScriptsJavaScript.js"></script>
    <script>
        function passaID() { document.getElementById('txtIDResp').value = <%= "ID" %> }
    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Corpo" runat="server">

    <div id="divPergNRespond">
        <p class="titulo">Perguntas Não Respondidas</p>
        <asp:GridView ID="GridPerguntasNRespond" DataSourceID="PerguntasNRespondidas" AllowPaging="true" AllowSorting="true" runat="server" AutoGenerateColumns="false" PageSize="5" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="Titulo" HeaderText="Serviço" ReadOnly="true" />
                <asp:BoundField DataField="Pergunta" HeaderText="Pergunta" ReadOnly="true" />
                <asp:BoundField DataField="DtPergunta" HeaderText="Data da Pergunta" ReadOnly="true" />
                <%--<asp:BoundField DataField="Resposta" HeaderText="Resposta" ReadOnly="true" />--%>
                <%--<asp:BoundField DataField="DtResposta" HeaderText="Data da Resposta" ReadOnly="true" />--%>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="PerguntasNRespondidas" runat="server"
            ConnectionString="Data Source=(localdb)\sqli;Initial Catalog=Maeva;Integrated Security=True"
            ProviderName="System.Data.SqlClient"
            SelectCommand="SELECT S.Titulo, P.Pergunta, P.DtPergunta FROM Servicos AS S, PerguntasVendedor AS P WHERE P.Status = 0 AND P.VendedorId = @usuarioId AND S.UsuarioID = P.VendedorId">
            <SelectParameters>
                <asp:Parameter Name="usuarioId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <div id="divPergRespond">
        <p class="titulo">Perguntas Respondidas</p>
        <asp:GridView ID="GridPerguntasRespond" DataSourceID="PerguntasRespondidas" AllowPaging="true" AllowSorting="true" runat="server" AutoGenerateColumns="false" PageSize="5" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="true" />
                <asp:BoundField DataField="Titulo" HeaderText="Serviço" ReadOnly="true" />
                <asp:BoundField DataField="Pergunta" HeaderText="Pergunta" ReadOnly="true" />
                <asp:BoundField DataField="DtPergunta" HeaderText="Data da Pergunta" ReadOnly="true" />
                <asp:BoundField DataField="Resposta" HeaderText="Resposta" ReadOnly="true" />
                <asp:BoundField DataField="DtResposta" HeaderText="Data da Resposta" ReadOnly="true" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="PerguntasRespondidas" runat="server"
            ConnectionString="Data Source=(localdb)\sqli;Initial Catalog=Maeva;Integrated Security=True"
            ProviderName="System.Data.SqlClient"
            SelectCommand="SELECT P.ID, S.Titulo, P.Pergunta, P.Resposta, P.DtPergunta, P.DtResposta FROM Servicos AS S, PerguntasVendedor AS P WHERE Status = 1 AND VendedorId = @usuarioId AND S.ID = P.ServicosID">
            <SelectParameters>
                <asp:Parameter Name="usuarioId" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div style="margin-top: 20px; padding-left: 28px">
        ID:
        <asp:TextBox ID="txtIDResp" CssClass="form-control" TextMode="Number" Min="1" Width="90" runat="server" ClientIDMode="Static"></asp:TextBox><br />
        Texto:
    <asp:TextBox ID="txtResp" CssClass="form-control" Style="resize: none" TextMode="MultiLine" runat="server" Width="485px" Height="65px"></asp:TextBox>
        <br />
        <asp:Button ID="btnResp" CssClass="btn btn-success" Text="Enviar" runat="server" OnClick="btnResp_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

