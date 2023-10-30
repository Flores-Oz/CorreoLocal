using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorreoElectronico.Master
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelName.Text = Session["Nombre: "].ToString();
            LabelMail.Text = Session["Email: "].ToString();
        }

        protected void LinkButtonLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../default.aspx");
        }
    }
}