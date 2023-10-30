using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;

namespace CorreoElectronico.Entrada
{
    public partial class Login : System.Web.UI.Page
    {
        EmailTableAdapter ema = new EmailTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Clear();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String email = TextBoxEmail.Text;
            String passw = TextBoxPassword.Text;
            DataTable verificar = ema.VerificarMail(email, passw);
            if (verificar.Rows.Count != 0)
            {
                DataTable verificar2 = ema.VerificarMail(email, passw);
                string name = verificar2.Rows[0]["PNombre"].ToString();
                string ape = verificar2.Rows[0]["PApellido"].ToString();
                Session.Add("Nombre: ", name + " " + ape );
                Session.Add("Email: ", email);
                Response.Redirect("../Correo/BandejaEntrada.aspx");
            }
            else
            {
                Response.Write("<script>alert('Creedenciales Incorrectas, Verificar Datos')</script>");
            }
        }
    }
}