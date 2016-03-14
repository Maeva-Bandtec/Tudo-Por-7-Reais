using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.IO;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Funcoes funcoes = new Funcoes();

            if (Session["UsuarioLogadoID"] != null)
            {
                lblUsuario.Text = Session["UsuarioLogado"].ToString();
                divUser.Visible = true;
                imgUser.Visible = true;
                servicos.Visible = true;
                inbox.Visible = true;
                divDeslogado.Visible = false;
            }

            else
            {
                divUser.Visible = false;
                imgUser.Visible = false;

                if (Request.Path.Contains("CadastroServicos.aspx") || Request.Path.Contains("Pedidos.aspx") || Request.Path.Contains("Inbox.aspx"))
                {
                    Response.Redirect("/Redireciona.aspx");
                }
            }
        }
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Login.aspx?ReturnUrl=" + Request.RawUrl);
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("/CadastroUsuario.aspx");
    }
    protected void btnSair_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        //Session["UsuarioLogadoID"] = null;
        //Session["UsuarioLogado"] = null;
        Response.Redirect("/Login.aspx");
    }
    protected void btnEnviarSenha_Click(object sender, EventArgs e)
    {
        Funcoes funcoes = new Funcoes();

        if (txtSenhaNew.Text != txtSenhaNewConfirm.Text)
        {
            funcoes.Mensageiro("As senhas não conferem!");
        }

        else
        {
            try
            {
                QueryDB query = new QueryDB();

                if (query.UserID_Password(((Guid)Session["UsuarioLogadoID"])) == txtSenhaOld.Text)
                {
                    MembershipUser usuario = Membership.GetUser(query.UserID_Username((Guid)Session["UsuarioLogadoID"]));
                    usuario.ChangePassword(txtSenhaOld.Text, txtSenhaNewConfirm.Text);
                    funcoes.Mensageiro("Alteração feita com sucesso!");
                }
                else
                {
                    funcoes.Mensageiro("Senha antiga não confere!");
                }
            }
            catch (Exception)
            {
                funcoes.Mensageiro("Ocorreu um erro!");
            }
        }
    }
}
