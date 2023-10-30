using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace CorreoElectronico.Correo
{
    public partial class BandejaEntrada : System.Web.UI.Page
    {
        Mail3TableAdapter mail3 = new Mail3TableAdapter();
        Mail4TableAdapter mail4 = new Mail4TableAdapter();
        public void BandejadeEntrada()
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {
                BandejadeEntrada();
                String mail = Session["Email: "].ToString();
                GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
                GridViewBEntrada.DataBind();
            }
        }

        protected void GridViewBEntrada_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowIndex = GridViewBEntrada.SelectedIndex;
            if (rowIndex >= 0 && rowIndex < GridViewBEntrada.Rows.Count)
            {
                // Accede al valor de una celda específica en la fila seleccionada
                string cod = GridViewBEntrada.Rows[rowIndex].Cells[3].Text;
                DataTable verificar = mail3.ObtenerMensajeporCodigo(Convert.ToInt32( cod));
                if (verificar.Rows.Count != 0)
                {
                    string Titulo = verificar.Rows[0]["Titulo"].ToString();
                    string Emisor = verificar.Rows[0]["Emisor"].ToString();
                    string Fecha = verificar.Rows[0]["Fecha y Hora"].ToString();
                    string cuerpo = verificar.Rows[0]["Mensaje"].ToString();
                    LabelTitulo.Text = Titulo;
                    LabelEmisor.Text = Emisor;
                    LabelFechaHora.Text = Fecha;
                    LabelCuerpo.Text = cuerpo;
                }
            }
        }

        protected void GridViewBEntrada_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewBEntrada.PageIndex = e.NewPageIndex;
            String mail = Session["Email: "].ToString();
            GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
            GridViewBEntrada.DataBind();
        }
    }
}