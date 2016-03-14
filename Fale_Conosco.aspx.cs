using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Fale_Conosco : System.Web.UI.Page
{
	//instanciando objeto q controla o banco
    MaevaDataContext db = new MaevaDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlGenericControl link = (HtmlGenericControl)this.Master.FindControl("divContato");

        link.Style.Add("background-color", "rgba(0,0,0,0.1)");
    }
	protected void btnEnviar_Click(object sender, EventArgs e) //eventos q acontecem com o click do btn
	{
        FaleConosco mensagem = new FaleConosco(); //instanciando a tabela
        mensagem.Nome = txtNome.Text; //armazenando os dados da caixa de texto txtNome na coluna Nome da tabela FaleConosco
        mensagem.Email = txtEmail.Text;
        mensagem.Assunto = txtAssunto.Text;
        mensagem.Descricao = txtTexto.Text;
        mensagem.Data_contato = DateTime.Now;
		
		db.FaleConoscos.InsertOnSubmit(mensagem);
		db.SubmitChanges();

		Response.Write("<script> alert('Sua mensagem foi enviada com sucesso'); window.location='home.aspx'; </script>");
	
	}
	protected void btnCancelar_Click(object sender, EventArgs e)
	{

	}
}