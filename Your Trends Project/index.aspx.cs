using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class preview_dotnet_templates_bootstrap10_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        image1.ImageUrl = "~/bootstrap10/images/upload/1.png";
        image2.ImageUrl = "~/bootstrap10/images/upload/2.png";
        image3.ImageUrl = "~/bootstrap10/images/upload/3.png";
        image4.ImageUrl = "~/bootstrap10/images/upload/4.png";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void tclick_Click(object sender, EventArgs e)
    {
        Session["type"] = "Turtleneck";
        Session["path"] = "~/bootstrap10/images/upload/1.png";
        Response.Redirect("buytre.aspx");
    }
    protected void fclick_Click(object sender, EventArgs e)
    {
        Session["type"] = "Full Sleeves";
        Session["path"] = "~/bootstrap10/images/upload/2.png";
        Response.Redirect("buytre.aspx");

    }
    protected void hclick_Click(object sender, EventArgs e)
    {
        Session["type"] = "Hoodie";
        Session["path"] = "~/bootstrap10/images/upload/3.png";
        Response.Redirect("buytre.aspx");
    }
    protected void sclick_Click(object sender, EventArgs e)
    {
        Session["type"] = "SweatShirt";
        Session["path"] = "~/bootstrap10/images/upload/4.png";
        Response.Redirect("buytre.aspx");
    }
}