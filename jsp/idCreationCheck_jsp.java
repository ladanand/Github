/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.30
 * Generated at: 2016-04-29 18:03:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;
import java.util.Date;
import java.text.*;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public final class idCreationCheck_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {


String sessionUsername;

 String role="",location=null;
String module[]=null; 
StringBuffer sb=null; 
String store;


Connection conn3=null;
ResultSet rs3=null;
PreparedStatement stmt3=null;


String name;
String insertReqNo;

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/Logout.jsp", Long.valueOf(1434966448000L));
    _jspx_dependants.put("/TrainingPortalHeader.html", Long.valueOf(1434788270000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.mail");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.mail.internet");
    _jspx_imports_packages.add("javax.sql");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Properties");
    _jspx_imports_classes.add("java.util.Date");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write(" \r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write(" <script type = \"text/javascript\" >\r\n");
      out.write("    history.pushState(null, null, 'DateCheck');\r\n");
      out.write("    window.addEventListener('popstate', function(event) {\r\n");
      out.write("    history.pushState(null, null, 'DateCheck');\r\n");
      out.write("    });\r\n");
      out.write("</script> \r\n");
      out.write("<!--<script>\r\n");
      out.write("window.location.hash=\"no-back-button\";\r\n");
      out.write("window.location.hash=\"Again-No-back-button\";//again because google chrome don't insert first hash into history\r\n");
      out.write("window.onhashchange=function(){window.location.hash=\"no-back-button\";}\r\n");
      out.write("</script> -->\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("table, td, th {\r\n");
      out.write("\tfont-family: Cambria;\r\n");
      out.write("\tfont-size: 25px;\r\n");
      out.write("\tcolor:white;\r\n");
      out.write("\ttext-align:center;\r\n");
      out.write("}\r\n");
      out.write("h1,h2{\r\n");
      out.write("font-family: Cambria;\r\n");
      out.write("color:white;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body bgcolor=\"#2fadbb\">\r\n");
      out.write("  ");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("\t\t\tbody{\r\n");
      out.write("\t\t\tmargin: 0;\r\n");
      out.write("            padding-top: 0;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<img src=\"./images/PortalHeader.png\" width=\"100%\" height=\"25%\" alt=\"Training Portal\">\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("            .button1\r\n");
      out.write("            {\r\n");
      out.write("            background-image: url('./images/Logout.png');\r\n");
      out.write("\t\t\tbackground-repeat: no-repeat;\r\n");
      out.write("\t\t\tcursor:pointer;\r\n");
      out.write("\t\t\twidth: 100px;\r\n");
      out.write("\t\t\theight: 50px;\r\n");
      out.write("\t\t\twebkit-background-size: 100% 100%;\r\n");
      out.write("\t\t\t-moz-background-size: 100% 100%;\r\n");
      out.write("\t\t\t-o-background-size: 100% 100%;\r\n");
      out.write("\t\t\tbackground-size: 100% 100%;\r\n");
      out.write("\t\t\tpadding-right: 5px;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<form action='SessionInvalidate.jsp' method='post'>\r\n");
      out.write('\r');
      out.write('\n');

sessionUsername=(String)session.getAttribute("userName");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<input type='submit' value='' class=\"button1\"  onclick=\"return confirm('Are you sure you want to Logout?')\" style=\"float: right; position: relative; top: 15px; right: 10px;\"/>\r\n");
      out.write("</form>\r\n");

out.print("<a href='/Dummy/Second.jsp?name="+sessionUsername+"'><image src='./images/HOMEBUTTON.png' height='50' width='50' padding-right='10' style='float: right; position: relative; right: 20px;'></a>");

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");

role=request.getParameter("role_select");
module=request.getParameterValues("d1");
location=request.getParameter("location");

out.println(role + module + location);

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');

 
try{
sb=new StringBuffer();
if(location==null || location==""){
response.sendRedirect("raiserequestservlet?location=notfoundLoc&raise=Id_creation");
return;
}
if(module==null || module.length==0  ) {
response.sendRedirect("raiserequestservlet?module=notfoundId&raise=Id_creation");
return;
//out.println("<br>select module....."); 

} else { for(int i=0;i<module.length;++i) {

sb=sb.append(module[i]+",");

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
 //out.print("<br>");
}

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
}
}catch(Exception e){
out.print(e);
}

      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');
      out.write('\r');
      out.write('\n');



 try{ 
 

String JDBC_DRIVER="",DB_URL="",user_name="",pass="";
ServletContext context=null;


context = pageContext.getServletContext();
name=(String)session.getAttribute("userName");
JDBC_DRIVER = context.getInitParameter("connector_class_name");
DB_URL = context.getInitParameter("connection_url");
user_name = context.getInitParameter("username");
pass = context.getInitParameter("password");

Class.forName(JDBC_DRIVER);
conn3=DriverManager.getConnection(DB_URL,user_name,"");
	
 String maxReqNo="select max(ReqNo) from PLMTrainingModuleData where ReqNo like 'ID%'";
insertReqNo=null;
stmt3=conn3.prepareStatement(maxReqNo);
rs3=stmt3.executeQuery();
if(rs3!=null && rs3.next()){
//out.print("inside if..");
String no=rs3.getString(1);
	if(no!=null){
	//out.print(no);
	int old=(Integer.parseInt(no.substring(2)));
	old+=1;
	String padd=String.format("%06d", old);
	insertReqNo="ID"+padd;
	}
	else{
	//out.print("inside if-> else..");
	insertReqNo="ID000001";
	}
}
else{
//out.print("inside else..");
insertReqNo="ID000001";
}
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
Date date = new Date();
String sysDate=dateFormat.format(date);
//out.print(sysDate);
store=new String(sb);
name=(String)session.getAttribute("userName");
String s="insert into PLMTrainingModuleData(UserId,role,Module,ReqDate,ReqNo,Attended,Location,Feedback) values('"+name+"','"+role+"','"+store+"','"+sysDate+"','"+insertReqNo+"','no','"+location+"','no')";
stmt3=conn3.prepareStatement(s);
stmt3.executeUpdate();
}

 catch(Exception e){ 
 out.print(e);
 } finally{ 
      out.write("\r\n");
      out.write("\r\n");
 
conn3.close();
}
out.print("<table align='center'>");
out.print("<tr><td>Request for Id Creation is Successfully Registered for PSNO :"+name+"</tr> <tr><td>Your Request Number is :"+insertReqNo+"</td></tr>");
//********** start mail *******************
String host = "172.16.7.71"; 
String port = "25";
String from = "swati.bandewar@larsentoubro.com";
String[] to={"SWATI.BANDEWAR@larsentoubro.com"};

 // Get system properties
	 Properties props = System.getProperties();
	 
	 // Setup mail server
	 props.put("mail.smtp.host", host);
	 props.put("mail.smtp.port", port); 
	 
	 Session session1 = Session.getInstance(props, null);
	 
	 // Create a default MimeMessage object.
	 Message message = new MimeMessage(session1);
	 
	 //Set the sender...
	 message.setFrom(new InternetAddress(from));
	 
	  InternetAddress[] toAddress = new InternetAddress[1];
	  toAddress[0] = new InternetAddress(to[0]);
	   message.setRecipients(Message.RecipientType.TO, toAddress);
	   message.addRecipient(Message.RecipientType.CC, new InternetAddress("shahharsh4695@gmail.com"));
	  // message.addRecipient(Message.RecipientType.BCC, new InternetAddress("manjiri.palav@larsentoubro.com"));
	  // message.addRecipient(Message.RecipientType.BCC, new InternetAddress("SWATI.BANDEWAR@LARSENTOUBRO.COM"));


	   message.setSubject("Request For Id Creation");	   
	   BodyPart messageBodyPart = new MimeBodyPart();
	   
	   // Set the "Subject" header field.
	   String bodypart="Request for Id Creation is Successfully Register for PSNO:"+name+"\nRole :"+role+"\n Modules selected :"+store+"\nLocation: "+location+"\nRequest Number:"+insertReqNo;
	 messageBodyPart.setText( bodypart +
	 		"\n\nLarsen & Toubro Limited \n\n\nThis Email may contain confidential or privileged information for the intended recipient (s) If you are not the intended recipient, please do not use or disseminate the information, notify the sender and delete it from your system."); 
	  Multipart multipart = new MimeMultipart(); 
	 multipart.addBodyPart(messageBodyPart); 
	 messageBodyPart = new MimeBodyPart(); 
	  message.setContent(multipart); 
	  
//**************** End Mail **********************
out.print("<tr><td>Mail is sent to training Co-ordinator for further Process.</td></tr>");
out.print("<tr><td>Thank you for Registration !! </td></tr>");
out.print("</table>");

      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
