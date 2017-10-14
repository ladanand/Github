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
       string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database.mdf;Integrated Security=True";

       SqlConnection con = new SqlConnection(connectionString);

       con.Open();
    }
    protected void remv_Click(object sender, EventArgs e)
    {
        int i = int.Parse(rmv.Text);
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmdInsert = con.CreateCommand();
        SqlCommand cmdRmv = con.CreateCommand();
        cmdInsert.CommandText = "DELETE FROM Vendor where Vendor_id=@id;";

        cmdInsert.Parameters.AddWithValue("@id", i);

        cmdInsert.ExecuteNonQuery();
        cmdRmv.CommandText = "DELETE FROM VendorL where Vendor_id=@id;";
        cmdRmv.Parameters.AddWithValue("@id", i);
        cmdRmv.ExecuteNonQuery();
        con.Close();
    }

    protected void lout_Click(object sender, EventArgs e)
    {

        Response.Redirect("/bootstrap10/bootstrap10/loginad.aspx");
    }
}