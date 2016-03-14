using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Inbox : System.Web.UI.Page
{
    MaevaDataContext db = new MaevaDataContext();
    QueryDB query = new QueryDB();
    Funcoes funcoes = new Funcoes();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PerguntasNRespondidas.SelectParameters["usuarioId"].DefaultValue = Session["UsuarioID"].ToString();
            PerguntasRespondidas.SelectParameters["usuarioId"].DefaultValue = Session["UsuarioID"].ToString();
        }
    }


    protected void btnResp_Click(object sender, EventArgs e)
    {
        try
        {
            if (db.PerguntasVendedors
                .Where(u => u.ID == int.Parse(txtIDResp.Text))
                .Count() > 0)
            {
                PerguntasVendedor tbPerg = (from u in db.PerguntasVendedors
                                            where u.ID == int.Parse(txtIDResp.Text)
                                            select u).FirstOrDefault();

                tbPerg.Resposta = txtResp.Text;
                tbPerg.DtResposta = DateTime.Now;
                tbPerg.Status = true;

                db.SubmitChanges();

                funcoes.Mensageiro("Resposta enviada com sucesso!");
            }
            else
                funcoes.Mensageiro("Esse serviço não é seu!");

        }
        catch (Exception ex)
        {
            Funcoes funcoes = new Funcoes();
            bool sessaoNula = Session["UsuarioLogadoID"] == null;

            funcoes.MailReportarErro(Session["UsuarioLogadoID"].ToString(), Request.Path, ex.ToString());
            Response.Redirect("/Erro.aspx");
        }
    }
}