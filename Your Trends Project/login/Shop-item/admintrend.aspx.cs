using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class preview_dotnet_templates_with_out_masterpages_Shop_item_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       //string nameB = Request.QueryString["nameA"].ToString();
      // Labelwel.Text = "welcome" +nameB;
        image1.ImageUrl = "~/bootstrap10/images/upload/1.png";
        image2.ImageUrl = "~/bootstrap10/images/upload/2.png";
        image3.ImageUrl = "~/bootstrap10/images/upload/3.png";
        image4.ImageUrl = "~/bootstrap10/images/upload/4.png";
       
    }
    protected void addt_Click(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        if(FileUpload1.HasFile ) 
        {
        string filename = adt.Text;
        FileUpload1.PostedFile.SaveAs(Server.MapPath(@"~/bootstrap10/images/upload/"+adt.Text+".png"));
       
        con.Close();
    }}

    protected void lout_Click(object sender, EventArgs e)
    {

        Response.Redirect("/bootstrap10/bootstrap10/loginad.aspx");
    }
}