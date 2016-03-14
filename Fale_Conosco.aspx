<%@ Page Title="R$ 7 | FALE CONOSCO" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Fale_Conosco.aspx.cs" Inherits="Fale_Conosco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">
    <p class="titulo">Fale Conosco</p>
    <div style="border: 1px solid rgba(0,0,0,0.2); box-shadow: 2px 2px 1px rgba(0,0,0,0.3); background-color: rgba(0,0,0,0.05); border-radius: 10px 10px; padding:20px; padding-left:20%">
        <p>Nome:</p>
        <asp:TextBox CssClass="form-control" Style="width:600px" runat="server" ID="txtNome" />
        <asp:RequiredFieldValidator CssClass="rvStyle" ID="rvNome" ControlToValidate="txtNome" runat="server" SetFocusOnError="true">*Campo obrigatorio</asp:RequiredFieldValidator>
        <br />
        <p>E-mail:</p>
        <asp:TextBox CssClass="form-control" Style="width:600px" TextMode="Email" runat="server" ID="txtEmail" />
        <asp:RequiredFieldValidator CssClass="rvStyle" ID="RequiredFieldValidator1" ControlToValidate="txtEmail" runat="server" SetFocusOnError="true">*Campo obrigatorio</asp:RequiredFieldValidator>
        <br />
        <p>Assunto:</p>
        <asp:TextBox CssClass="form-control" runat="server" Style="width:600px" ID="txtAssunto" />
        <asp:RequiredFieldValidator CssClass="rvStyle" ID="RequiredFieldValidator2" ControlToValidate="txtAssunto" runat="server" SetFocusOnError="true">*Campo obrigatorio</asp:RequiredFieldValidator>
        <br />
        <p>Mensagem:</p>
        <asp:TextBox CssClass="form-control" Rows="8" runat="server" ID="txtTexto" Style="resize:none; width:600px" TextMode="MultiLine" />
        <asp:RequiredFieldValidator CssClass="rvStyle" ID="RequiredFieldValidator3" ControlToValidate="txtTexto" runat="server" SetFocusOnError="true">*Campo obrigatorio</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button CssClass="btn btn-default" Text="Enviar" runat="server" ID="btnEnviar" OnClick="btnEnviar_Click" />
        <asp:Button CssClass="btn btn-default" Text="Cancelar" runat="server" ID="btnCancelar" OnClick="btnCancelar_Click" />
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

