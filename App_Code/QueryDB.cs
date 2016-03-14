using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class QueryDB
{
    MaevaDataContext bd = new MaevaDataContext();
    aspnet_User tbuser = new aspnet_User();
    Usuario tbusuario = new Usuario();

    public QueryDB()
    {
    }

    public Guid Email_UserID(string email)
    {
        //Guid userid = (from a in bd.aspnet_Memberships
        //               where a.LoweredEmail == email.ToLower()
        //               select a).First().UserId;
        //return userid;

        return bd.aspnet_Memberships.Single(p => p.LoweredEmail == email.ToLower()).UserId; 
    }

    public string UserID_Password(Guid userID)
    {
        string password = (from a in bd.aspnet_Memberships
                           where a.UserId == userID
                           select a.Password).First();
        return password;
    }

    public int UserID_UsuarioID(Guid userID)
    {
        int usuarioid = (from a in bd.Usuarios
                         where a.UserId == userID
                         select a.ID).First();
        return usuarioid;
    }

    public string UserID_Nome(Guid userID)
    {
        string nomeCompleto = (from a in bd.Usuarios
                               where a.UserId == userID
                               select a.Nome).First();
        return nomeCompleto;
    }

    public string UserID_Username(Guid userID)
    {
        string username = (from a in bd.aspnet_Users
                           where a.UserId == userID
                           select a.UserName).First();
        return username;
    }

    public Guid Username_UserID(string username)
    {
        Guid userid = (from a in bd.aspnet_Users
                       where a.UserName == username
                       select a.UserId).First();
        return userid;
    }

    public int Session_UsuarioID(Guid session)
    {
        int usuarioid = (from a in bd.Usuarios
                         where a.UserId == session
                         select a.ID).First();
        return usuarioid;
    }

    public Usuario UserID_Usuario(Guid userid)
    {
        Usuario usuario = (from a in bd.Usuarios
                           where a.UserId == userid
                           select a).First();
        return usuario;
    }

    public aspnet_User Username_User(string username)
    {
        aspnet_User aspnetuser = (from a in bd.aspnet_Users
                                  where a.UserName == username
                                  select a).First();
        return aspnetuser;
    }

    public aspnet_User UserID_User(Guid userid)
    {
        aspnet_User aspnetuser = (from a in bd.aspnet_Users
                                  where a.UserId == userid
                                  select a).First();
        return aspnetuser;
    }

    public aspnet_Membership UserID_Membership(Guid userid)
    {
        aspnet_Membership aspnetmember = (from a in bd.aspnet_Memberships
                                          where a.UserId == userid
                                          select a).First();
        return aspnetmember;
    }

    public aspnet_Membership Email_Membership(string email)
    {
        aspnet_Membership aspnetmember = (from a in bd.aspnet_Memberships
                                          where a.Email == email
                                          select a).First();
        return aspnetmember;
    }

    public string ServicoID_NomeComprador(int servicoid)
    {
        string nomeComprador = (from a in bd.ServicosVendidos
                                join b in bd.Usuarios
                                on a.CompradorID equals b.ID
                                where a.ID == servicoid
                                select b.Nome).First();
        return nomeComprador;
    }

    public string VendaID_EmailComprador(int servicoid)
    {
        string emailComprador = (from a in bd.ServicosVendidos
                                join b in bd.Usuarios
                                on a.CompradorID equals b.ID
                                join c in bd.aspnet_Memberships
                                on b.UserId equals c.UserId
                                where a.ID == servicoid
                                select c.LoweredEmail).First();
        return emailComprador;
    }
}