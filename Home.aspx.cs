using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HtmlGenericControl link = (HtmlGenericControl)this.Master.FindControl("divHome");

        link.Style.Add("background-color", "rgba(0,0,0,0.1)");
    }
}