using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Net.Mail;



public partial class preview_dotnet_templates_bootstrap10_index : System.Web.UI.Page
{
   
  /*  public int Validate_Signin(String Username, String Password)
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database.mdf;Integrated Security=True";

       SqlConnection con = new SqlConnection(connectionString);

       con.Open();
       SqlCommand addSite = new SqlCommand("INSERT INTO site_list (site_name)" +
                             "VALUES (@site_name)", con);

    } */



    protected void Page_Load(object sender, EventArgs e)
    {
      
    }




    public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(mails.Text);

        mail.From = new MailAddress("ladanand0@gmail.com");
        mail.Subject = "Your trend";
        string passkey = pwds.Text;
        string Body = "Welcome to YourTrend ! Happy Customization ! Your Password is " + passkey;
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        mail.Priority = MailPriority.Normal;


        smtp.Credentials = new System.Net.NetworkCredential
        ("ladanand0@gmail.com", "ANANDrocks");


        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);

    }


    protected void signa_Click(object sender, EventArgs e)
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();
        SqlCommand cmdInsert = con.CreateCommand();
        cmdInsert.CommandText = "INSERT INTO Vendor (Name,VendorEmail,PasswordVendor,Phone,City,Delivery,Product)" +
                              "VALUES (@name,@mail,@pwd,@ph,@cty,@del,@pro)";
        cmdInsert.Parameters.AddWithValue("@name", namec.Text);
        cmdInsert.Parameters.AddWithValue("@mail", mails.Text);
        cmdInsert.Parameters.AddWithValue("@pwd", pwds.Text);
        cmdInsert.Parameters.AddWithValue("@ph", contactc.Text);
        cmdInsert.Parameters.AddWithValue("@cty", city.SelectedValue);
        cmdInsert.Parameters.AddWithValue("@del", deli.SelectedValue);
        cmdInsert.Parameters.AddWithValue("@pro", item.SelectedValue);
        cmdInsert.ExecuteNonQuery();
        con.Close();
        SendMail();
        Page.ClientScript.RegisterStartupScript(Type.GetType("System.String"), "addScript", "alert('Your Request will be accepted shortly')", true);
        
    }
}



