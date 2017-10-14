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
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmdInsert = con.CreateCommand();
        cmdInsert.CommandText = "SELECT * from Order1 where Vendor_id in (select Vendor_id from VendorL where VendorEmail = @m) and Dispatch = 'y' ";
        string username = Session["mail"] as string;
        cmdInsert.Parameters.AddWithValue("@m", username);
        SqlDataReader dr = cmdInsert.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
      
    }
    
    protected void vor_Click(object sender, EventArgs e)
    {
        

       
    }
    protected void lout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("/bootstrap10/bootstrap10/login.aspx");
    }
}