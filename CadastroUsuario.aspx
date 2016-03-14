<%@ Page Title="R$7 | CADASTRO" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroUsuario.aspx.cs" Inherits="CadastroUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">
    <asp:UpdatePanel ID="panelTudo" ChildrenAsTriggers="false" UpdateMode="Conditional" runat="server">
        <ContentTemplate>
            <div id="divForm">
                <p class="titulo">Cadastro</p>
                <div class="fundoTopico" style="padding-left: 160px; border: 1px solid rgba(0,0,0,0.2); box-shadow: 2px 2px 1px rgba(0,0,0,0.3); background-color: rgba(0,0,0,0.05); border-radius: 10px 10px;">
                    <div id="divFora1" class="divTxtFora">
                        Nome Completo:
            <div id="divDentro1" class="divTxtDentro">
                <asp:TextBox ID="txtNome" CssClass="form-control txtForm" Width="300" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvNome" CssClass="rvStyle" ControlToValidate="txtNome" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>

                    <div id="divFora2" class="divTxtFora">
                        CPF:
            <div id="divDentro2" class="divTxtDentro">
                <asp:TextBox ID="txtCPF" CssClass="form-control txtForm" MaxLength="11" Width="300" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvCPF" CssClass="rvStyle" ControlToValidate="txtCPF" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>

                    <div id="divFora3" class="divTxtFora">
                        Telefone:
            <div id="divDentro3" class="divTxtDentro">
                <asp:TextBox ID="txtTelefone" ClientIDMode="Static" Width="300" OnKeypress="return mascaraTel(event, 'txtTelefone')" CssClass="form-control txtForm" MaxLength="14" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="rvStyle" ControlToValidate="txtTelefone" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>

                    <div id="divFora5" class="divTxtFora">
                        Email:
            <div id="divDentro5" class="divTxtDentro">
                <asp:TextBox ID="txtEmail" CssClass="form-control txtForm" Width="300" TextMode="Email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvEmail" CssClass="rvStyle" ControlToValidate="txtEmail" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>

                    <div id="divFora6" class="divTxtFora">
                        Senha:
            <div id="divDentro6" class="divTxtDentro">
                <asp:TextBox ID="txtSenha" TextMode="Password" Width="300" CssClass="form-control txtForm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvSenha" CssClass="rvStyle" ControlToValidate="txtSenha" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>

                    <div id="divFora8" class="divTxtFora">
                        Confirmar senha:
            <div id="divDentro8" class="divTxtDentro">
                <asp:TextBox ID="txtConfSenha" Width="300" TextMode="Password" CssClass="form-control txtForm" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="rvConfSenha" CssClass="rvStyle" ControlToValidate="txtConfSenha" ControlToCompare="txtSenha" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Senhas não conferem.
                </asp:CompareValidator>
            </div>
                    </div>
                    <div id="divFora4" class="divTxtFora">
                        Usuário:
            <div id="divDentro4" class="divTxtDentro">
                <asp:TextBox ID="txtUser" Width="300" CssClass="form-control txtForm" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rvUser" CssClass="rvStyle" ControlToValidate="txtUser" Display="Static" SetFocusOnError="True" runat="server" ValidationGroup="none">*Campo obrigatório.
                </asp:RequiredFieldValidator>
            </div>
                    </div>
                    <div id="divFora7" class="divTxtFora" style="width: 330px">
                        <asp:CheckBox ID="chkAceite" runat="server" />
                        Concordo com os <a href="Contrato.html" target="resource window">Termos de Serviço</a> do TudoPor7.
                    </div>
                    <p class="alert-info">
                        <img src="images/info.png" />
                        - "Usuário" e "Senha" tem restrição mínima de 6 caractéres. "Telefone" refere-se a número de fixo ou celular.
                    </p>
                    <asp:Button ID="btnCadastrarForm" CssClass="btn btn-default" OnClientClick="link();" OnClick="btnCadastrarForm_Click" Text="Cadastrar" runat="server" />
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnCadastrarForm" />
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

    <script type="text/javascript">
        function link() {
            exibeProgresso('UpdateProgress1');
            return estaPreenchido('divForm');
        }
    </script>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>
