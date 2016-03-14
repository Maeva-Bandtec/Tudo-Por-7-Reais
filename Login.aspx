<%@ Page Title="R$7 | LOGIN" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Corpo" runat="Server">

    <asp:UpdatePanel ID="panelTudo" ChildrenAsTriggers="false" UpdateMode="Conditional" runat="server">
        <ContentTemplate>

            <div id="blackback" class="popupSenhaBack">
            </div>
            <p class="titulo">Login</p>
            <div id="divLogin" class="divLogin">               
                <div id="divTxt" class="divTxt">
                    <img src="images/user.png" class="icoLogin" />
                    <asp:TextBox ID="txtUsuario" CssClass="txtLogin" PlaceHolder="Usuário" MaxLength="20" runat="server"></asp:TextBox>
                </div>
                <div id="divTxt2" class="divTxt">
                    <img src="images/key.png" class="icoLogin" />
                    <asp:TextBox ID="txtSenha" CssClass="txtLogin" TextMode="Password" MaxLength="22" Placeholder="Senha" runat="server"></asp:TextBox>
                </div>
                <div id="divTxt3" style="height:40px; margin-top: 10px">
                    <asp:Button CssClass="btn btn-default" ID="btnEntrar" Text="Entrar" OnClientClick="return estaPreenchido('divLogin')" OnClick="btnEntrar_Click" runat="server" />
                    <asp:Button ID="btnCadastroLogin" CssClass="btn btn-default" Text="Cadastre-se" OnClick="btnCadastroLogin_Click" runat="server" /><br />
                    <a onclick="controlePop('pop', 'blackback'); limparCampos('popinterna');" style="cursor: pointer">Esqueci minha senha</a><br />
                    <br />
                </div>
            </div>
            <div id="pop" class="popupSenhaFore" style="height: 164px; width: 300px;">
                <div id="popinterna">
                    Digite o email cadastrado para receber seu usuário e senha na caixa de email.<br />
                    <br />
                    Email: 
        <asp:TextBox CssClass="form-control" TextMode="Email" Style="width: 200px; display: inline-block" ID="txtEmail" runat="server"></asp:TextBox><br />
                    <br />
                </div>
                <asp:Button ID="btnEnviar" Text="Enviar" CssClass="btn btn-default" OnClientClick="exibeProgresso('UpdateProgress1')" OnClick="btn_Enviar_Click" runat="server" />
                <br />
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnEnviar" />
        </Triggers>
    </asp:UpdatePanel>

    <asp:UpdateProgress ID="UpdateProgress1" ClientIDMode="Static" AssociatedUpdatePanelID="panelTudo" runat="server">
        <ProgressTemplate>
            <div class="divProgressExt">
                <div class="divProgressInt">
                    Aguarde um momento...<br />
                    <img src="/images/ajax-loader.gif" />
                </div>
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

