using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;

namespace CorreoElectronico.Correo
{
    public partial class Escribir : System.Web.UI.Page
    {
        MailRealTableAdapter correo = new MailRealTableAdapter();
        public void Limpiar()
        {
            TextBoxMensaje.Text = "";
            TextBoxReceptor.Text = "";
            TextBoxTitulo.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonEnviar_Click(object sender, EventArgs e)
        {
            if(TextBoxMensaje.Text != "" && TextBoxReceptor.Text != "" && TextBoxTitulo.Text != "")
            {
                String mail = Session["Email: "].ToString();
                String FechaActual = DateTime.Now.ToString();
                correo.IngresarMensaje(
                    mail,
                    TextBoxReceptor.Text,
                    TextBoxTitulo.Text,
                    TextBoxMensaje.Text,
                    "Salida",
                    true,
                    "Entrada",
                    Convert.ToDateTime(FechaActual)
                    );
                Response.Write("<script>alert('Mensaje Enviado con Exito')</script>");
                Limpiar();
            }
            else
            {
                Response.Write("<script>alert('Campos sin Llenar')</script>");
            }
        }
    }
}