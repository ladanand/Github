<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buyfu.aspx.cs" Inherits="bootstrap10_Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>YourTrends
    </title>
     <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico.png">
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
    <form id="form2" runat="server" >
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
                        <li class="scroll"><a href="index.aspx#home">Home</a></li>
                        <li class="scroll"><a href="index.aspx#features">Features</a></li>
                       
                        <li class="scroll active"><a href="#">Create</a></li>
                      
                       
                        <li class="scroll"><a href="index.aspx#pricing">Pricing</a></li>
                        <li class="scroll"><a href="login.aspx">Login</a></li> 
                        <li class="scroll"><a href="Signup.aspx">Signup</a></li>                            
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <!--/header-->
    <!-- Carousel
    ================================================== -->
     <section id="pricing">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Pricing Table</h2>
                <p class="text-center wow fadeInDown"> </p>
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="0ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        170 Rs. per Print
                                    </span>
                                    
                                </div>

                                <div class="plan-name">
                                    Normal Delivery      <br />(in 5 days) <br /> Less than 10 Prints
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="200ms">
                        <ul class="pricing featured">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        140 Rs. per Print
                                    </span>
                                    
                                </div>

                                <div class="plan-name">
                                   Normal Delivery      <br />(in 5 days) <br /> More than 10 Prints
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="400ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                       190 Rs. per Print
                                    </span>
                                    
                                </div>

                                <div class="plan-name">
                                  Fast Delivery      <br />(in 2 days) <br /> Less than 10 Prints
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="wow zoomIn" data-wow-duration="400ms" data-wow-delay="600ms">
                        <ul class="pricing">
                            <li class="plan-header">
                                <div class="price-duration">
                                    <span class="price">
                                        170 Rs. per Print
                                    </span>
                                    
                                </div>

                                <div class="plan-name">
                                   Fast Delivery      <br />(in 2 days) <br /> More than 10 Prints
                                </div>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contact" style="height:880px">
        <div  style="height:880px" ></div>
        <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <div class="contact-form">
                            <h3>Customer Details</h3>

                            

                           
                                <div class="form-group">
                                    <asp:TextBox ID="namec" runat="server" class="form-control" placeholder="Name" required></asp:TextBox>
                                    
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="mail" type="email" runat="server" class="form-control" placeholder="email" required></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="contactc" runat="server" class="form-control" placeholder="contact number" required></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="cty" runat="server"  AutoPostBack="true" class="form-control"  OnSelectedIndexChanged="cty_SelectedIndexChanged" >
                                        <asp:ListItem >Vadodara</asp:ListItem>
                                        <asp:ListItem>Ahmedabad</asp:ListItem>
                                        <asp:ListItem>Rajkot</asp:ListItem>
                                        <asp:ListItem>Surat</asp:ListItem>
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                  <asp:TextBox ID="addr" runat="server" class="form-control" Rows="8" placeholder="address" required TextMode="MultiLine"></asp:TextBox>
 
                                </div>
                                <div class="form-group">
                                    
                                </div>
                                <div class="form-group">
                                    <asp:DropDownList ID="vndrs" runat="server" AutoPostBack="True" class="form-control" OnSelectedIndexChanged="vn_SelectedIndexChanged"></asp:DropDownList>
                                </div>
                            
                            <div class="form-group">
                                <asp:DropDownList ID="del" runat="server"  class="form-control" >
                                   
                                </asp:DropDownList>
                                </div>

                             <div class="form-group">
                                 <asp:DropDownList ID="size" runat="server" class="form-control">
                                     <asp:ListItem>Small</asp:ListItem>
                                     <asp:ListItem>Medium</asp:ListItem>
                                     <asp:ListItem>Large</asp:ListItem>
                                     <asp:ListItem>Extra Large</asp:ListItem>
                                 </asp:DropDownList>

                                 </div>
                             <div class="form-group">
                                 <asp:DropDownList ID="color" runat="server" class="form-control">
                                     <asp:ListItem>Black</asp:ListItem>
                                     <asp:ListItem>Green</asp:ListItem>
                                     <asp:ListItem>Grey</asp:ListItem>
                                     <asp:ListItem>Yellow</asp:ListItem>
                                 </asp:DropDownList>
                                 </div>

                                 <div class="form-group">
                                    <asp:TextBox ID="qty" runat="server" class="form-control" placeholder="Quantity" OnTextChanged="qty_TextChanged" AutoPostBack="true" required></asp:TextBox>

                                 </div>

                            <div class="form-group">
                                <asp:FileUpload ID="FileUpload1" class="btn btn-danger" runat="server" />  
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <br />
                                </div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="buy0" runat="server"  class="btn btn-danger" Text="Buy" OnClick="buy0_Click" />
                                  
                          
                                
                                  


                            
                                
                          
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    <!--/#bottom-->
    <footer id="footer">
        <div class="container">
            <div class="row">
                
                <div class="col-sm-6">
                    <ul class="social-icons">
                        <li><a href="https://www.facebook.com/helpinhand.in"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://twitter.com/helpinhand_in"><i class="fa fa-twitter"></i></a></li>
                        
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
