<%@ Page Title="R$7 | HOME" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 52px;
        }

        #TxtBuscar {
            width: 283px;
            margin-left: 0px;
            height: 20px;
        }

        h1, h5 {
            margin: 15px;
            font-size: 44px;
            color: #000;
            text-shadow: 1px 1px 1px #fff;
            text-align: center;
        }

            h1 span, h5 {
                font-size: 20px;
                display: block;
                color: #60817a;
            }
    </style>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Corpo" runat="server">

    <%--<link rel="shortcut icon" href="../favicon.ico">--%>
    <%--<link rel="stylesheet" type="text/css" href="css/demo.css" />--%>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Coustard:900' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css' />

    <div id="maior" style="text-align: center;">
        <div>
            <table style="width: 986px; border-bottom-style: none;">
                <tr>
                    <td>
                        <label id="LbCategoria" style="color: #999999">Categoria:</label></td>
                    <td class="auto-style1"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                        <label id="LbBusTag" style="color: #999999">Procure por #TAG</label></td>
                </tr>
                <td>
                    <div class="dropdown">
                        <button class="btn btn-default dropdown-toggle" style="width: 194px" type="button" id="dropdownMenu1" data-toggle="dropdown">
                            Selecione uma categoria  <span class="caret" style="position:relative; right:0px"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" style="width: 194px" aria-labelledby="dropdownMenu1">
                            <li role="presentation"><a class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Videos</a></li>
                            <li role="presentation"><a class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Bizarro</a></li>
                            <li role="presentation"><a class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Fotos</a></li>
                            <li role="presentation"><a class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Narração</a></li>
                            <li role="presentation"><a class="opt" style="text-align: center" role="menuitem" tabindex="-1" href="#">Outros</a></li>
                        </ul>
                    </div>
                    <script>
                        $('.dropdown').click(function () {
                            $('.dropdown-menu').slideToggle("slow");
                        });
                        $('.opt').click(function () {
                            document.getElementById("dropdownMenu1").innerHTML = this.textContent + "  <span class='caret' style='position:absolute; right:13px; top: 16px'></span>";
                        });
                    </script>
                    <td class="auto-style1"></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>&nbsp;</td>
                    <td>
                        <div class="col-lg-6" style="margin-left: 200px">
                            <div class="input-group">
                                <input type="text" placeholder="#tecnologia #photoshop #programacao" class="form-control">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"></span></button>
                                </span>
                            </div>
                        </div>
        </div>
        </td>
            </table>

    </div>

    </div>


    <asp:Panel ID="Panel1" runat="server">
        <div>
            <h5>&nbsp;</h5>

            <h5>Mais vendidos:</h5>
        </div>
        <div>
            <div>

                <%--<div class="container">  MUDANÇA JHOLL    --%>
                <div style="align-content: center">
                    <%--MUDANÇA JHOLL--%>
                    <div id="ca-container" class="ca-container">
                        <div class="ca-wrapper">
                            <div class="ca-item ca-item-1">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Ilustração</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Ilustrações infantis para qualquer história</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Ilustro seus desenhos</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Você está procurando uma ilustração para a sua próxima história? Não procure mais. Vou desenhar uma ilustração lunática e bonito para sua história.</p>

                                        </div>
                                        <ul>
                                            <li><a href="#">Leia mais</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-2">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Coloração digital</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Faço trabalho de pintura digital de qualquer imagem que você quiser!</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Coloração digital</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Me envie aquele desenho ou imagem em P&B e deixe que eu dê vida e alto astral.</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-3">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Transcrevo áudio</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Vou transcrever até 10 min. de seu arquivo de áudio razoavelmente claro.</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Transcrevo áudio</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Vou transcrever até 10 min. de seu arquivo de áudio razoavelmente claro.</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isso</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-4">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Reviso textos</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Reviso textos para apresentação empresarial, tcc e etc..</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Reviso textos</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Reviso textos para apresentação empresarial, tcc e etc.</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-5">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Consultoria</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Monto o plano estratégico do seu projeto</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Plano de negócios</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Ajudo você e a sua empresa a traçar um plano de estratégia consistente e conciso para dar um up nas vendas.</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-6">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Canto músicas</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Canto qualquer música que pedir</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Canto músicas a pedido</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Escolha aquela música que mais te agrada, ou então aquela que você acabou de compor, eu canto elas!</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-7">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Edição de fotos</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Edito suas fotos, tiro olhos vermelhos, marcas de espinhas. Clareio dentes etc..</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Edição de fotos</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Edito suas fotos, tiro olhos vermelhos, marcas de espinhas. Clareio dentes etc..</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="ca-item ca-item-8">
                                <div class="ca-item-main">
                                    <div class="ca-icon"></div>
                                    <h3>Interpreto sonhos</h3>
                                    <h4>
                                        <span class="ca-quote">&ldquo;</span>
                                        <span>Sonhando muitas vezes com a mesma coisa?.. Eu interpreto o seu sonho e trago revelações impressionantes para você.</span>
                                    </h4>
                                    <a href="#" class="ca-more">mais...</a>
                                </div>
                                <div class="ca-content-wrapper">
                                    <div class="ca-content">
                                        <h6>Interpreto sonhos</h6>
                                        <a href="#" class="ca-close">close</a>
                                        <div class="ca-content-text">
                                            <p>Sonhando muitas vezes com a mesma coisa?.. Eu interpreto o seu sonho e trago revelações impressionantes para você.</p>
                                        </div>
                                        <ul>
                                            <li><a href="#">Comprar</a></li>
                                            <li><a href="#">Compartilhe isto</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </asp:Panel>


    <%-- MUDANÇA JHOLL  --%>

    <%--<h5>Novidades:</h5>--%>

    <%-- MUDANÇA JHOLL  --%>
    <div style="align-content: center">
        <%-- MUDANÇA JHOLL  --%>
        <h5>Novidades:</h5>
        <%-- MUDANÇA JHOLL  --%>

        <div class="ca-item ca-item-1" style="position: relative; float: left; top: 0px; left: 0px;">
            <img src="images/7.jpg" style="height: 284px; width: 307px" />
        </div>
        <div style="position: relative; float: left; left: 16px;">
            <img src="images/8a.jpg" style="height: 284px; width: 307px" />
        </div>
        <div style="position: relative; float: left; left: 42px;">
            <img src="images/9.jpg" style="height: 284px; width: 307px" />
        </div>
    </div>



    <div style="text-align: center; position: relative; left: 25%; width: 500px">

        <h5>Ranking:</h5>
        <img src="/images/platina.png" />
        <img src="/images/ouro.png" />
        <img src="/images/prata.png" />
        <img src="/images/bronze.png" />
        <br />
        <br />

        <table class="table table-striped table-bordered" id="tblRank">
            <thead>
                <tr>
                    <th style="text-align: center">Vendedor</th>
                    <th style="text-align: center">Quantidade</th>
                    <th style="text-align: center">Posição</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1º</td>
                    <td>Felipe Mikio</td>
                    <td>329</td>
                </tr>
                <tr>
                    <td>2º</td>
                    <td>Letticia Nicoli</td>
                    <td>313</td>
                </tr>
                <tr>
                    <td>3º</td>
                    <td>Felipe Gonçalves</td>
                    <td>280</td>
                </tr>
                <tr>
                    <td>4º</td>
                    <td>Paulo Henrique</td>
                    <td>254</td>
                </tr>
                <tr>
                    <td>5º</td>
                    <td>João Ribeiro</td>
                    <td>199</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script src="Scripts/jquery.easing.1.3.js"></script>
    <!-- the jScrollPane script -->
    <script src="Scripts/jquery.mousewheel.js"></script>
    <script src="Scripts/jquery.contentcarousel.js"></script>
    <script type="text/javascript">
        $('#ca-container').contentcarousel();
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Rodape" runat="server">
</asp:Content>
