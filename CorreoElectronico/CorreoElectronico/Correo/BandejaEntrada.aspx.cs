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
        Mail2TableAdapter mail2 = new Mail2TableAdapter();
        Mail3TableAdapter mail3 = new Mail3TableAdapter();
        public void BandejadeEntrada()
        {
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) {
                BandejadeEntrada();
                String mail = Session["Email: "].ToString();
                GridViewBEntrada.DataSource = mail2.VerificarBandejadeEntrada("Entrada", mail);
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
    }
}