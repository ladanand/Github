using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bootstrap10_Default2 : System.Web.UI.Page
{
    string pth;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }

    protected void cty_SelectedIndexChanged(object sender, EventArgs e)
    {

        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmdInsert = con.CreateCommand();
        cmdInsert.CommandText = "SELECT * FROM VendorL where City = @c and (Product = 'All' OR Product = @t)";
        cmdInsert.Parameters.AddWithValue("@c", cty.SelectedValue);
        cmdInsert.Parameters.AddWithValue("@t", Session["type"] as string);
        SqlDataReader ddlValues;
        ddlValues = cmdInsert.ExecuteReader();
        vndrs.DataSource = ddlValues;
        vndrs.DataValueField = "Vendor_id";
        vndrs.DataTextField = "Name";
        vndrs.DataBind();


        con.Close();
            
        
    }
    protected void vn_SelectedIndexChanged(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmdInsert = con.CreateCommand();
        cmdInsert.CommandText = "SELECT Delivery FROM VendorL where Vendor_id = @c ";
        cmdInsert.Parameters.AddWithValue("@c", vndrs.SelectedValue);
        SqlDataReader ddlValues;
        ddlValues = cmdInsert.ExecuteReader();
       
        del.DataSource = ddlValues;
        del.DataValueField = "Delivery";
        del.DataTextField = "Delivery";
        del.DataBind();


        con.Close();
    }
    protected void buy0_Click(object sender, EventArgs e)
    {
        
            

            int p = int.Parse(qty.Text);
            string t = del.SelectedValue;
            int b;
            if (p < 10)
            {
                if (del.SelectedValue == "Normal Delivery")
                { //Response.Redirect("https://www.google.com"); 
                    b = 170;
                }
                else
                {
                    b = 190;
                }


            }
            else
            {
                if (del.SelectedValue == "Normal Delivery")
                { b = 140; }
                else
                { b = 170; }


            }

            int price = b * p;

           

            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

            SqlConnection con = new SqlConnection(connectionString);

            con.Open();
            SqlCommand cmdInsert = con.CreateCommand();
            cmdInsert.CommandText = "insert into Order1(Cname,Vendor_id,Quantity,Color,Type,Size,Addrs,Bill,City,Cmail,Cno,Del,Path) VALUES (@cn,@vi,@qt,@clr,@tp,@sz,@adr,@bl,@ct,@cm,@cno,@dl,@pt)";

            cmdInsert.Parameters.AddWithValue("@cn", namec.Text);
            cmdInsert.Parameters.AddWithValue("@vi", vndrs.SelectedValue);
            cmdInsert.Parameters.AddWithValue("@qt", qty.Text);
            cmdInsert.Parameters.AddWithValue("@clr", color.SelectedValue);
            cmdInsert.Parameters.AddWithValue("@tp", Session["type"] as string);
            cmdInsert.Parameters.AddWithValue("@sz", size.SelectedValue);
            cmdInsert.Parameters.AddWithValue("@adr", addr.Text);
            cmdInsert.Parameters.AddWithValue("@bl", price);
            cmdInsert.Parameters.AddWithValue("@ct", cty.SelectedValue);
            cmdInsert.Parameters.AddWithValue("@cm", mail.Text);
            cmdInsert.Parameters.AddWithValue("@cno", contactc.Text);
            cmdInsert.Parameters.AddWithValue("@dl", del.SelectedValue);
            cmdInsert.Parameters.AddWithValue("@pt", Session["path"] as string);

            cmdInsert.ExecuteNonQuery();
            con.Close();
            System.Windows.Forms.MessageBox.Show("Your order is placed");
            Response.Redirect("index.aspx");
        }
    
    protected void up_Click(object sender, EventArgs e)
    {
      
    }
    protected void qty_TextChanged(object sender, EventArgs e)
    {
        int p = int.Parse(qty.Text);
            string t = del.SelectedValue;
            int b;
            if (p < 10)
            {
                if (del.SelectedValue == "Normal Delivery")
                { //Response.Redirect("https://www.google.com"); 
                    b = 170;
                }
                else
                {
                    b = 190;
                }


            }
            else
            {
                if (del.SelectedValue == "Normal Delivery")
                { b = 140; }
                else
                { b = 170; }


            }

            int price = b * p;
            Label1.Text = " Your bill is" + price;
            Label1.Visible = true;
    
}
}