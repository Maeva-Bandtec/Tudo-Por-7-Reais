using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Usuario_CadastroServicos : System.Web.UI.Page
{
    MaevaDataContext db = new MaevaDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UsuarioLogadoID"] == null)
            {
                Response.Redirect("/Redireciona.aspx");
            }
        }
    }


    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        try
        {
            SalvarCadastro();
        }
        catch (Exception ex)
        {
            Funcoes funcoes = new Funcoes();
            bool sessaoNula = Session["UsuarioLogadoID"] == null;

            funcoes.MailReportarErro(sessaoNula ? "nula" : Session["UsuarioLogadoID"].ToString(), Request.Path, ex.ToString());
        }
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }

    public void SalvarCadastro()
    {
        QueryDB query = new QueryDB();

        var usuarioLog = query.UserID_UsuarioID((Guid)Session["UsuarioLogadoID"]);

        if (usuarioLog != null)
        {
            Servico cadastro = new Servico();

            if (fupFoto.HasFile)
            {
                Funcoes funcoes = new Funcoes();

                string extensao = string.Empty;

                if (fupFoto.HasFile)
                {
                    extensao = System.IO.Path.GetExtension(fupFoto.FileName).ToLower();

                    if (".png" == extensao || ".gif" == extensao || ".jpg" == extensao)
                    {
                        string applicationPath = HttpContext.Current.Request.ApplicationPath;
                        string mapPath = (HttpContext.Current.Request.MapPath(applicationPath));

                        if (!File.Exists(mapPath + "~/Usuario/SalvaServicos/Usuario_" + usuarioLog))
                        {
                            System.IO.Directory.CreateDirectory(mapPath + "/Usuario/SalvaServicos/Usuario_" + usuarioLog);
                        }

                        fupFoto.SaveAs(Server.MapPath(@"~/Usuario/SalvaServicos/Usuario_" + usuarioLog + "/" + fupFoto.FileName));

                        cadastro.Foto = (@"/Usuario/SalvaServicos/Usuario_" + usuarioLog + "/" + fupFoto.FileName);
                        cadastro.UsuarioID = usuarioLog;
                        cadastro.Titulo = txtTituloServico.Text;
                        cadastro.CategoriaID = Int32.Parse(ddlCategoria.SelectedValue);
                        cadastro.Descricao = txtDescricao.Text;
                        cadastro.TempoEntrega = Int32.Parse(txtTempoEntrega.Text);
                        cadastro.Tag = txtTag.Text;
                        cadastro.Video = txtURLVideo.Text;
                        cadastro.Instrucoes = txtInstrucoes.Text;
                        cadastro.Arquivo = cbArquivo.Checked;
                        cadastro.Ativo = true;
                        cadastro.DataAtivacao = DateTime.Now;

                        db.Servicos.InsertOnSubmit(cadastro);
                        db.SubmitChanges();

                        ClientScript.RegisterStartupScript(GetType(), "", "alert(\"Serviço Salvo com Sucesso\"); window.location=(\"/Servicos.aspx\");", true);
                    }
                    else
                    {
                        funcoes.Mensageiro("Apenas Arquivos JPG, PNG ou GIF");
                    }
                }
                else
                {
                    funcoes.Mensageiro("Anexe uma imagem");
                }
            }
        }
        else
        {
            Response.Redirect("/Redireciona.aspx");
        }
    }
}





