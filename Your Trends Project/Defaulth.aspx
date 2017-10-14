<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defaulth.aspx.cs" Inherits="bootstrap10_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat="server">
<link rel="stylesheet" type="text/css" href="css/jquery.ui.core.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.ui.resizable.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <link href="css/animate.min.css" rel="stylesheet" />
    <link href="css/owl.carousel.css" rel="stylesheet" />
    <link href="css/owl.transitions.css" rel="stylesheet" />
    <link href="css/prettyPhoto.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/responsive.css" rel="stylesheet" />

<style>
#draggable-zone {
	background: #000 url(images/03.jpg) 0 0 no-repeat;
	border:     3px solid #000;

	height:     400px;
	margin:     2em auto;
	overflow:   hidden;
	width:      600px;}
	
.ui-wrapper {
	overflow:   visible !important;}
	
.ui-resizable-handle {
	background:    #f5dc58;
	border:        1px solid #FFF;
	
	z-index:    2;}
	
.ui-rotatable-handle {
	background:    #f5dc58;
	border:        1px solid #FFF;
	border-radius: 5px;
		-moz-border-radius:    5px;
		-o-border-radius:      5px;
		-webkit-border-radius: 5px;
	cursor:        pointer;
	
	height:        10px;
	left:          50%;
	margin:        0 0 0 -5px;
	position:      absolute;
	top:           -5px;
	width:         10px;}
	
.ui-rotatable-handle.clone {
	visibility:  hidden;}
</style>

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
                    <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="logo"/></a>
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
        <br />
    </header>
        &nbsp;&nbsp;
        <div style="left:0px">
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
        <asp:Button ID="Button4" runat="server" OnClick="bt4click" Text="Upload Graphic" CssClass="btn btn-warning" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Hide" CssClass="btn btn-warning" />
      
            <a href="buyhd.aspx">     <input name="b_print" type="button" class="btn btn-warning"   onclick="printdiv('p')" value=" buy "/></a> 

           
    <div id="p">        
	<div id="draggable-zone" >
         
		<div id="draggable-wrapper" style="width: 150px; height: 150px; left: 225px; top:175px;">
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="btn btn-warning" OnDataBinding="FileUpload2_DataBinding" />
	
			        <asp:Button ID="Button1" runat="server" CssClass="btn-block" Text="Upload" OnClick="Button1_Click" />
	
			<div id="resizable-wrapper">				
			<asp:Image  runat="server"  width="150" height="150" alt="Планет Земля" id="elemwrapper" />
			</div>
            
		
	</div></div></div></div>
	<script type="text/javascript" src="js/jquery1.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.core.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.widget.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.mouse.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.draggable.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.resizable.js"></script>
	<script type="text/javascript" src="js/ui/jquery.ui.rotatable.js"></script>
        <script type="text/javascript">
            function printdiv(printpage) {
                var headstr = "<html><head><title></title></head><body>";
                var footstr = "</body>";
                var newstr = document.all.item(printpage).innerHTML;
                var oldstr = document.body.innerHTML;
                document.body.innerHTML = headstr + newstr + footstr;
                window.print();
                document.body.innerHTML = oldstr;
                return false;
            }
</script>
	
	<script type="text/javascript">
	    $(document).ready(function () {
	        var drWr = $('#draggable-wrapper'),
                rsWr = $('#resizable-wrapper'),
                elem = $('#elemwrapper');

	        elem.resizable({
	            aspectRatio: true,
	            handles: 'ne, nw, se, sw'
	        });

	        drWr.draggable();

	        elem.parent().rotatable();
	    });
	</script>
       


	</form>
	
</body>
</html>
