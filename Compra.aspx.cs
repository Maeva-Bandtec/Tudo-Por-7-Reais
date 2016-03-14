using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Compra : System.Web.UI.Page
{
    // Instanciando um objeto q controla o banco.

    MaevaDataContext bd1 = new MaevaDataContext();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UsuarioLogadoID"] == null)
            {
                areaPerg.Enabled = false;
                areaPerg.Text = "[LOGUE-SE PARA PERGUNTAR]";
                btnEnviar.Visible = false;
                btnComprar.Visible = true;
            }
            else
                if ((Int32)Session["UsuarioID"] == bd1.Servicos
                    .Where(s => s.ID == Convert.ToInt32(Request.QueryString["ServicoID"]))
                    .Select(u => u.UsuarioID)
                    .FirstOrDefault())
                    btnComprar.Visible = false;


            StringBuilder str = new StringBuilder();

            // SELECT modo função lambda
            //var lista = bd1.PerguntasVendedors.Join(bd1.Usuarios,
            //    a => a.CompradorId,
            //    b => b.ID,
            //    (a, b) => new { a.ID, a.Pergunta, a.DtPergunta, a.Resposta, a.DtResposta, a.Status, a.ServicosID, b.Nome }).ToList().Where(a => a.Status == true && a.ServicosID == Convert.ToInt32(Request.QueryString["ServicoID"]));

            var listar = from a in bd1.PerguntasVendedors
                         join b in bd1.Usuarios on a.CompradorId equals b.ID
                         where a.Status == true && a.ServicosID == Convert.ToInt32(Request.QueryString["ServicoID"])
                         select new
                         {
                             a.ID,
                             a.Pergunta,
                             a.DtPergunta,
                             a.Resposta,
                             a.DtResposta,
                             b.Nome
                         };

            if (listar.Count() > 0)
            {
                foreach (var item in listar)
                {
                    str.Append("<tr><th class='tbPerg'>" + item.Pergunta + "</th></tr><tr><th class='tbData'>" + "Por: " + item.Nome + ", dia " + item.DtPergunta + "</th></tr><tr><th class='tbPerg'>" + item.Resposta + "</th></tr><tr><th class='tbData'>" + "Respondido dia: " + item.DtResposta + "</th></tr>");
                }
            }

            tbLiteral.Text = str.ToString();

            var serv = (from a in bd1.Servicos
                        join b in bd1.Usuarios on a.UsuarioID equals b.ID
                        where a.ID == Convert.ToInt32(Request.QueryString["ServicoID"]) && a.UsuarioID == b.ID//1 //(int)Session["ServicoID"]
                        select new
                        {
                            foto = a.Foto,
                            video = a.Video,
                            nome = b.Nome
                        }).First();

            fotoServ.Src = serv.foto;


            // Informações do Vendedor
            var InfoServ = (from a in bd1.Servicos
                            where a.ID == Convert.ToInt32(Request.QueryString["ServicoID"])//1 //(int)Session["ServicoID"]
                            select a.Descricao).First();

            lblInfoServ.Text = "INFORMAÇÕES DO SERVIÇO<br />" + InfoServ;

            // Quantidade de Serviços Vendidos
            var ServVend = (from a in bd1.ServicosVendidos
                            where a.ServID == Convert.ToInt32(Request.QueryString["ServicoID"])//1 //(int)Session["ServicoID"]
                            select a.ServID).Count();

            lblServVend.Text = "QUANTIDADE VENDIDOS <br />" + ServVend.ToString();

            // Prazo de entrega do Serviço

            var PrazoEnt = (from a in bd1.Servicos
                            where a.ID == Convert.ToInt32(Request.QueryString["ServicoID"])//1 //(int)Session["ServicoID"]
                            select a.TempoEntrega).First();

            lblPrazo.Text = "PRAZO DE ENTREGA<br />" + PrazoEnt;

            //    PerguntasVendedor perg = new PerguntasVendedor();
            //    //string pergunta = perg.Pergunta;
            //    //string dtperg = perg.DtPergunta.ToString();
            //    //string reposta = perg.Resposta;
            //    //string dtresp = perg.DtResposta.ToString();

            //    SqlConnection conn = new SqlConnection("Data Source=JOÃORIBEIRO;Initial Catalog=TudoPor7;Integrated Security=True");
            //    conn.Open();
            //    SqlCommand cmd;
            //    SqlDataReader reader;
            //    string pergunta, resposta;
            //    DateTime dtperg, dtresp;

            //    cmd = new SqlCommand("SELECT Pergunta, DtPergunta, Resposta, DtResposta FROM PerguntasVendedor WHERE Status = 1 ORDER BY pergunta ASC", conn);
            //    reader = cmd.ExecuteReader();

            //    while (reader.Read())
            //    {
            //        pergunta = reader.GetString(0);
            //        dtperg = reader.GetDateTime(1);
            //        resposta = reader.GetString(2);
            //        dtresp = reader.GetDateTime(3);

            //cel1.Text = pergunta;
            //cel2.Text = dtperg.ToShortDateString();
            //cel3.Text = resposta;
            //cel4.Text = dtresp.ToShortDateString();
        }

        //else {
        //    lbl2.Visible = false;
        //}
        //string pergAoVend;

        //var servico = (from a in bd1.Servicos where a.ServicosVendidos == (Guid)Session["ServicoID"] select a.ID);
        //var comprador = (from a in bd1.Usuarios where a.UserId == (Guid)Session["UsuarioLogadoID"] select a.ID);
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        string txtDaPerg = areaPerg.Text;

        var idserv = (from a in bd1.Servicos
                      where a.ID == Convert.ToInt32(Request.QueryString["ServicoID"])
                      select a.UsuarioID).First();

        if (Session["UsuarioID"] == null)
        {
            Response.Redirect("/Redireciona.aspx");
        }
        else
            if (txtDaPerg.Length <= 3)
            {
                Response.Write("<script> alert('Escreva uma pergunta!'); </script>");
                return;
            }
            else
            {
                //var perguntas = (from a in bd1.Usuarios
                //                 join b in bd1.Servicos on a.ID equals b.UsuarioID
                //                 join c in bd1.PerguntasVendedors on b.ID equals c.ServicosID
                //                 where a.UserId == (Guid)Session["UsuarioLogadoID"]
                //                 && b.ID == (int)Session["ServicoID"]
                //                 select c).First();

                PerguntasVendedor perg = new PerguntasVendedor(); //instanciando a tabela

                perg.Pergunta = txtDaPerg;  //armazenando os dados da caixa de texto areaPerg na coluna Nome da tabela PerguntasVendedor
                perg.DtPergunta = DateTime.Now;
                perg.Status = false;
                perg.VendedorId = (int)idserv;
                perg.CompradorId = (int)(Session["UsuarioID"]);
                perg.ServicosID = int.Parse((Request.QueryString["ServicoID"]));

                bd1.PerguntasVendedors.InsertOnSubmit(perg);
                bd1.SubmitChanges();

                Response.Write("<script> alert('Sua Pergunta foi enviada com sucesso!'); </script>");
                areaPerg.Text = "";
            }
    }
    protected void btnComprar_Click(object sender, EventArgs e)
    {
        if (Session["UsuarioID"] == null)
            Response.Redirect("/Login.aspx?ReturnUrl=" + Request.RawUrl);
        else
        {
            ServicosVendido compra = new ServicosVendido();
            compra.ServID = Int32.Parse(Request.QueryString["ServicoID"]);
            compra.CompradorID = (Int32)Session["UsuarioID"];
            compra.DtPedido = DateTime.Now;
            compra.DtEntrega = null;
            compra.UpArq = null;

            bd1.ServicosVendidos.InsertOnSubmit(compra);
            bd1.SubmitChanges();
        }
    }
}


