<%@page session="true"%>
<%
if(session.getAttribute("user")==null)
{
response.sendRedirect("index.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FMT Dashboard</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Falodi Matching Textiles..</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                   
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <!--<li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>-->
                            <!-- /input-group -->
                        
                        <li>
                            <a href="success.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>  
                        <li>
                            <a href="showSale.jsp"><i class="fa fa-bar-chart-o fa-fw"></i> SALES</a>
                        </li>
                        <li>
                            <a href="showPurchase.jsp"><i class="fa fa-bar-chart-o fa-fw"></i> Purchase</a>
                        </li>
                        <li>
                            <a href="orders.jsp"><i class="fa fa fa-shopping-cart fa-fw"></i> Orders</a>
                        </li>
                       <!--  <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                      <!-- </li> -->
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>
                      <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'sale.jsp',
      	data: 'date='+ $('#date').val() +'&name=' + $('#name').val() +'&invoice=' + $('#invoice').val() +'&amount=' + $('#amount').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#msgbox").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered. or party not registered').removeClass().addClass('myerror').fadeTo(900,1);
		                  $("#party_name").val($("#name").val());
		                  $("#myModal").modal("hide").fadeTo(900,1);
		                  $("#myModal2").modal("show");
		                });
				

				
			}
		}
	
	});
}, 200);
return false;
});		

});
</script>

                     <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform2").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox2").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'gstin.jsp',
      	data: 'party_name='+ $('#party_name').val() +'&gstin=' + $('#gstin').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#msgbox2").html('Registeration verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Registered Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
			                  $("#msgbox").fadeTo(200,0.1,function() //start fading the messagebox
			  		            	{
			  		                  //add message and change the class of the box and start fading
			  		                  $(this).html('Now add details').removeClass().addClass('myerror').fadeTo(900,1);
			  		            	});
							 $("#myModal2").modal("hide").fadeTo(900,1);
							 document.myform2.reset();
							 $("#myModal").modal("show");
		                  });

				
			}
			
			else
			{
				$("#msgbox2").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, some problem has occured').removeClass().addClass('myerror').fadeTo(900,1);

		                });
				

				
			}
		}
	
	});
}, 200);
return false;
});		

});
</script>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Sales entry</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#myModal">
                            <div class="panel-footer">
                                <span class="pull-left">Add Sale entry</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                

                  
                  
                   <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Sale Entry</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform" id="myform" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Invoice Date</label>
              <input type="text" class="form-control" name="date" id="date" placeholder="YYYY/MM/DD or YYYY-MM-DD">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Party Name</label>
              <input type="text" class="form-control" name="name" id="name" placeholder="Enter Party Name" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Invoice No.</label>
              <input type="text" class="form-control" name="invoice" id="invoice" placeholder="Enter Invoice No." >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Taxable Value</label>
              <input type="text" class="form-control" name="amount" id="amount" placeholder="Enter Amount" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry" id="entry"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="msgbox"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  
   <!-- Modal -->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h8>please register party with gst number</h8>
          <h4><span class="fa fa-lock"></span> Register Party</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform2" id="myform2" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Party Name</label>
              <input type="text" class="form-control" value="chai" name="party_name" id="party_name" placeholder="Enter party name">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Gstin No.</label>
              <input type="text" class="form-control" name="gstin" id="gstin" placeholder="Enter Gstin No" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="submit" id="submit"><span class="fa fa-power-off"></span> Add Party</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="msgbox2"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Buy entry</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#myModal1">
                            <div class="panel-footer">
                                <span class="pull-left">Add Purchase entry</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                                      <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform1").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox3").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'purchase.jsp',
      	data: 'date1='+ $('#date1').val() +'&name1=' + $('#name1').val() +'&invoice1=' + $('#invoice1').val() +'&hsn_code=' + $("#hsn_code").val() + '&amount1=' + $('#amount1').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#msgbox3").html('Data Added verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Data Added Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
		                  });
				document.myform1.reset().fadeTo(900,1);
				}
			
			else
			{
				$("#msgbox3").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, not correct data entered. or party not registered').removeClass().addClass('myerror').fadeTo(900,1);
		                  $("#party_name1").val($("#name1").val());
		                  $("#myModal1").modal("hide").fadeTo(900,1);
		                  $("#myModal3").modal("show");
		                });
				

				
			}
		}
	
	});
}, 200);
return false;
});		

});
</script>

                     <!-- ..//JQuery Source\\.. -->
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<!-- ..//JavaScript Code for this page\\.. -->
<script type="text/javascript">
$(document).ready(function(){
$("#myform3").submit(function(){
 
//remove previous class and add new "myinfo" class
$("#msgbox4").removeClass().addClass('myinfo').text('sending data ').fadeIn(1000);
 
this.timer = setTimeout(function () {
	$.ajax({
      	url: 'gstin1.jsp',
      	data: 'party_name1='+ $('#party_name1').val() +'&gstin1=' + $('#gstin1').val(),
      	type: 'post',
			success: function(msg){
			if(msg!= 1) // Message Sent, check and redirect
			{				// and direct to the success page
				$("#msgbox4").html('Registeration verified.. ').addClass('myinfo').fadeTo(900,1,
		                  function()
		                  {
							 //add message and change the class of the box and start fading
			                  $(this).html('Voila! ,Registered Successfully!!').removeClass().addClass('myerror').fadeTo(900,1);
			                  $("#msgbox3").fadeTo(200,0.1,function() //start fading the messagebox
			  		            	{
			  		                  //add message and change the class of the box and start fading
			  		                  $(this).html('Now add details').removeClass().addClass('myerror').fadeTo(900,1);
			  		            	});
							 $("#myModal3").modal("hide").fadeTo(900,1);
							 document.myform3.reset();
							 $("#myModal1").modal("show");
		                  });

				
			}
			
			else
			{
				$("#msgbox4").fadeTo(200,0.1,function() //start fading the messagebox
		            	{
		                  //add message and change the class of the box and start fading
		                  $(this).html('Sorry, some problem has occured').removeClass().addClass('myerror').fadeTo(900,1);

		                });
				

				
			}
		}
	
	});
}, 200);
return false;
});		

});
</script>
                
                
                  <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Purchase Entry</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform1" id="myform1" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Invoice Date</label>
              <input type="text" class="form-control" name="date1" id="date1" placeholder="YYYY/MM/DD or YYYY-MM-DD">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Party Name</label>
              <input type="text" class="form-control" name="name1" id="name1" placeholder="Enter Party Name" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Invoice No.</label>
              <input type="text" class="form-control" name="invoice1" id="invoice1" placeholder="Enter Invoice No." >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> HSN Code</label>
              <input type="text" class="form-control" name="hsn_code" id="hsn_code" placeholder="Enter HSN Code" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Taxable Value</label>
              <input type="text" class="form-control" name="amount1" id="amount1" placeholder="Enter Amount" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="entry1" id="entry1"><span class="fa fa-power-off"></span> Add Entry</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="msgbox3"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  
   <!-- Modal -->
  <div class="modal fade" id="myModal3" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h8>please register party with gst number</h8>
          <h4><span class="fa fa-lock"></span> Register Party</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="myform3" id="myform3" role="form" method="post" action="">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Party Name</label>
              <input type="text" class="form-control" value="chai" name="party_name1" id="party_name1" placeholder="Enter party name">
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Gstin No.</label>
              <input type="text" class="form-control" name="gstin1" id="gstin1" placeholder="Enter Gstin No" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="submit1" id="submit1"><span class="fa fa-power-off"></span> Add Party</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id="msgbox4"></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
                
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Bill creation</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="a href="#intro" data-toggle="modal" data-target="#billModal">
                            <div class="panel-footer">
                                <span class="pull-left">Create Bill</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
                <!-- bill modal -->
                 <div class="modal fade" id="billModal" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Bill Creation</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form name="billForm" id="billForm" role="form" method="post" action="invoice.jsp">
            <div class="form-group">
              <label for="usrname"><span class="fa fa-user"></span> Invoice Date</label>
              <input type="text" class="form-control" name="date1" id="date1" placeholder="YYYY/MM/DD or YYYY-MM-DD">
            </div>
            <div class="form-group">
              <label for="party_name"><span class="fa fa-eye"></span> Party Name</label>
              <input type="text" class="form-control" name="name1" id="name1" placeholder="Enter Party Name" >
            </div>
            <div class="form-group">
              <label for="address"><span class="fa fa-eye"></span> Address</label>
              <input type="text" class="form-control" name="address" id="address" placeholder="Enter Address" >
            </div>
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              <button type="submit" class="btn btn-success btn-block" name="sub" id="sub"><span class="fa fa-power-off"></span> Create Bill</button>
          </form>
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
      </div>
      </div>
      
    </div>
  </div>
  
  <!-- bill modal end -->
                
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Show sales</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="showSale.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show Sales</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->


            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Show purchase</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="showPurchase.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show Purchase</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">Orders placed</div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                        <a href="orders.jsp">
                            <div class="panel-footer">
                                <span class="pull-left">Show Orders</span>
                                <span class="pull-right"><i class="fa fa-plus-square"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                
            </div>
            
            
        
        
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>

</body>

</html>
