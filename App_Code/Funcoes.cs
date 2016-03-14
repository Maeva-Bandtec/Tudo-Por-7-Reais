using System;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.Web.UI;
using System.Linq;

public class Funcoes
{
    SmtpClient client = new SmtpClient();
    QueryDB query = new QueryDB();
    MailAddress contaEmail = new MailAddress("maeva.inc@gmail.com");

    public Funcoes()
    {
        client.Host = "smtp.gmail.com";
        client.Port = 587;
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        NetworkCredential basicauthenticationinfo = new NetworkCredential("maeva.inc@gmail.com", "123maeva456");
        client.Credentials = basicauthenticationinfo;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
    }

    public void MailRecupera(string email, string nova)
    {
        MailMessage msg = new MailMessage();
        msg.Subject = "Novos dados de acesso";
        Guid userid = query.Email_UserID(email);

        msg.Body = "Olá " + query.UserID_Nome(userid) + ",<br>Segue o seu nome de usuário e nova senha gerada. <br><br><strong>Usuário:</strong> " +
            query.UserID_Username(userid) + "<br><strong>Senha:</strong> " + nova + "<br><br>Atenciosamente,<br>Grupo Maeva";

        msg.From = contaEmail;
        msg.To.Add(email);
        msg.IsBodyHtml = true;

        client.Send(msg);
        Mensageiro("Email enviado com sucesso!");
    }

    public void MailCadastro(string nomeCompleto, string email)
    {
        MailMessage msg = new MailMessage();
        msg.Subject = "Boas vindas!";

        msg.Body = "Parabéns " + nomeCompleto + "!<br>Sua conta no nosso site foi criada com sucesso!<br>" +
            "Não perca tempo! Acesse o site e confira todos os serviços disponíveis e monetize os seus próprios!" +
            "<br><br>Atenciosamente,<br>Grupo Maeva";

        msg.From = contaEmail;
        msg.To.Add(email);
        msg.IsBodyHtml = true;

        client.Send(msg);
        Mensageiro("Cadastro realizado com sucesso!");
    }

    public void MailUpload(string nomeComprador, string email, int idvenda, string nomeservico, DateTime dataEntrega, string caminhoArq)
    {
        MailMessage msg = new MailMessage();
        msg.Subject = "Seu produto chegou!";

        msg.Body = "Olá " + nomeComprador + ", <br><br>Uma compra sua foi entregue!<br>" +
            "<br><strong>Número do pedido:</strong> " + idvenda +
            "<br><strong>Serviço comprado:</strong> " + nomeservico +
            "<br><strong>Data de entrega:</strong> " + dataEntrega.ToString() +
            "<br><br>Atenciosamente,<br>Grupo Maeva";

        Attachment anexo = new Attachment(caminhoArq);
        msg.Attachments.Add(anexo);

        msg.From = contaEmail;
        msg.To.Add(email);
        msg.IsBodyHtml = true;

        client.Send(msg);
        Mensageiro("Arquivo enviado com sucesso!");
    }

    public void MailReportarErro(string userid, string pagina, string erro)
    {
        if (userid != "nula")
        {
            MailMessage msg = new MailMessage();
            DateTime dataErro = DateTime.Now;

            msg.Subject = "Notificação de Erro";

            msg.Body = "<strong>UserID:</strong> " + userid + "<br><strong>Página:</strong> " + pagina + "<br><strong>Data:</strong> " + dataErro.ToString() + "<br><strong>Erro:</strong> " + erro;

            msg.From = contaEmail;
            msg.To.Add("maeva.inc@gmail.com");
            msg.IsBodyHtml = true;

            client.Send(msg);
        }
    }

    public void Mensageiro(string texto)
    {
        Page Page = new System.Web.UI.Page();
        Page = (Page)HttpContext.Current.Handler;

        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "Mensagem", "alert(\"" + texto + "\");", true);
    }

    public bool validaCpf(string cpf)
    {
        char[] cpfChar = cpf.ToCharArray();
        int[] cpfInt = new int[11];
        int dig1 = 0, dig2 = 0, cont1 = 10, cont2 = 11;

        for (int i = 0; i < 9; i++)
        {
            cpfInt[i] = Convert.ToInt32(cpfChar[i].ToString()) * cont1;
            cont1--;
        }
        for (int i = 0; i < 9; i++)
        {
            dig1 = dig1 + cpfInt[i];
        }

        if (dig1 % 11 < 2)
        {
            cpfInt[9] = 0;
        }
        else
        {
            cpfInt[9] = 11 - (dig1 % 11);
        }

        if (cpfInt[9] != Convert.ToInt32(cpfChar[9].ToString()))
        {
            return false;
        }
        else
        {
            for (int i = 0; i < 10; i++)
            {
                cpfInt[i] = Convert.ToInt32(cpfChar[i].ToString()) * cont2;
                cont2--;
            }
            for (int i = 0; i < 10; i++)
            {
                dig2 = dig2 + cpfInt[i];
            }
            if (dig2 % 11 < 2)
            {
                cpfInt[10] = 0;
            }
            else
            {
                cpfInt[10] = 11 - (dig2 % 11);
            }
            if (cpfInt[10] != Convert.ToInt32(cpfChar[10].ToString()))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}