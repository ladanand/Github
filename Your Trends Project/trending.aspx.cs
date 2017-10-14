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
}