using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;

namespace CorreoElectronico.Correo
{
    public partial class BandejaEntrada : System.Web.UI.Page
    {
        Mail2TableAdapter mail2 = new Mail2TableAdapter();
        public void BandejadeEntrada()
        {
            GridViewBEntrada.DataSource = mail2.BandejadeEntrada();
            GridViewBEntrada.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {
                BandejadeEntrada();
            }
        }
    }
}