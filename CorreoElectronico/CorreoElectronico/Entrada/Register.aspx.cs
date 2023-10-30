using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.Data.DataSet1TableAdapters;

namespace CorreoElectronico.Entrada
{
    public partial class Register : System.Web.UI.Page
    {
        EmailTableAdapter cuenta = new EmailTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Limpiar();
            }
        }

        public void Limpiar()
        {
            TextBoxPNombre.Text = string.Empty;
            TextBoxSNombre.Text = string.Empty;  
            TextBoxSApellido.Text = string.Empty; 
            TextBoxPApellido.Text = string.Empty;
            TextBoxTel.Text = string.Empty; 
            TextBoxEmail.Text = string.Empty; 
            TextBoxPass.Text = string.Empty; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBoxPNombre.Text == "" && TextBoxSNombre.Text == "" && TextBoxSApellido.Text == "" && TextBoxPApellido.Text == "" &&
                TextBoxTel.Text == "" && TextBoxEmail.Text == "" && TextBoxPass.Text == "" && TextBoxFechaNac.Text == ""
                ) 
            {
                Response.Write("<script>alert('Datos Incompletos, Llenar todos los Campos')</script>");
            }
            else
            {
                 string PNombre =   TextBoxPNombre.Text;
                 string SNombre =   TextBoxSNombre.Text;
                 string SApellido =   TextBoxSApellido.Text;
                 string PApellido =   TextBoxPApellido.Text;
                 string Tel = TextBoxTel.Text;
                 string email =   TextBoxEmail.Text;
                string mail = email + "@smartbrain.com";
                 string pass =   TextBoxPass.Text;
                 DateTime Fecha =  Convert.ToDateTime(TextBoxFechaNac.Text);
                cuenta.AgregarEmail(
                    PNombre,
                    SNombre,
                    PApellido,
                    SApellido,
                    mail,
                    pass,
                    Convert.ToString(Fecha),
                    Tel
                    );
                Limpiar();
                Response.Write("<script>alert('Datos Completados, Bienvenido a Smart Brain')</script>");
                Response.Redirect("Login.aspx");
            }
        }
    }
}