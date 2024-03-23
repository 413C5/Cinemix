
using System;
using System.Web.UI.WebControls;
using BaseDatosCinemix;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlCiudad.DataSource = DataManager.GetCiudades();
            ddlCiudad.DataValueField = "idCiudad";
            ddlCiudad.DataTextField = "nombre";
            ddlCiudad.DataBind();

            ddlCiudad.Items.Insert(0, new ListItem("Selecciona la ciudad", ""));
            ddlCiudad.Items[0].Selected = true;
        }       
    }

    protected void ddlCiudad_SelectedIndexChanged(object sender, EventArgs e)
    {
            ddlCine.Enabled = true;
            int ciudad = Convert.ToInt32(ddlCiudad.SelectedValue);

            ddlCine.DataSource = DataManager.GetCines(ciudad);

            ddlCine.DataValueField = "idCine";
            ddlCine.DataTextField = "nombre";
            ddlCine.DataBind();

            ddlCine.Items.Insert(0, new ListItem("Selecciona el cine", ""));
            ddlCine.Items[0].Selected = true;   
    }

    protected void ddlCine_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Se transfiere a la página CinePeliculas
        //Se envía a esa página el id del cine seleccionado
        Response.Redirect("CinePeliculas.aspx?idCine=" + ddlCine.SelectedValue);
    }
}



