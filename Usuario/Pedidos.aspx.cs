using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Usuario_Pedidos : System.Web.UI.Page
{
    Funcoes funcoes = new Funcoes();
    DateTime data;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UsuarioID"] != null)
            {
                sqlDataSource1.SelectParameters["UID"].DefaultValue = Session["UsuarioID"].ToString();
                sqlDataSource1.SelectCommand = "SELECT C.ID, A.TITULO, B.NOME, C.DTPEDIDO FROM Servicos A JOIN ServicosVendidos C ON A.ID = C.ServID JOIN Usuario B ON C.CompradorID = B.ID WHERE A.UsuarioID = @UID";
            }

            else
            {
            }
        }
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (fileup.HasFile)
        {
            try
            {
                int venda_id = int.Parse(IDvendaEmail.Value);
                string caminho = HttpContext.Current.Request.MapPath(HttpContext.Current.Request.ApplicationPath) + "/Uploads/Usuario_" + Session["UsuarioID"].ToString() + "/" + venda_id;
                System.IO.Directory.CreateDirectory(@caminho);
                fileup.SaveAs(Server.MapPath(@"~/Uploads/Usuario_" + Session["UsuarioID"].ToString() + "/" + venda_id + "/" + fileup.FileName));

                try
                {
                    QueryDB query = new QueryDB();
                    data = DateTime.Now;

                    funcoes.MailUpload(query.ServicoID_NomeComprador(venda_id), query.VendaID_EmailComprador(venda_id), venda_id, nomeServicoEmail.Value, data, @caminho + "/" + fileup.FileName);
                }
                catch (Exception)
                {
                    funcoes.Mensageiro("Erro ao enviar email!");
                }
            }
            catch (Exception)
            {
                funcoes.Mensageiro("Ocorreu um erro!");
            }
        }
        else
        {
            funcoes.Mensageiro("Adicione o arquivo para enviar!");
        }
    }
}