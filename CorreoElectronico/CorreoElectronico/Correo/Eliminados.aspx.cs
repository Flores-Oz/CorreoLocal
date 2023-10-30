using CorreoElectronico.Data.DataSet1TableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CorreoElectronico.Correo
{
    public partial class Eliminados : System.Web.UI.Page
    {
        Mail3TableAdapter mail3 = new Mail3TableAdapter();
        Mail4TableAdapter mail4 = new Mail4TableAdapter();
        public void LimpiarMensaje()
        {
            LabelTitulo.Text = "Bienvenido";
            LabelEmisor.Text = "Bandeja de Eliminados";
            LabelFechaHora.Text = "";
            LabelCuerpo.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String mail = Session["Email: "].ToString();
                GridViewSalida.DataSource = mail4.VerificarBandejadeEntrada("Eliminados", mail);
                GridViewSalida.DataBind();
            }
        }

        protected void GridViewSalida_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridViewSalida.PageIndex = e.NewPageIndex;
            String mail = Session["Email: "].ToString();
            GridViewSalida.DataSource = mail4.VerificarBandejadeEntrada("Eliminados", mail);
            GridViewSalida.DataBind();
        }

        protected void GridViewSalida_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowIndex = GridViewSalida.SelectedIndex;
            if (rowIndex >= 0 && rowIndex < GridViewSalida.Rows.Count)
            {
                // Accede al valor de una celda específica en la fila seleccionada
                Label code = GridViewSalida.Rows[rowIndex].FindControl("Label3") as Label;
                string codeone = code.Text;
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
            }
        }

        protected void GridViewSalida_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridViewSalida.EditIndex = -1;
            String mail = Session["Email: "].ToString();
            GridViewSalida.DataSource = mail4.VerificarBandejadeEntrada("Eliminados", mail);
            GridViewSalida.DataBind();
        }

        protected void GridViewSalida_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewSalida.EditIndex = e.NewEditIndex;
            String mail = Session["Email: "].ToString();
            GridViewSalida.DataSource = mail4.VerificarBandejadeEntrada("Eliminados", mail);
            GridViewSalida.DataBind();
            GridViewSalida.EditRowStyle.BackColor = System.Drawing.Color.LightSalmon;
        }

        protected void GridViewSalida_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            // Accede al valor de una celda específica en la fila seleccionada
            Label code = GridViewSalida.Rows[e.RowIndex].FindControl("Label6") as Label;
            string codeone = code.Text;
            int codetwo = Convert.ToInt32(codeone);
            mail4.EliminarMensaje("Entrada", codetwo);
            GridViewSalida.EditIndex = -1;
            Response.Write("<script>alert('Mensaje Restaurado')</script>");
            String mail = Session["Email: "].ToString();
            GridViewSalida.DataSource = mail4.VerificarBandejadeEntrada("Eliminados", mail);
            GridViewSalida.DataBind();
        }
    }
}