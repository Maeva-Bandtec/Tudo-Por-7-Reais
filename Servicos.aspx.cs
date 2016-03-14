using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Servicos : System.Web.UI.Page
{
    //instanciando objeto q controla o banco
    MaevaDataContext db = new MaevaDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlGenericControl link = (HtmlGenericControl)this.Master.FindControl("divServicos");

        link.Style.Add("background-color", "rgba(0,0,0,0.1)");

        //armazenando o select em uma variavel
        if (!IsPostBack)
        {
            var serv = (from a in db.Servicos
                        join b in db.Usuarios on a.UsuarioID equals b.ID
                        select new
                        {
                            foto = a.Foto,
                            titulo = a.Titulo,
                            categoria = a.Categoria.NomeCategoria,
                            nome = b.Nome,
                            idServico = a.ID
                        });


            repeater1.DataSource = serv;
            repeater1.DataBind();


        }

    }
}