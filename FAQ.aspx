<%@ Page Title="R$7 | FAQ" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FAQ.aspx.cs" Inherits="FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
    <script src="ScriptsJavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">

    <p class="titulo">Perguntas Frequentes</p>
    <div class="fundoTopico" style="border: 1px solid rgba(0,0,0,0.2); box-shadow: 2px 2px 1px rgba(0,0,0,0.3); background-color: rgba(0,0,0,0.05); border-radius: 10px 10px; padding:20px">
        <div>
            <p class="topico">Sobre o site</p>
            <ul>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t1p1');">O que é o "Self-7C"?</a>
                    <br />
                    <div id="t1p1" style="display: none;">
                        <p class="resposta">"Self-7C" é um espaço para as pessoas anunciarem e venderem seus serviços. Nos somos o canal de comunicação entre quem busca a inovação criativa e a mente que irá desenvolver a solução.</p>
                    </div>
                </li>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t1p2');">Por que vender no "Self-7C"?</a>
                    <br />
                    <div id="t1p2" style="display: none;">
                        <p class="resposta">Os serviços que vendemos no site são frutos de atividades que você pode pratica diariamente. Por que não gerar uma renda extra com o seu hobby?</p>
                    </div>
                </li>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t1p3');">De onde surgiu a idéia?</a>
                    <br />
                    <div id="t1p3" style="display: none;">
                        <p class="resposta">Resolvemos trazer essa idéia, já difundida no exterior, para o Brasil. O e-commerce no brasil cresceu muito nos ultimos anos e antes do "Self-7C" não tinha nada  parecido no mercado nacional</p>
                    </div>
                </li>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t1p4');">Por que 7 Reais?</a>
                    <br />
                    <div id="t1p4" style="display: none;">
                        <p class="resposta">Escolhemos um valor fixo para o comprador não utilizar o preço como parametro de escolha entre serviços semelhantes e sim a qualidade. Por se tratar de serviços informais e geralmente bem simples, o valor não é alto.</p>
                    </div>
                </li>
            </ul>
        </div>

        <div>
            <p class="topico">Funcionamento do site</p>
            <ul>
                <li>
                    <a class="tituloPergunta" onclick="javascript: exibe('t2p1');">Como vender meu serviço no site?</a>
                    <br />
                    <div id="t2p1" style="display: none;">
                        <p class="resposta">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tortor, rutrum quis tincidunt quis, porta eu purus. Maecenas interdum faucibus risus, et ultricies quam tristique at. Nam ac lorem eu augue dignissim varius at vitae leo. Maecenas et ullamcorper purus, vitae adipiscing libero. Aliquam sit amet lectus nec tellus sagittis tincidunt. Praesent vel convallis mauris. Curabitur nisl odio, elementum ac ullamcorper id, aliquet non est.</p>
                    </div>
                </li>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t2p2');">Como comprar um serviço no site?</a>
                    <br />
                    <div id="t2p2" style="display: none;">
                        <p class="resposta">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tortor, rutrum quis tincidunt quis, porta eu purus. Maecenas interdum faucibus risus, et ultricies quam tristique at. Nam ac lorem eu augue dignissim varius at vitae leo. Maecenas et ullamcorper purus, vitae adipiscing libero. Aliquam sit amet lectus nec tellus sagittis tincidunt. Praesent vel convallis mauris. Curabitur nisl odio, elementum ac ullamcorper id, aliquet non est.</p>
                    </div>
                </li>
                <li><a class="tituloPergunta" onclick="javascript: exibe('t2p3');">Tenho garantia sobre os serviços comprados?</a>
                    <br />
                    <div id="t2p3" style="display: none;">
                        <p class="resposta">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer enim tortor, rutrum quis tincidunt quis, porta eu purus. Maecenas interdum faucibus risus, et ultricies quam tristique at. Nam ac lorem eu augue dignissim varius at vitae leo. Maecenas et ullamcorper purus, vitae adipiscing libero. Aliquam sit amet lectus nec tellus sagittis tincidunt. Praesent vel convallis mauris. Curabitur nisl odio, elementum ac ullamcorper id, aliquet non est.</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>

