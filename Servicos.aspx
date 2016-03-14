<%@ Page Title="R$7 | SERVIÇOS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Servicos.aspx.cs" Inherits="Servicos" %>

<%@ Import Namespace="System.Data" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">
    <p class="titulo">Serviços</p>
    <asp:Repeater ID="repeater1" runat="server">
        <ItemTemplate>
            <div class="divItem">
                <a style="text-decoration: none" href="Compra.aspx?ServicoID=<%# DataBinder.Eval(Container, "DataItem.idServico") %>">
                    <div style="overflow: hidden; border-radius: 6px 6px">
                        <img src="<%# DataBinder.Eval(Container, "DataItem.foto") %>" class="img-thumbnail" onclick="redireciona" /></div>
                </a>
                <div><a style="text-decoration: none" href="Compra.aspx?ServicoID=<%# DataBinder.Eval(Container, "DataItem.idServico") %>"><span class="tituloServico"><%# DataBinder.Eval(Container, "DataItem.titulo") %></a></span></div>
                <div><span class="usuario">Por: <%# DataBinder.Eval(Container, "DataItem.nome") %></span></div>
                <div><span class="categoria">Categoria: <%# DataBinder.Eval(Container, "DataItem.Categoria") %></span></div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

