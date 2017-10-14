<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="preview_dotnet_templates_bootstrap10_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>YourTrends</title>
    <!-- core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/owl.transitions.css" rel="stylesheet" />
    <link href="css/prettyPhoto.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body id="home" class="homepage">
    <form id="form1" runat="server">
    <header id="header">
        <nav id="main-menu" class="navbar navbar-default navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"></a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
<li class="scroll"><a href="index.aspx">Home</a></li>
                        <li class="scroll"><a href="index.aspx#features">Features</a></li>
                       
                        <li class="scroll"><a href="index.aspx#portfolio">Create</a></li>
                      
                       
                        <li class="scroll"><a href="index.aspx#pricing">Pricing</a></li>
                        <li class="scroll"><a href="login.aspx">Login</a></li> 
                        <li class="scroll active"><a href="#">Sign Up </a></li>                        
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
    <!-- Carousel
    ================================================== -->
   
    <section id="contact">
      <div style="height:250px" ></div>
        <div class="container-wrapper" style="padding-top:100px">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <div class="contact-form">
                            <h3>SignUp Details</h3>

                          <!--  <address>
                              <strong>Twitter, Inc.</strong><br>
                              795 Folsom Ave, Suite 600<br>
                              San Francisco, CA 94107<br>
                              <abbr title="Phone">P:</abbr> (123) 456-7890
                            </address>-->

                            <form id="main-contact-form" name="contact-form" method="post"  action="#" style="height:700px">
                               <!-- <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Name" required>
                                </div>-->
                                <div class="form-group">
                                    <asp:TextBox ID="namec" runat="server" class="form-control" placeholder="Name" required></asp:TextBox>
                                    
                                </div>
                                  <!--  <input type="email" name="email" class="form-control" placeholder="Email" required>-->
                                <div class="form-group">    <asp:TextBox ID="mails" type="email" class="form-control" placeholder="Email"  runat="server" required></asp:TextBox>
                            
                                    </div>
                                <div class="form-group">
                                    <asp:TextBox ID="pwds" type="password"  class="form-control" placeholder="password"  runat="server" TextMode="Password" required></asp:TextBox>
                                </div>
                                <div class="form-group">
                                                                        <asp:TextBox ID="contactc" runat="server" class="form-control" placeholder="contact number" required></asp:TextBox>

                                </div>
            <div class="form-group">
                                    <asp:DropDownList ID="city" runat="server" class="form-control"  >
                                        <asp:ListItem Selected="True">Vadodara</asp:ListItem>
                                        <asp:ListItem>Ahmedabad</asp:ListItem>
                                        <asp:ListItem>Rajkot</asp:ListItem>
                                        <asp:ListItem>Surat</asp:ListItem>
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                    </asp:DropDownList>
                                </div>                 
                             <div class="form-group">
<asp:DropDownList ID="deli" runat="server" class="form-control">
    <asp:ListItem Selected="True">Normal Delivery</asp:ListItem>
    <asp:ListItem>Fast Delivery</asp:ListItem>
    
                                 </asp:DropDownList>
                                </div>
                                         <div class="form-group">
<asp:DropDownList ID="item" runat="server" class="form-control">
    <asp:ListItem Selected="True">All</asp:ListItem>
    <asp:ListItem>Turtleneck</asp:ListItem>
    <asp:ListItem>Hoodie</asp:ListItem>
    <asp:ListItem>Full Sleeves</asp:ListItem>
    <asp:ListItem>SweatShirt</asp:ListItem>
                                             </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    </div>
                          <asp:Button ID="signa" runat="server" class="btn btn-danger" Text="SignUp" OnClick="signa_Click" ></asp:Button>
                           <!-- &nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp;&nbsp;  &nbsp; <a href="www.google.com" >    <asp:Button ID="But" runat="server" class="btn btn-danger" Text="Login"></asp:Button> -->
                                
                                  </form>
                        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</div></div></div></div></section><!--/#bottom--><footer id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
               Designed by <a target="_blank" href="http://aspxtemplates.com/" title="Free Twitter Bootstrap Themes and HTML templates">aspxtemplates</a>     &copy; 2014 Your Company. 
                </div>
                <div class="col-sm-6">
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                        <li><a href="#"><i class="fa fa-flickr"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        <li><a href="#"><i class="fa fa-github"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--/#footer-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mousescroll.js"></script>
    <script src="js/smoothscroll.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/main.js"></script>
    </form>
</body>
</html>
