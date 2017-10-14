<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="preview_dotnet_templates_bootstrap10_index" %>

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
                        <li class="scroll active"><a href="#home">Home</a></li>
                        <li class="scroll"><a href="#features">Features</a></li>
                       
                        <li class="scroll"><a href="#portfolio">Create</a></li>
                      
                       
                        <li class="scroll"><a href="#pricing">Pricing</a></li>
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
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="images/slider/bg1.jpg" alt="First slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>
                            Create Your own Cutom T-Shirt.</h1>
                        <p>
                            You can upload your design or use one from library ranging from game of thrones memes to geeky quotes.Choose a printer near you and get it Delivered to your home.</p>
                        <p>
                        
                            
                        </p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="images/slider/bg2.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>
                            Find customers near you.</h1>
                        <p>
                            For the vendors and printers this is a platform to deal with the customers near your area.</p>
                        <p>
                            
                    </div>
                </div>
            </div>
           <!-- <div class="item">
                <img class="third-slide" src="images/slider/bg3.jpg" alt="Third slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>
                            One more for good measure.</h1>
                        <p>
                            The first publicly available description of HTML was a document called "HTML Tags",
                            first mentioned on the Internet by Berners-Lee in late 1991. describes 18 elements
                            comprising the initial, relatively simple design of HTML.</p>
                        <p>
                            <asp:Button ID="Button3" runat="server" Text="Browser Gallery" CssClass="btn btn-lg btn-warning" />
                    </div>
                </div>
            </div>-->
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                    data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                    </span><span class="sr-only">Next</span> </a>
    </div>
    <!-- /.carousel -->
    <section id="cta" class="wow fadeIn">
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <h2>Custom Tshirt text</h2>
                    <p>
                    </p>
                </div>
                <div class="col-sm-3 text-right">
                <!-- <asp:Button ID="Button4" runat="server" Text="Download Now" CssClass="btn btn-lg btn-danger" />-->
                   
                </div>
            </div>
            <hr />
              <div class="col-sm-6">
              <br />
                    <h3>Vendor text</h3>
                    <p> </p>
                </div>
                <div class="col-sm-6">
                <br />
                    <h3>Printer text</h3>
                    <p>
                    </p>
                </div>
               
            
        </div>
    </section>
    <!--/#cta-->
    <section id="features">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown"> Features</h2>
                <p class="text-center wow fadeInDown">We know how tough it is to find a tshirt with your favourite graphics from a sitcom,movie or a quote. So, just stop roamin in every shop out there and create it by yourself here.</p>
            </div>
            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <img class="img-responsive" src="images/main-feature.png" alt="">
                </div>
                <div class="col-sm-6">
                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa  fa-pencil-square"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Create design</h4>
                           
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-cut"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Customize design</h4>
                          
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa fa-save"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Save design</h4>
                            
                        </div>
                    </div>

                    <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa  fa-shopping-cart"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Buy</h4>
                           
                        </div>
                    </div>

                     <div class="media service-box wow fadeInRight">
                        <div class="pull-left">
                            <i class="fa  fa-home"></i>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">Home Delivery</h4>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--<section id="cta2">
        <div class="container">
            <div class="text-center">
                <h2 class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms"><span>POLY</span> IS A CREATIVE .NET TEMPLATE</h2>
                <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">We work in some of the world’s toughest situations where we offer bold, practical <br /> and innovative solutions where there is real need. Our focus is on the next generation, current and future leaders <br /> and enhancing collaboration between faith communities.</p>
                <p class="wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms"><a class="btn btn-danger btn-lg" href="#">Free Download</a></p>
             
            </div>
        </div>
    </section>
    <section id="services">
        <div class="container">

            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Services</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, practical  and innovative solutions where there is real need.<br /> Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="0ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-line-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">UX design</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                  <!--  <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="100ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-cubes"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">UI design</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                  <!--  <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="200ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-pie-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">SEO Services</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->
                
                  <!--  <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="300ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bar-chart"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">iOS App</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

               <!--     <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="400ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-language"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Android App</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4-->

                  <!--  <div class="col-md-4 col-sm-6 wow fadeInUp" data-wow-duration="300ms" data-wow-delay="500ms">
                        <div class="media service-box">
                            <div class="pull-left">
                                <i class="fa fa-bullseye"></i>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading">Win App</h4>
                                <p>We work in some of the world’s toughest situations where we offer bold.We work in some of the world’s toughest situations where we offer bold</p>
                            </div>
                        </div>
                    </div><!--/.col-md-4
                </div>
            </div><!--/.row-->    
        </div><!--/.container-
    </section>
    <!--/#services-->
    <section id="portfolio">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">LET'S PLAY</h2>
                <p class="text-center wow fadeInDown">Create your very own custom Turtleneck t-shirt, hoodie or Jacket.</p>
            </div>

            <!--<div class="text-center">
                <ul class="portfolio-filter">
                    <li><a class="active" href="#" data-filter="*">All Works</a></li>
                    <li><a href="#" data-filter=".creative">Creative</a></li>
                    <li><a href="#" data-filter=".corporate">Corporate</a></li>
                    <li><a href="#" data-filter=".portfolio">Portfolio</a></li>
                </ul><!--/#portfolio-filter
            </div>-->

            <div class="portfolio-items">
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/01.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Half Sleeves </h3>
                            <a class="preview" href="Default.aspx" ><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item corporate portfolio">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/02.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Full Sleeves</h3>
                           
                            <a class="preview" href="Defaultf.aspx" ><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/03.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Hoodie</h3>
                            
                            <a class="preview" href="Defaulth.aspx" ><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <img class="img-responsive" src="images/portfolio/04.jpg" alt="">
                        <div class="portfolio-info">
                            <h3>Sweatshirt</h3>
                           
                            <a class="preview" href="Defaults.aspx"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                
            </div>
            <br />
             <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Trending Designs</h2>
            </div>
            <div class="portfolio-items">
                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <asp:Image ID="image1" runat="server" class="img-responsive"></asp:Image>
                        <div class="portfolio-info">
                            <h3>Half Sleeves </h3>
                        <asp:LinkButton ID="tclick" runat="server" class="preview" OnClick="tclick_Click">   <i class="fa fa-eye"></i> </asp:LinkButton>  
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item corporate portfolio">
                    <div class="portfolio-item-inner">
                        <asp:Image ID="image2" runat="server" class="img-responsive"></asp:Image>
                        <div class="portfolio-info">
                            <h3>Full Sleeves</h3>
                           
                       <asp:LinkButton ID="fclick" runat="server" class="preview" OnClick="fclick_Click" >      <i class="fa fa-eye"></i> </asp:LinkButton>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item creative">
                    <div class="portfolio-item-inner">
                        <asp:Image ID="image3" runat="server" class="img-responsive"></asp:Image>
                        <div class="portfolio-info">
                            <h3>Hoodie</h3>
                            
                          <asp:LinkButton ID="hclick" runat="server" class="preview" OnClick="hclick_Click" >    <i class="fa fa-eye" ></i>  </asp:LinkButton>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                <div class="portfolio-item corporate">
                    <div class="portfolio-item-inner">
                        <asp:Image ID="image4" runat="server" class="img-responsive"></asp:Image>
                        <div class="portfolio-info">
                            <h3>Sweatshirt</h3>
                           
                          <asp:LinkButton ID="sclick" runat="server" class="preview" OnClick="sclick_Click">    <i class="fa fa-eye"></i> </asp:LinkButton>
                        </div>
                    </div>
                </div><!--/.portfolio-item-->

                
            </div>
        </div>
        <!--/.container-->
    </section>
    <!--/#portfolio-->
    <section id="about">
        <div class="container">

           <!-- <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">About Us</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, practical and innovative solutions where there is real need.<br /> Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>

            <div class="row">
                <div class="col-sm-6 wow fadeInLeft">
                    <h3 class="column-title">Video Intro</h3>
                    <!-- 16:9 aspect ratio -->
                 <!--   <div class="embed-responsive embed-responsive-16by9">
                        <iframe src="//player.vimeo.com/video/58093852?title=0&amp;byline=0&amp;portrait=0&amp;color=e79b39" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
                    </div>
                </div>

                <div class="col-sm-6 wow fadeInRight">
                    <h3 class="column-title">Multi Capability</h3>
                    <p>We work in some of the world’s toughest situations where we offer bold, practical and innovative solutions where there is real need. Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>

                    <p>We work in some of the world’s toughest situations where we offer bold, practical and innovative solutions where there is real need. Our focus is on the next generation.</p>

                    <div class="row">
                        <div class="col-sm-6">
                            <ul class="nostyle">
                                <li><i class="fa fa-check-square"></i> Supporting the Next Generation</li>
                                <li><i class="fa fa-check-square"></i> Supporting the Next </li>
                            </ul>
                        </div>

                        <div class="col-sm-6">
                            <ul class="nostyle">
                                <li><i class="fa fa-check-square"></i> The printing and typesetting</li>
                                <li><i class="fa fa-check-square"></i> Supporting the Generation</li>
                            </ul>
                        </div>
                    </div>

                    <asp:Button ID="Button5" runat="server" Text="Learn More" CssClass="btn btn-warning"></asp:Button>
                  

                </div>
            </div>
        </div>
    </section>
    <!--/#about-->
    <section id="work-process">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Process</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, practical and innovative solutions <br />where there is real need. Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>

            <div class="row text-center">
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="icon-circle">
                            <%-- <span>1</span>--%>
                            <i class="fa fa-coffee fa-2x"></i>
                        </div>
                        <h3>MEET</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
                        <div class="icon-circle">
                           <%-- <span>2</span>--%>
                            <i class="fa fa-bullhorn fa-2x"></i>
                        </div>
                        <h3>PLAN</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="200ms">
                        <div class="icon-circle">
                           <%-- <span>3</span>--%>
                            <i class="fa fa-image fa-2x"></i>
                        </div>
                        <h3>DESIGN</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="300ms">
                        <div class="icon-circle">
                            <%--<span>4</span>--%>
                            <i class="fa fa-heart fa-2x"></i>
                        </div>
                        <h3>DEVELOP</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="400ms">
                        <div class="icon-circle">
                          <%--  <span>5</span>--%>
                            <i class="fa fa-shopping-cart fa-2x"></i>
                        </div>
                        <h3>TESTING</h3>
                    </div>
                </div>
                <div class="col-md-2 col-md-4 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="500ms">
                        <div class="icon-circle">
                            <%--<span>6</span>--%>
                            <i class="fa fa-space-shuttle fa-2x"></i>
                        </div>
                        <h3>LAUNCH</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#work-process-->
   <!-- <section id="meet-team">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Meet The Team</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, practical and innovative solutions <br />where there is real need. Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>

            <div class="row">
                <div class="col-sm-6 col-md-3">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="team-img">
                            <img class="img-responsive" src="images/team/01.jpg" alt="">
                        </div>
                        <div class="team-info">
                            <h3>Venkat</h3>
                            <span>Co-Founder</span>
                        </div>
                        <p>Each sample is a fully functioning Android app. You can browse the resources, source files and see the</p>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
                        <div class="team-img">
                            <img class="img-responsive" src="images/team/02.jpg" alt="">
                        </div>
                        <div class="team-info">
                            <h3>Madhav</h3>
                            <span>Project Manager</span>
                        </div>
                        <p>Each sample is a fully functioning Android app. You can browse the resources, source files and see the</p>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="200ms">
                        <div class="team-img">
                            <img class="img-responsive" src="images/team/03.jpg" alt="">
                        </div>
                        <div class="team-info">
                            <h3>Neo</h3>
                            <span>Designer</span>
                        </div>
                        <p>Each sample is a fully functioning Android app. You can browse the resources, source files and see the</p>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3">
                    <div class="team-member wow fadeInUp" data-wow-duration="400ms" data-wow-delay="300ms">
                        <div class="team-img">
                            <img class="img-responsive" src="images/team/04.jpg" alt="">
                        </div>
                        <div class="team-info">
                            <h3>Ajmid</h3>
                            <span>UI/UX</span>
                        </div>
                        <p>Each sample is a fully functioning Android app. You can browse the resources, source files and see the</p>
                        <ul class="social-icons">
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="divider"></div>

            <div class="row">
                <div class="col-sm-4">
                    <h3 class="column-title">Our Skills</h3>
                    <strong>GRAPHIC DESIGN</strong>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" data-width="85">85%</div>
                    </div>
                    <strong>WEB DESIGN</strong>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" data-width="70">70%</div>
                    </div>
                    <strong>WORDPRESS DEVELOPMENT</strong>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" data-width="90">90%</div>
                    </div>
                    <strong>JOOMLA DEVELOPMENT</strong>
                    <div class="progress">
                        <div class="progress-bar progress-bar-primary" role="progressbar" data-width="65">65%</div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <h3 class="column-title">Our History</h3>
                    <div role="tabpanel">
                        <ul class="nav main-tab nav-justified" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#tab1" role="tab" data-toggle="tab" aria-controls="tab1" aria-expanded="true">2010</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab2" role="tab" data-toggle="tab" aria-controls="tab2" aria-expanded="false">2011</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab3" role="tab" data-toggle="tab" aria-controls="tab3" aria-expanded="false">2013</a>
                            </li>
                            <li role="presentation">
                                <a href="#tab4" role="tab" data-toggle="tab" aria-controls="tab4" aria-expanded="false">2014</a>
                            </li>
                        </ul>
                        <div id="tab-content" class="tab-content">
                            <div role="tabpanel" class="tab-pane fade active in" id="tab1" aria-labelledby="tab1">
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters readable English.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab2" aria-labelledby="tab2">
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters readable English.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab3" aria-labelledby="tab3">
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters readable English.</p>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab4" aria-labelledby="tab3">
                                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                <p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters readable English.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4">
                    <h3 class="column-title">Faqs</h3>
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-danger">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        GitHub and is the recommended method to retrieve
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    Each sample is a fully functioning Android app. You can browse the resources, source files and see the overall project structure. You can copy and paste the code you need, and if you want to share a link to a specific line you can double-click it to the get the URL.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        GitHub and is the recommended method to retrieve
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    Each sample is a fully functioning Android app. You can browse the resources, source files and see the overall project structure. You can copy and paste the code you need, and if you want to share a link to a specific line you can double-click it to the get the URL.
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-danger">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        GitHub and is the recommended method to retrieve
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    Each sample is a fully functioning Android app. You can browse the resources, source files and see the overall project structure. You can copy and paste the code you need, and if you want to share a link to a specific line you can double-click it to the get the URL.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--/#meet-team-->
   <!-- <section id="animated-number">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Our Work in Stats!</h2>
                <p class="text-center wow fadeInDown">
            </div>

            <div class="row text-center">
                <div class="col-sm-3 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="0ms">
                        <div class="animated-number" data-digit="000" data-duration="1000"></div>
                        <strong>Tshirt Printed</strong>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="100ms">
                        <div class="animated-number" data-digit="000" data-duration="1000"></div>
                        <strong>Designs</strong>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="200ms">
                        <div class="animated-number" data-digit="3025" data-duration="1000"></div>
                        <strong>Customers</strong>
                    </div>
                </div>
                <div class="col-sm-3 col-xs-6">
                    <div class="wow fadeInUp" data-wow-duration="400ms" data-wow-delay="300ms">
                        <div class="animated-number" data-digit="000" data-duration="1000"></div>
                        <strong>Vendors</strong>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#animated-number-->
  
    <!--/#pricing-->
    <!--<section id="testimonial">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">

                    <div id="carousel-testimonial" class="carousel slide text-center" data-ride="carousel">
                        <!-- Wrapper for slides -->
                     <!--   <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <p><img class="img-circle img-thumbnail" src="images/testimonial/01.jpg" alt=""></p>
                                <h4>Anilnew K. Kumar</h4>
                                <small>Treatment, storage, and disposal (TSD) worker</small>
                                <p>Each sample is a fully functioning Android app. Each sample is a fully functioning Android app. Each sample is a fully functioning Android app.</p>
                            </div>
                            <div class="item">
                                <p><img class="img-circle img-thumbnail" src="images/testimonial/01.jpg" alt=""></p>
                                <h4>Anilnew K. Kumar</h4>
                                <small>Treatment, storage, and disposal (TSD) worker</small>
                                <p>Each sample is a fully functioning Android app. Each sample is a fully functioning Android app. Each sample is a fully functioning Android app.</p>
                            </div>
                        </div>

                        <!-- Controls -->
                      <!--  <div class="btns">
                            <a class="btn btn-danger btn-sm" href="#carousel-testimonial" role="button" data-slide="prev">
                                <span class="fa fa-angle-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="btn btn-danger btn-sm" href="#carousel-testimonial" role="button" data-slide="next">
                                <span class="fa fa-angle-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/#testimonial-->
   <!-- <section id="blog">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Latest Blogs</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, practical  and innovative solutions where there is real need.<br /> Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</p>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <div class="blog-post blog-large wow fadeInLeft" data-wow-duration="300ms" data-wow-delay="0ms">
                        <article>
                            <header class="entry-header">
                                <div class="entry-thumbnail">
                                    <img class="img-responsive" src="images/blog/01.jpg" alt="">
                                   <%-- <span class="post-format post-format-video"><i class="fa fa-film"></i></span>--%>
                                </div>
                                <div class="entry-date">25 June 2014</div>
                                <h2 class="entry-title"><a href="#">We work in some of the world’s toughest situations where we offer bold</a></h2>
                            </header>

                            <div class="entry-content">
                                <P>We work in some of the world’s toughest situations where we offer bold, practical  and innovative solutions where there is real need. Our focus is on the next generation, current and future leaders and enhancing collaboration between faith communities.</P>
                                <a class="btn btn-danger" href="#">Read More</a>
                            </div>

                            <footer class="entry-meta">
                                <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Victor</a></span>
                                <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                            </footer>
                        </article>
                    </div>
                </div><!--/.col-sm-6-->
               <!-- <div class="col-sm-6">
                    <div class="blog-post blog-media wow fadeInRight" data-wow-duration="300ms" data-wow-delay="100ms">
                        <article class="media clearfix">
                            <div class="entry-thumbnail pull-left">
                                <img class="img-responsive" src="images/blog/02.jpg" alt="">
                               <%-- <span class="post-format post-format-gallery"><i class="fa fa-image"></i></span>--%>
                            </div>
                            <div class="media-body">
                                <header class="entry-header">
                                    <div class="entry-date">01 May 2014</div>
                                    <h2 class="entry-title"><a href="#">BeReviews was a awesome envent in Hyd</a></h2>
                                </header>

                                <div class="entry-content">
                                    <P>We work in some of the world’s toughest situations where we offer bold, We work in some of the world’s toughest situations where we offer bold</P>
                                    <a class="btn btn-danger" href="#">Read More</a>
                                </div>

                                <footer class="entry-meta">
                                    <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Campbell</a></span>
                                    <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                    <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                                </footer>
                            </div>
                        </article>
                    </div>
                    <div class="blog-post blog-media wow fadeInRight" data-wow-duration="300ms" data-wow-delay="200ms">
                        <article class="media clearfix">
                            <div class="entry-thumbnail pull-left">
                                <img class="img-responsive" src="images/blog/03.jpg" alt="">
                               <%-- <span class="post-format post-format-audio"><i class="fa fa-music"></i></span>--%>
                            </div>
                            <div class="media-body">
                                <header class="entry-header">
                                    <div class="entry-date">03 May 2014</div>
                                    <h2 class="entry-title"><a href="#">Music World is bla bla bla bla..</a></h2>
                                </header>

                                <div class="entry-content">
                                    <P>We work in some of the world’s toughest situations where we offer bold We work in some of the world’s toughest situations where we offer bold</P>
                                    <a class="btn btn-danger" href="#">Read More</a>
                                </div>

                                <footer class="entry-meta">
                                    <span class="entry-author"><i class="fa fa-pencil"></i> <a href="#">Ruth</a></span>
                                    <span class="entry-category"><i class="fa fa-folder-o"></i> <a href="#">Tutorial</a></span>
                                    <span class="entry-comments"><i class="fa fa-comments-o"></i> <a href="#">15</a></span>
                                </footer>
                            </div>
                        </article>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <section id="get-in-touch">
        <div class="container">
            <div class="section-header">
                <h2 class="section-title text-center wow fadeInDown">Get in Touch</h2>
                <p class="text-center wow fadeInDown">We work in some of the world’s toughest situations where we offer bold, We work in some of the world’s toughest situations where we offer bold <br />We work in some of the world’s toughest situations where we offer bold. </p>
            </div>
        </div>
    </section>
    <!--/#get-in-touch-->
   <!-- <section id="contact">
        <div id="google-map" style="height:650px" data-latitude="52.365629" data-longitude="4.871331"></div>
        <div class="container-wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-8">
                        <div class="contact-form">
                            <h3>Contact Info</h3>

                            <address>
                              <strong>Twitter, Inc.</strong><br>
                              795 Folsom Ave, Suite 600<br>
                              San Francisco, CA 94107<br>
                              <abbr title="Phone">P:</abbr> (123) 456-7890
                            </address>

                            <form id="main-contact-form" name="contact-form" method="post" action="#">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Email" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                                </div>
                                <div class="form-group">
                                    <textarea name="message" class="form-control" rows="8" placeholder="Message" required></textarea>
                                </div>
                                <button type="submit" class="btn btn-danger">Send Message</button>
                            </form>
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
              <%--  --%>
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
