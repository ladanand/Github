using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

//images/earth.png
public partial class bootstrap10_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        elemwrapper.ImageUrl = "images/earth.png";
        Button1.Visible = false;
        FileUpload2.Visible = false;
    }

    protected void FileUpload2_DataBinding(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string filename = Path.GetFileName(FileUpload2.PostedFile.FileName);
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/bootstrap10/images/earth1.png"));
        elemwrapper.ImageUrl = "~/bootstrap10/images/earth1.png";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        int x, y;
       
        
         Button1.Visible = false;
        FileUpload2.Visible = false;

    }
    protected void bt4click(object sender, EventArgs e)
    {
        Button1.Visible = true;
        FileUpload2.Visible = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
        
    }
    
}