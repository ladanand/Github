v<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admincmp.aspx.cs" Inherits="preview_dotnet_templates_with_out_masterpages_Shop_item_index" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1"><meta name="description" content=""><title>YourTrends</title>  <!-- Bootstrap Core CSS --><link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" /><!-- Custom CSS --><link href="css/shop-item.css" rel="stylesheet" type="text/css" /><link href="css/animated.css" rel="stylesheet" type="text/css" /><link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" /><link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,700italic,400,700"
        rel="stylesheet" type="text/css"><link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" /><!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]--></head><body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top"><form id="form1" runat="server">
    <!-- Navigation -->
    <nav id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">YOURTRENDS</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
           <div class="collapse navbar-collapse navbar-menubuilder" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a class="page-scroll" href="#home">Home</a>
                </li>
                <li><a class="page-scroll" href="#product">Site</a>
                </li>
               <!-- <li><a class="page-scroll" href="#gallery">Gallery</a>
                </li>
                <li><a class="page-scroll" href="#contact">Contact</a>
                </li>-->           </ul>
        </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Slider -->
    <div id="home">
       
            <!-- /.carousel end-->
        </div>
    </div>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="sidebar topspace30">
                    <div class="wowwidget">
                        <h4>
                            Administartion</h4>
                        <ul class="categories">
                            <li><a href="adminaddv.aspx">Add Vendor</a></li>
                            <li><a href="adminremv.aspx">Remove Vendor</a></li> 
    <li><a href="admintrend.aspx">manage trends</a></li>
                            <li><a href="adminorder.aspx">View Orders</a></li>
                            <li><a href="#">Send Campaign</a></li>
     <li>        <asp:Button ID="lout"  CssClass="btn btn-lg  btn-success" Text="logout" BackColor="#006699" runat="server" BorderColor="White" OnClick="lout_Click"  />
    </li>
                        </ul>
                    </div>
                    <div class="wowwidget">
                    </div>
                </div>
            </div>
            <div id="addvendor" runat="server">
            <div class="col-md-9">

                <div class="thumbnail">
                    
                    <div class="intro-note topspace10">
                        <div class="col-md-12 text-center">
                           
                            <h1><asp:Label ID="Labelwel" runat="server" Text="New Registrations"></asp:Label>
                               </h1>

                           <div> <asp:TextBox ID="TextBox1" runat="server" Height="50px" Width="354px" placeholder="your message"></asp:TextBox>
                               <br />
                            </div>
                             <br />


                             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"

                   DataKeyNames="Cmail" GridLines="None" Width="100%" CellPadding="4" ForeColor="#333333" DataSourceID="SqlDataSource1">

                    

                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

                    

                    <Columns>

                       




                        <asp:BoundField DataField="Cmail" HeaderText="Email" />                                           

                      

                     <asp:TemplateField HeaderText="CheckAll">

                    <HeaderTemplate>

                        <asp:CheckBox ID="chkSelectAll" runat="server" 

                                      AutoPostBack="true" 

                                      OnCheckedChanged="chkSelectAll_CheckedChanged"/>Send Mail To All ?

                    </HeaderTemplate>

                        <ItemTemplate>

                        <asp:CheckBox ID="chkSelect" runat="server"/>

                        </ItemTemplate>

                     </asp:TemplateField>

                    </Columns>                   

                    <EditRowStyle BackColor="#999999" />

                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />

                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />

                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />

                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />

                    <SortedAscendingCellStyle BackColor="#E9E7E2" />

                    <SortedAscendingHeaderStyle BackColor="#506C8C" />

                    <SortedDescendingCellStyle BackColor="#FFFDF8" />

                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database3.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Cmail] FROM [Order1]"></asp:SqlDataSource>
                     <asp:Button ID="btnSendMail" runat="server" Text="Send Email" OnClick="btnSendMail_Click" /> 
                            
                               </div>


                    </div>
                </div>
            </div>                    
            
            
            
    


           
    </div>
    </div>
  
</form>
</body>
</html>
