using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net.Mail;
using System.Net;

public partial class Login : System.Web.UI.Page
{
    MaevaDataContext bd = new MaevaDataContext();
    aspnet_User tbuser = new aspnet_User();
    Usuario tbusuario = new Usuario();
    Funcoes funcoes = new Funcoes();
    QueryDB query = new QueryDB();

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnCadastroLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("CadastroUsuario.aspx");
    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        if (Membership.ValidateUser(txtUsuario.Text, txtSenha.Text))
        {

            Guid idsession = query.Username_UserID(txtUsuario.Text);

            Session["UsuarioLogadoID"] = idsession;
            Session["UsuarioLogado"] = query.UserID_Nome(idsession);
            Session["UsuarioID"] = query.UserID_UsuarioID(idsession);
            Response.Redirect(Request.QueryString["ReturnUrl"]);
        }

        else
        {
            funcoes.Mensageiro("Usuário e/ou senha incorretos.");
        }
    }
    
    protected void btn_Enviar_Click(object sender, EventArgs e)
    {
        try
        {
            MembershipUser usuario = Membership.GetUser(query.UserID_Username(query.Email_UserID(txtEmail.Text)));
            string nova = Membership.GeneratePassword(12, 4);
            usuario.ChangePassword(query.UserID_Password(query.Email_UserID(txtEmail.Text)), nova);
            funcoes.MailRecupera(txtEmail.Text, nova);
        }

        catch (Exception)
        {
            funcoes.Mensageiro("Ocorreu um erro ao enviar o email!");
        }
    }
}