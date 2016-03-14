<%@ Page Title="R$7 | QUEM SOMOS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="QuemSomos.aspx.cs" Inherits="QuemSomos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">
    <p class="titulo">Quem Somos </p>
    <div style="border: 2px; border-color: black">
        <h4>A EMPRESA </h4>
        <p>Somos todos estudantes da área de TI, cursando Análise e Desenvolvimento de Sistemas na Faculdade de Tecnologia Bandeirantes. A concretização desta empresa ocorreu
            no segundo semestre (Agosto/2013), e desde então os 5 que representam o coração da empresa permaneceram juntos. Criamos mais que uma empresa, formamos um laço
            entre nós em que cada um ajuda o outro em cada problema. Somos apaixonados por tecnologia e queremos trabalhar, contribuir e construir com ela.
        </p>
        <ul>
            <li><b>Missão:</b> Maeva é o nosso trabalho e a nossa cultura. Acreditamos que o sucesso é atingido através da imaginação, paixão e inteligência. Nosso 
                comprometimento é em fazer o que amamos e fazer bem.</li>

            <li><b>Visão:</b> Ser a mais acessível e maior facilitadora de soluções em TI do Brasil, para empresas de pequeno e médio porte.</li>

            <li><b>Valores:</b> Disciplina, Entregar resultados, Garra, Solidez e Descontração</li>
        </ul>
    </div>
    <br />
    <div class="titlePage">
        <h4>SITE </h4>
        <p>Nos baseamos no Fiverr.com, site americano onde exergamos a concretização de uma grande oportunidade, e iniciamos o desenvolvimento deste sistema baseado em uma 
            modalidade de e-commerce ainda pouco explorada no Brasil. Ao analisar como o site pioneiro trabalha, admiramos a ideia e resolvemos implementar algo parecido em 
            nosso país, mas sem perder o conceito que nos inspirou.</p>
        <br />
    </div>
    <div class="titlePage">
        <h4>NOSSA EQUIPE </h4>
        <div style="text-align: center">

            <div style="width: 120px; height: 122px; display: none;" onmouseover="mostraDivFoto('div1');" onmouseout="ocultaDivFoto('div1');">
                <div id="div1" class="divFotoHover">
                    <p>Cauê V.</p>
                    <a href="https://www.facebook.com/caues" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:caue.vds@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/caue.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: inline-block;" onmouseover="mostraDivFoto('div2');" onmouseout="ocultaDivFoto('div2');">
                <div id="div2" class="divFotoHover">
                    <p>Felipe G.</p>
                    <a href="https://www.facebook.com/goncalvess.felipe" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:felipe.goncalvess@yahoo.com.br" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/felipeG.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: inline-block;" onmouseover="mostraDivFoto('div3');" onmouseout="ocultaDivFoto('div3');">
                <div id="div3" class="divFotoHover">
                    <p>Felipe M.</p>
                    <a href="https://www.facebook.com/felipe.monobe" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:fmvmonobe@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/felipeM.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: none;" onmouseover="mostraDivFoto('div4');" onmouseout="ocultaDivFoto('div4');">
                <div id="div4" class="divFotoHover">
                    <p>João C.</p>
                    <a href="https://www.facebook.com/joaocarlos.lima.3956" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:jcarlos.lima1993@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/joaoC.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: inline-block;" onmouseover="mostraDivFoto('div5');" onmouseout="ocultaDivFoto('div5');">
                <div id="div5" class="divFotoHover">
                    <p>João R.</p>
                    <a href="https://www.facebook.com/jholl.ribeirojs" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:jrsantos.joao@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/joaoR.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: inline-block;" onmouseover="mostraDivFoto('div6');" onmouseout="ocultaDivFoto('div6');">
                <div id="div6" class="divFotoHover">
                    <p>Letticia N.</p>
                    <a href="https://www.facebook.com/letticia.nicoli" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:letticia.nicoli@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/letticia.jpg" class="foto" />
            </div>

            <div style="width: 120px; height: 122px; display: inline-block;" onmouseover="mostraDivFoto('div7');" onmouseout="ocultaDivFoto('div7');">
                <div id="div7" class="divFotoHover">
                    <p>Paulo H.</p>
                    <a href="https://www.facebook.com/paulohenrique.lopes.1426" target="_blank" tabindex="-1">
                        <img src="images/facebook.png" width="32" height="32" /></a>
                    <a href="mailto:paulohls.lops@gmail.com" tabindex="-1">
                        <img src="images/mail.png" width="32" height="32" /></a>
                </div>
                <img src="images/Fotos/paulo.jpg" class="foto" />
            </div>
        </div>
    </div>
    <script>
        function mostraDivFoto(id) {
            var teste = document.getElementById(id);
            teste.style.zIndex = "1";
        }
        function ocultaDivFoto(id) {
            var teste = document.getElementById(id);
            teste.style.zIndex = "-1";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

