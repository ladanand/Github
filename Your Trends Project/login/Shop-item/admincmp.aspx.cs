using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Threading.Tasks;

public partial class preview_dotnet_templates_with_out_masterpages_Shop_item_index : System.Web.UI.Page
{

    string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        //string nameB = Request.QueryString["nameA"].ToString();
        // Labelwel.Text = "welcome" +nameB;
        string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\hp\Desktop\bootstrap10\App_Data\Database3.mdf;Integrated Security=True";

        SqlConnection con = new SqlConnection(connectionString);

        con.Open();



        //BindEmpGrid();



    }




    protected void btnSendMail_Click(object sender, EventArgs e)
    {


        String empId = String.Empty;


        try
        {

            foreach (GridViewRow row in GridView1.Rows)
            {

                CheckBox cb = (CheckBox)row.FindControl("chkSelect");




                if (cb.Checked == true)
                {

                    if (cb != null && cb.Checked)
                    {

                        //get Current EMAIL_ID from the DataKey 



                        //Fill datatable with EMAIL_ID corresponding to Current EMP_ID

                        //adp.Fill(dt); 

                        //Get EMAIL_ID into variable

                        string fname, lname, email;
                        email = "";
                        foreach (GridViewRow grdRow in GridView1.Rows)
                        {

                            email = grdRow.Cells[0].Text;
                            SendEmailUsingGmail(email);
                        }

                        //write code to send mail



                    }

                }

            }

            ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Emails sent successfully');", true);

        }

        catch (Exception ex)
        {

            Response.Write("Error occured: " + ex.Message.ToString());

        }


    }

    protected void SendEmailUsingGmail(string toEmailAddress)
    {

        try
        {


            SmtpClient smtp = new SmtpClient();

            smtp.Credentials = new NetworkCredential("ladanand0@gmail.com", "ANANDrocks");

            smtp.Port = 587;

            smtp.Host = "smtp.gmail.com";

            smtp.EnableSsl = true;

            MailMessage message = new MailMessage();

            message.From = new MailAddress(toEmailAddress);

            message.To.Add(toEmailAddress);

            message.Subject = "Write your email subject here";

            string body;
            body = TextBox1.Text;
            message.Body = "" + body;

            smtp.Send(message);

        }

        catch (Exception ex)
        {

            Response.Write("Error occured: " + ex.Message.ToString());

        }

    }




    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {

        CheckBox chkAll =

           (CheckBox)GridView1.HeaderRow.FindControl("chkSelectAll");

        if (chkAll.Checked == true)
        {

            foreach (GridViewRow gvRow in GridView1.Rows)
            {

                CheckBox chkSel =

                     (CheckBox)gvRow.FindControl("chkSelect");

                chkSel.Checked = true;

            }

        }

        else
        {

            foreach (GridViewRow gvRow in GridView1.Rows)
            {

                CheckBox chkSel = (CheckBox)gvRow.FindControl("chkSelect");

                chkSel.Checked = false;

            }

        }

    }

    protected void lout_Click(object sender, EventArgs e)
    {

        Response.Redirect("/bootstrap10/bootstrap10/loginad.aspx");
    }

}
































