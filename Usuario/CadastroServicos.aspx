<%@ Page Title="R$7 | CADASTRO SERVIÇOS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CadastroServicos.aspx.cs" Inherits="Usuario_CadastroServicos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">

    <style type="text/css">
        .campos {
            font: bold 14px Sans-Serif;
        }

        #popup {
            display: block;
            position: absolute;
            width: 200px;
            height: 260px;
            left: 76%;
            top: 900px;
            border: 1px solid #000000;
            padding: 6px;
            color: #000000;
            background: #fff;
            z-index: 300;
        }

            #popup a.fechar {
                color: #000033;
                text-align: right;
                float: right;
                text-decoration: none;
                font-family: Arial, Helvetica, sans-serif;
                width: 20px;
            }

            #popup a:hover.fechar {
                color: #003399;
            }
    </style>

    <script type="text/javascript">

        function limparPadrao(campo) {
            if (campo.value == campo.defaultValue) {
                campo.value = "";
            }
        }

        function escreverPadrao(campo) {
            if (campo.value == "") {
                campo.value = campo.defaultValue;
            }
        }

        function abreJanela(id) {
            var obj = document.getElementById(id);
            obj.style.display = 'block';
        }

        // fecha a DIV
        function fechaJanela(id) {
            var obj = document.getElementById(id);
            obj.style.display = 'none';
        }

    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">
    <p class="titulo">Cadastro Serviços</p>

    <asp:UpdatePanel ID="panelTudo" ChildrenAsTriggers="false" UpdateMode="Conditional" runat="server">
        <ContentTemplate>

            <table border="0">
                <tbody>
                    <tr>
                        <th class="campos" style="width: 540px">TITULO DO SERVIÇO:</th>
                        <th class="campos">CATEGORIA:</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="txtTituloServico" runat="server" Width="500"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rvTitulo" runat="server" ControlToValidate="txtTituloServico"
                                SetFocusOnError="True" BackColor="Pink"><br />*Digite o Título</asp:RequiredFieldValidator>
                        </td>
                        <td style="position: absolute">
                            <%--                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" style="width: 194px" type="button" id="dropdownMenu1" data-toggle="dropdown" runat="server">
                                    Selecione uma categoria  <span class="caret" style="position: relative; right: 0px"></span>
                                </button>
                                <ul class="dropdown-menu" role="menu" style="width: 194px" aria-labelledby="dropdownMenu1">
                                    <li role="presentation"><a name="1" class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Videos</a></li>
                                    <li role="presentation"><a name="2" class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Bizarro</a></li>
                                    <li role="presentation"><a name="3" class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Fotos</a></li>
                                    <li role="presentation"><a name="4" class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Narração</a></li>
                                    <li role="presentation"><a name="5" class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Outros</a></li>
                                </ul>
                            </div>
                            <input id="hdfCatVal" type="hidden" value="0" runat="server" />
                            <script>
                                $('.dropdown').click(function () {
                                    $('.dropdown-menu').slideToggle("slow");
                                });
                                $('.opt').click(function () {
                                    var hidden = document.getElementById("hdfCatVal").value;
                                    switch (this.name) {
                                        case "1":
                                            alert(hidden);
                                            document.getElementById("hdfCatVal").value = "1";
                                            alert(hidden);
                                            break;
                                        case "2":
                                            $("#hdfCatVal").val("2");
                                            break;
                                        case "3":
                                            $("#hdfCatVal").val("3");
                                            break;
                                        case "4":
                                            $("#hdfCatVal").val("4");
                                            break;
                                        case "5":
                                            $("#hdfCatVal").val("5");
                                            break;
                                        default:
                                            document.getElementById("Corpo_dropdownMenu1").innerHTML = "Videos  <span class='caret' style='position:absolute; right:13px; top: 16px'></span>";
                                            break;
                                    }
                                });
                            </script>--%>
                            <asp:DropDownList ID="ddlCategoria" Width="260px" Height="26px" runat="server">
                                <asp:ListItem Text="Selecione" Value="0" />
                                <asp:ListItem Text="Video" Value="1" />
                                <asp:ListItem Text="Bizarro" Value="2" />
                                <asp:ListItem Text="Outros" Value="3" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rvCategoria" runat="server" ControlToValidate="ddlCategoria"
                                Display="Dynamic" SetFocusOnError="True" InitialValue="0" BackColor="Pink"><br />*Selecione a Categoria</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                </tbody>
            </table>

            <p class="campos">
                DESCRIÇÃO:<br />
            </p>
            <asp:TextBox CssClass="form-control" ID="txtDescricao" runat="server" Style="resize: none" TextMode="MultiLine" Width="800px" Height="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvDescricao" runat="server" ControlToValidate="txtDescricao"
                Display="Dynamic" BackColor="Pink" SetFocusOnError="True"><br />*Digite a Descrição do Serviço</asp:RequiredFieldValidator>



            <table border="0">

                <tbody>

                    <tr>

                        <th class="campos" style="width: 540px">TAGS:</th>

                        <th class="campos">TEMPO ENTREGA:</th>
                    </tr>

                    <tr>

                        <td>
                            <asp:TextBox CssClass="form-control" runat="server" Text="Exemplo: #Programacao #TI #Tecnologia" ID="txtTag"
                                Onfocus="limparPadrao(this);" onblur="escreverPadrao(this);" Style="color: #808080; width: 400px;"></asp:TextBox></td>
                        <td>
                            <asp:TextBox CssClass="form-control" MaxLength="3" Text="0" Style="text-align: center; display: inline-block" Min="1" TextMode="Number" ID="txtTempoEntrega" Width="90px" runat="server"></asp:TextBox>
                            dia(s)
                        <asp:RequiredFieldValidator ID="rvTempo" runat="server" ControlToValidate="txtTempoEntrega"
                            Display="Dynamic" SetFocusOnError="True" BackColor="Pink" InitialValue="0">
                            <br />*Selecione o Tempo de Entrega</asp:RequiredFieldValidator></td>
                    </tr>
                </tbody>


            </table>
            <br />
            <table border="0">
                <tbody>
                    <tr>
                        <th class="campos" style="width: 540px;">UPLOAD FOTO:</th>
                        <th class="campos" style="width: 100px;">LINK VÍDEO:</th>

                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload CssClass="btn btn-default" ID="fupFoto" runat="server" />
                            <asp:RequiredFieldValidator ID="rvUploadFoto" runat="server" ControlToValidate="fupFoto"
                                Display="Dynamic" SetFocusOnError="True" BackColor="Pink"><br />*Selecione a Foto</asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:TextBox CssClass="form-control" ID="txtURLVideo" Width="260px" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                </tbody>
            </table>
            <br />

            <p class="campos">
                INSTRUÇÕES PARA COMPRADOR:
            </p>
            <asp:TextBox CssClass="form-control" runat="server" ID="txtInstrucoes" Style="resize: none" TextMode="MultiLine" Width="800px" Height="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvInstrucoes" runat="server" ControlToValidate="txtInstrucoes"
                Display="Dynamic" SetFocusOnError="True" BackColor="Pink"><br />*Digite a Instrução</asp:RequiredFieldValidator>


            <div style="margin-left: 650px;">
                <p class="campos">
                    ARQUIVO:  &nbsp;
                       <asp:CheckBox runat="server" ID="cbArquivo" />
                    Sim 
                 <a style="cursor: pointer">
                     <img src="/Usuario/Imagens/icone_interrogacao.png" onclick="abreJanela('popup')" /></a>
                </p>
            </div>
            <br />
            <div style="text-align: center">
                <asp:Button runat="server" CssClass="btn btn-success" Style="width: 200px;" ID="btnSalvar" Text="Salvar" OnClick="btnSalvar_Click" />
                <asp:Button runat="server" CssClass="btn btn-danger" Style="width: 200px;" ID="btnCancelar" Text="Cancelar" OnClick="btnCancelar_Click" />
            </div>

            <div id="popup" style="display: none;">
                <a href="javascript:;" onclick="fechaJanela('popup')" class="fechar">X</a>
                <br />
                Caso o comprador deverá enviar algum tipo de arquivo para realização desse serviço cadastrado, marque a opção SIM.<br />
                Se não for necessário, não marque a opção .<br />
                <b>Obs.: Relate nas 'INSTRUÇÕES PARA COMPRADOR' qual arquivo deverá ser enviado !</b>
            </div>

        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="btnSalvar" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

