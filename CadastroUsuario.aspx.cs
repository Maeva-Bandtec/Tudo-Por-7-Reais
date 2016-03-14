using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class CadastroUsuario : System.Web.UI.Page
{
    MaevaDataContext bd = new MaevaDataContext();
    QueryDB query = new QueryDB();
    Funcoes funcoes = new Funcoes();

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnCadastrarForm_Click(object sender, EventArgs e)
    {
        int campos = 0;

        if (txtSenha.Text.Count() < 6) { campos += 1; };
        if (txtTelefone.Text.Count() < 13) { campos += 2; };
        if (txtUser.Text.Count() < 6) { campos += 4; };

        if (campos != 0)
        {
            if (campos == 1) { funcoes.Mensageiro("- A senha deve conter no mínimo 6 caracteres."); };
            if (campos == 2) { funcoes.Mensageiro("- O telefone deve conter no mínimo 13 caracteres."); };
            if (campos == 3) { funcoes.Mensageiro("- A senha deve conter no mínimo 6 caracteres. \\n- O telefone deve conter no mínimo 13 caracteres."); };
            if (campos == 4) { funcoes.Mensageiro("- O usuário deve conter no mínimo 6 caracteres."); };
            if (campos == 5) { funcoes.Mensageiro("- A senha deve conter no mínimo 6 caracteres. \\n- O usuário deve conter no mínimo 6 caracteres."); };
            if (campos == 6) { funcoes.Mensageiro("- O telefone deve conter no mínimo 13 caracteres. \\n- O usuário deve conter no mínimo 6 caracteres."); };
            if (campos == 7) { funcoes.Mensageiro("- A senha deve conter no mínimo 6 caracteres. \\n- O telefone deve conter no mínimo 13 caracteres. \\n- O usuário deve conter no mínimo 6 caracteres."); };
        }

        if (funcoes.validaCpf(txtCPF.Text) == false)
        {
            funcoes.Mensageiro("CPF Iinválido!");
        }

        else
        {
            if (chkAceite.Checked == false)
            {
                funcoes.Mensageiro("Você deve aceitar os termos para se cadastrar!");
            }

            else
            {
                try
                {
                    Membership.CreateUser(txtUser.Text, txtSenha.Text, txtEmail.Text);

                    Guid userID = query.Username_UserID(txtUser.Text);
                    Usuario tbUsuario = new Usuario();

                    if (userID != null)
                    {
                        tbUsuario.Nome = txtNome.Text;
                        tbUsuario.Telefone = txtTelefone.Text;
                        tbUsuario.UserId = userID;

                        bd.Usuarios.InsertOnSubmit(tbUsuario);
                        bd.SubmitChanges();

                        funcoes.MailCadastro(txtNome.Text, txtEmail.Text);
                        ClientScript.RegisterStartupScript(GetType(), "", "window.location=(\"Home.aspx\");", true);

                        Session["UsuarioLogadoID"] = userID;
                        Session["UsuarioLogado"] = txtNome.Text;
                    }
                }
                catch (Exception)
                {
                    try
                    {
                        var dados = (from a in bd.aspnet_Users
                                     where a.UserName == txtUser.Text
                                     select a);

                        var dados2 = (from a in bd.aspnet_Memberships
                                      where a.Email == txtEmail.Text
                                      select a);

                        if (dados.Count() > 0 && dados2.Count() == 0)
                        {
                            funcoes.Mensageiro("- Nome de usuário existente.");
                        }

                        else if (dados2.Count() > 0 && dados.Count() == 0)
                        {
                            funcoes.Mensageiro("- Email existente.");
                        }

                        else if (dados2.Count() > 0 && dados.Count() > 0)
                        {
                            funcoes.Mensageiro("- Nome de usuário existente.\\n- Email existente.");
                        }
                    }

                    catch (Exception ex)
                    {
                        funcoes.Mensageiro(ex.ToString());
                    }
                }
            }
        }
    }
}
