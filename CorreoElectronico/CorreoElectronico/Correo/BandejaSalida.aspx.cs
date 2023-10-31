using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;

namespace CorreoElectronico.Correo
{
    public partial class BandejaSalida : System.Web.UI.Page
    {
        Mail5TableAdapter mail5 = new Mail5TableAdapter();
        Mail6TableAdapter mail6 = new Mail6TableAdapter();

        public void LimpiarMensaje()
        {
            LabelTitulo.Text = "Bienvenido";
            LabelEmisor.Text = "Bandeja de Entrada";
            LabelFechaHora.Text = "";
            LabelCuerpo.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String mail = Session["Email: "].ToString();
                GridViewBSalida.DataSource = mail5.VerificarBandejaSalida("Salida", mail);
                GridViewBSalida.DataBind();
            }
        }

        protected void GridViewBSalida_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewBSalida.PageIndex = e.NewPageIndex;
            String mail = Session["Email: "].ToString();
            GridViewBSalida.DataSource = mail5.VerificarBandejaSalida("Salida", mail);
            GridViewBSalida.DataBind();
        }

        protected void GridViewBSalida_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowIndex = GridViewBSalida.SelectedIndex;
            if (rowIndex >= 0 && rowIndex < GridViewBSalida.Rows.Count)
            {
                // Accede al valor de una celda específica en la fila seleccionada
                Label code = GridViewBSalida.Rows[rowIndex].FindControl("Label3") as Label;
                string codeone = code.Text;
                DataTable verificar = mail6.ObtenerMensajeporCodigo(Convert.ToInt32(codeone));
                if (verificar.Rows.Count != 0)
                {
                    string Titulo = verificar.Rows[0]["Titulo"].ToString();
                    string Emisor = verificar.Rows[0]["Receptor"].ToString();
                    string Fecha = verificar.Rows[0]["Fecha y Hora"].ToString();
                    string cuerpo = verificar.Rows[0]["Mensaje"].ToString();
                    LabelTitulo.Text = Titulo;
                    LabelEmisor.Text = Emisor;
                    LabelFechaHora.Text = Fecha;
                    LabelCuerpo.Text = cuerpo;
                }
                String mail = Session["Email: "].ToString();
                GridViewBSalida.DataSource = mail5.VerificarBandejaSalida("Salida", mail);
                GridViewBSalida.DataBind();
            }
        }
    }
}