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
        public void LimpiarMensaje()
        {
            LabelTitulo.Text = "Bienvenido";
            LabelEmisor.Text = "Bandeja de Entrada";
            LabelFechaHora.Text = "";
            LabelCuerpo.Text = "";
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
                Label code = GridViewBEntrada.Rows[rowIndex].FindControl("Label3") as Label;
                string codeone = code.Text;
                mail4.ActualizarEstado(false, Convert.ToInt32(codeone));
                DataTable verificar = mail3.ObtenerMensajeporCodigo(Convert.ToInt32(codeone));
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
                String mail = Session["Email: "].ToString();
                GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
                GridViewBEntrada.DataBind();
            }
        }

        protected void GridViewBEntrada_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewBEntrada.PageIndex = e.NewPageIndex;
            String mail = Session["Email: "].ToString();
            GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
            GridViewBEntrada.DataBind();
        }

        protected void GridViewBEntrada_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewBEntrada.EditIndex = -1;
            String mail = Session["Email: "].ToString();
            GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
            GridViewBEntrada.DataBind();
        }

        protected void GridViewBEntrada_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewBEntrada.EditIndex = e.NewEditIndex;
            String mail = Session["Email: "].ToString();
            GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
            GridViewBEntrada.DataBind();
            GridViewBEntrada.EditRowStyle.BackColor = System.Drawing.Color.LightSalmon;
        }

        protected void GridViewBEntrada_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Accede al valor de una celda específica en la fila seleccionada
            Label code = GridViewBEntrada.Rows[e.RowIndex].FindControl("Label6") as Label;
            string codeone = code.Text;
            int codetwo = Convert.ToInt32(codeone);
            mail4.EliminarMensaje("Eliminados", codetwo);
            GridViewBEntrada.EditIndex = -1;
            Response.Write("<script>alert('Mensaje Eliminado')</script>");
            String mail = Session["Email: "].ToString();
            GridViewBEntrada.DataSource = mail4.VerificarBandejadeEntrada("Entrada", mail);
            GridViewBEntrada.DataBind();
        }
    }
}