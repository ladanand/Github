v<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminremv.aspx.cs" Inherits="preview_dotnet_templates_with_out_masterpages_Shop_item_index" %>

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
                            <li><a href="#">Remove Vendor</a></li> 
    <li><a href="admintrend.aspx">manage trends</a></li>
                            <li><a href="adminorder.aspx">View Orders</a></li>
                            <li><a href="admincmp.aspx">Send Campaign</a></li>
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
                           
                            <h1><asp:Label ID="Labelwel" runat="server" Text="Current Registrations"></asp:Label>
                               </h1>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Vendor_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="876px" AllowPaging="True" >
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="Vendor_id" HeaderText="Vendor_id" ItemStyle-Width="  110px" ReadOnly="True" SortExpression="Vendor_id"  />
                                    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="80px" SortExpression="Name" />
                                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" ItemStyle-Width="120px" />
                                    <asp:BoundField DataField="PasswordVendor" HeaderText="PasswordVendor" SortExpression="PasswordVendor" ItemStyle-Width="150px" />
                                    <asp:BoundField DataField="VendorEmail" HeaderText="VendorEmail" SortExpression="VendorEmail" ItemStyle-Width="120px" />
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" ItemStyle-Width="80px" />
                                    <asp:BoundField DataField="Delivery" HeaderText="Delivery" SortExpression="Delivery" ItemStyle-Width="100px" />
                                    <asp:BoundField DataField="Product" HeaderText="Product" SortExpression="Product" ItemStyle-Width="80px"/>
                                    <asp:BoundField DataField="Apprv" HeaderText="Apprv" SortExpression="Apprv" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  SelectCommand="SELECT * FROM [VendorL]" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database3.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
                      <div>  <p>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="rmv" runat="server" placeholder="VendorId"></asp:TextBox>
        <asp:Button ID="remv" runat="server" CssClass="btn btn-lg  btn-success" Text="Remove Vendor" BackColor="#006699" BorderColor="Black" OnClick="remv_Click" />
    </p></div>
                      
                        </div>
                    </div>
                </div>
            </div>                    
            
            
            
    


           
    </div>
    </div>
  
</form>
</body>
</html>
