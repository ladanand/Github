using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Drawing;


public partial class preview_dotnet_templates_bootstrap10_index : System.Web.UI.Page
{
   
    



    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Button23.Visible = false;
        Label1.Visible = false;
    }

    public int Validate_Login(String Username, String Password)
    {
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);


        SqlCommand cmdselect = new SqlCommand();

        cmdselect.CommandType = CommandType.StoredProcedure;


        cmdselect.CommandText = "[dbo].[Loginv]";

        cmdselect.Parameters.Add("@Username", SqlDbType.VarChar, 50).Value = Username;

        cmdselect.Parameters.Add("@UPassword", SqlDbType.VarChar, 50).Value = Password;

        cmdselect.Parameters.Add("@OutRes", SqlDbType.Int, 4);

        cmdselect.Parameters["@OutRes"].Direction = ParameterDirection.Output;

        cmdselect.Connection = con;
        int Results = 0;

        try
        {
            con.Open();
            //Response.Redirect("www.goolsce.com");
            cmdselect.ExecuteNonQuery();
            Results = (int)cmdselect.Parameters["@OutRes"].Value;

        }
        catch (SqlException ex)
        {


        }
        finally
        {
            cmdselect.Dispose();
            if (con != null)
            {

                con.Close();

            }
        }
        return Results;

    }

    protected void logina_Click(object sender, EventArgs e)
    {
        int Results = 0;

        if (mail.Text != null && pwd.Text != null)
        {

            Results = Validate_Login(mail.Text.Trim(), pwd.Text.Trim());

            if (Results == 1)
            {
                Session["mail"] = mail.Text;
                Response.Redirect("login\\Shop-item\\vadminv.aspx");

            }

            else
            {

                Label1.Visible = true;
                //Dont Give too much information this might tell a hacker what is wrong in the login

            }

        }

        else
        {

        }
    }


    


    protected void SendEmail(object sender, EventArgs e)
    {

        string username = string.Empty;

        string password = string.Empty;

        string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        using (SqlConnection con = new SqlConnection(constr))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT VendorEmail,PasswordVendor FROM VendorL where VendorEmail = @Username"))
            {

                cmd.Parameters.AddWithValue("@Username", mail.Text.Trim());

                cmd.Connection = con;

                con.Open();

                using (SqlDataReader sdr = cmd.ExecuteReader())
                {

                    if (sdr.Read())
                    {

                        username = sdr["VendorEmail"].ToString();

                        password = sdr["PasswordVendor"].ToString();

                    }

                }

                con.Close();

            }

        }

        if (!string.IsNullOrEmpty(password))
        {

            MailMessage mm = new MailMessage("ladanand0@gmail.com", mail.Text.Trim());

            mm.Subject = "Password Recovery";

            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username, password);

            mm.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            smtp.Host = "smtp.gmail.com";

            smtp.EnableSsl = true;

            NetworkCredential NetworkCred = new NetworkCredential();

            NetworkCred.UserName = "ladanand0@gmail.com";

            NetworkCred.Password = "ANANDrocks";

            smtp.UseDefaultCredentials = true;

            smtp.Credentials = NetworkCred;

            smtp.Port = 587;

            smtp.Send(mm);

            lblMessage.ForeColor = Color.Green;

            lblMessage.Text = "Password has been sent to your email address.";

        }

        else
        {

            lblMessage.ForeColor = Color.Red;

            lblMessage.Text = "This email address does not match our records.";

        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button23.Visible = true;
        pwd.Visible = false;
        logina.Visible = false;
    }
}
