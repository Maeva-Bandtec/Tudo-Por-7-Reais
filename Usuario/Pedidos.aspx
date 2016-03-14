<%@ Page Title="R$ 7 | PEDIDOS" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Pedidos.aspx.cs" Inherits="Usuario_Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Cabecalho" runat="Server">
    <style>
        table {
            text-align: center;
        }

        .trEspecial {
        }

            .trEspecial:hover {
                cursor: pointer;
                background-color: rgba(0, 148, 255, 0.20);
            }
    </style>
    <script type="text/javascript">
        function clickLinha(id) {
            document.getElementById("IDVenda").value = document.getElementById("ID-" + id).value;
            document.getElementById("IDServ").value = document.getElementById("Titulo-" + id).value;
            document.getElementById("CNome").value = document.getElementById("Nome-" + id).value;
            document.getElementById("DataPedido").value = document.getElementById("DtPedido-" + id).value;

            document.getElementById("IDvendaEmail").value = document.getElementById("ID-" + id).value;
            document.getElementById("nomeServicoEmail").value = document.getElementById("Titulo-" + id).value;

            controlePop('popDetalheFore', 'popDetalheBack');
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Corpo" runat="Server">

    <asp:UpdatePanel ID="panelTudo" ChildrenAsTriggers="false" UpdateMode="Conditional" runat="server">
        <ContentTemplate>

            <p class="titulo">Pedidos</p>
            <div>
                <asp:Repeater ID="rptListagem" DataSourceID="sqlDataSource1" runat="server">

                    <HeaderTemplate>
                        <table class="table">
                            <tr>
                                <th colspan="6" style="background-color: rgba(0,0,0,0.1); font-size: 18pt; font-weight: 100; text-align: center">SERVIÇOS VENDIDOS</th>
                            </tr>
                            <tr>
                                <th style="text-align: center">NUM. VENDA</th>
                                <th style="text-align: center">NOME SERVIÇO</th>
                                <th style="text-align: center">COMPRADOR</th>
                                <th style="text-align: center">DATA COMPRA</th>
                            </tr>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr class="trEspecial" onclick="clickLinha(<%# DataBinder.Eval(Container.DataItem, "ID") %>)">
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "ID") %>
                                <input type="hidden" id="ID-<%# DataBinder.Eval(Container.DataItem, "ID") %>" value="<%# DataBinder.Eval(Container.DataItem, "ID") %>" />
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "Titulo") %>
                                <input type="hidden" id="Titulo-<%# DataBinder.Eval(Container.DataItem, "ID") %>" value="<%# DataBinder.Eval(Container.DataItem, "Titulo") %>" />
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "Nome") %>
                                <input type="hidden" id="Nome-<%# DataBinder.Eval(Container.DataItem, "ID") %>" value="<%# DataBinder.Eval(Container.DataItem, "Nome") %>" />
                            </td>
                            <td>
                                <%# DataBinder.Eval(Container.DataItem, "DtPedido") %>
                                <input type="hidden" id="DtPedido-<%# DataBinder.Eval(Container.DataItem, "ID") %>" value="<%# DataBinder.Eval(Container.DataItem, "DtPedido") %>" />
                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>

                </asp:Repeater>
            </div>
            <asp:SqlDataSource ID="sqlDataSource1" ConnectionString="<%$ ConnectionStrings:MaevaConnectionString%>" runat="server">
                <SelectParameters>
                    <asp:Parameter Name="UID" />
                </SelectParameters>
            </asp:SqlDataSource>

            <asp:HiddenField ID="IDvendaEmail" ClientIDMode="Static" runat="server" />
            <asp:HiddenField ID="nomeServicoEmail" ClientIDMode="Static" runat="server" />



            <div id="popDetalheBack" class="popupSenhaBack">
            </div>
            <div id="popDetalheFore" class="popupSenhaFore">
                <label>Número do pedido: </label>
                <asp:TextBox ID="IDVenda" CssClass="form-control" Text="" Enabled="false" runat="server" ClientIDMode="Static"></asp:TextBox>
                <br />
                <label>Serviço: </label>
                <asp:TextBox ID="IDServ" CssClass="form-control" Text="" Enabled="false" runat="server" ClientIDMode="Static"></asp:TextBox>
                <br />
                <label>Comprador: </label>
                <asp:TextBox ID="CNome" CssClass="form-control" Text="" Enabled="false" runat="server" ClientIDMode="Static"></asp:TextBox>
                <br />
                <label>Data de compra: </label>
                <asp:TextBox ID="DataPedido" CssClass="form-control" Text="" Enabled="false" runat="server" ClientIDMode="Static"></asp:TextBox>
                <br />
                <p>Envie seu serviço:</p>
                <asp:FileUpload CssClass="btn btn-default" ID="fileup" Style="width: 340px" runat="server" />
                <br />

                <asp:Button CssClass="btn btn-success" ID="btnEnviar" OnClick="btnEnviar_Click" OnClientClick="exibeProgresso('UpdateProgress1');" Text="Enviar!" runat="server" />
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
<asp:Content ID="Content3" ContentPlaceHolderID="Rodape" runat="Server">
</asp:Content>
