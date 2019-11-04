<%@page import="edu.com.DBHepler"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="edu.com.Sale"%>
<%@page session="true"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<% 

String gstin="";

String name=request.getParameter("name1");
try{
	DBHepler db=new DBHepler();
	Sale e=db.getGstinInfo(name);
	if(e!=null)
	{
		gstin=e.getGstin();
		
	}
	else{
		gstin="";
	}
		
	
}
catch(Exception ex){
	
}
     String date=request.getParameter("date1");
     String address=request.getParameter("address");
   /* if(gstin==null || gstin=="")
    { 	
   	/*out.print(23);
    }*/
   /* else{
    	 /*try{
    	    	
    	    	DBHepler db=new DBHepler();
    	    	int count=db.addSale(date,name,gstin,invoice,amount,cgst,cgst,tgst,value);
    	    	if(count>0)
    	    	{
    	    		out.print("Welcome "+name);
    	    	}
    	    	else
    	    		out.print(1);
    	    	
    	    }
    	    catch(Exception e){
    	    	
    	    	out.print(1);
    	        
    	    	
    	    }
    }*/
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Invoice</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">
    <link href="css/template.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
    </style>

</head>

<body margin-bottom="25px;">

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
                    <!-- /.dropdown-messages -->
                </li>
               
                <!-- /.dropdown -->
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
                      
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            
            </nav>


        <div id="page-wrapper">
            <div class="row">
               
                    <h1 class="page-header">Purchase..</h1>
                    
                                      <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Add Items</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
                  
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Item Name</label>
              <input type="text" class="form-control" name="fname" id="fname" placeholder="Item Name" >
            </div>
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Quantity</label>
              <input type="number" class="form-control" name="lname" id="lname" placeholder="Quantity" >
            </div>
            <div class="form-group">
              <label for="number"><span class="fa fa-eye"></span> Unit price</label>
              <input type="number" class="form-control" name="age" id="age" placeholder="Unit Price" >
            </div>
            
 <button onclick="addRow();" class="btn btn-success btn-block" name="add_item" id="add_item"><span class="fa fa-power-off"></span> Add Item</button>
            
            
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              
          
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id=""></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div> 
  

                    
            
                    <div id="but" class="row">
<button type="submit" class="btn btn-success btn-default" id="show_button" onclick="printDiv('print')"><span class="fa fa-print"></span> Print</button>
<button type="submit" class="btn btn-danger btn-default" data-toggle="modal" data-target="#myModal1"><span class="fa fa-plus-circle "></span> Add Gstin</button>
<button type="submit" class="btn btn-danger btn-default" data-toggle="modal" data-target="#myModal"><span class="fa fa-plus-circle "></span> Add Items</button>

</div>
               
                <!-- /.col-lg-12 -->
            </div>
            <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
            <script type="text/javascript">
    var button = document.getElementById('show_button')
    button.addEventListener('click',hideshow,false);

    function hideshow() {
        document.getElementById('show_button').style.display = 'block'; 
        this.style.display = 'none'
    }   
</script>
<script type="text/javascript">
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}
</script>
<script>

	function Gstin(){
		var gstin = document.getElementById('gstin').value;
$("#invoice1").fadeTo(200,0.1,function() //start fading the messagebox
      	{
            //add message and change the class of the box and start fading
            $(this).html(gstin).removeClass().addClass('myerror').fadeTo(0,1);
      	});
}
	

</script>

                                        <!-- Modal -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
<!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="fa fa-lock"></span> Add Items</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
        
          
            <div class="form-group">
              <label for="psw"><span class="fa fa-eye"></span> Gstin</label>
              <input type="text" class="form-control" name="gstin" id="gstin" placeholder="GST No." >
            </div>
            
            
 <button onclick="Gstin();" class="btn btn-success btn-block" name="add_gst" id="add_gst"><span class="fa fa-power-off"></span> Add Gstin</button>
 
            
            
           <!--   <div class="checkbox">
              <label><input type="checkbox" value="" unchecked>Remember me</label>
            </div> -->
              
          
        </div>
        <div class="modal-footer">
        <div id="result"></div>
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="fa fa-times"></span> Cancel</button>
          <!--<p>Not a member? <a href="#myModal1" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
          <div>
          <h5 style="color:red;" id=""></h5>
          </div>
        </div>
      </div>
      
    </div>
  </div>

           <div id="container">
      <div class="left-stripes">
        <div class="circle c-upper"></div>
        <div class="circle c-lower"></div>
      </div>
	
      <div class="right-invoice">
      <div id="print">
        <section id="memo">
          <div class="company-info">
            <div>XYZ TEXTILES</div>
            <span>358-359 BR colony</span>
            <span>airport road, indore</span>
            <br>
            <span>+91 9907543621</span>
            <br>
            <span>falodi@gmail.com</span><br>
            <span id="invoice">GSTIN -</span><span>23SDFIG9967GG1ZL</span>
            <br><br>
         
            <span id="invoice">INVOICE NO.-</span> <span>{net_term}</span><br>
             <span id="invoice">INVOICE DATE-</span> <span><%=date %></span><br><br>
            
          <div><span id="client-name1">PARTY DETAILS</span></div>
       
            <span id="client-name"><%=name %></span><br>
         
          
         
            <span><%=address %></span><br>
        
          
         
           <span id="invoice">GSTIN -</span><span><%=gstin %><span id="invoice1"></span></span>
          
          
      
          </div>

          <div id="invoice-title-number"><div id="title">INVOICE</div></div><br>
          </section>
          

        
        
        <div class="clearfix"></div>

        <div class="currency">
          <span>*all prices in </span> <span>Rupees</span>
        </div>
        
        <script>
       {
        	var s_no=0;
        	var num=0;
            
            function addRow()
            {
                // get input values
                var fname = document.getElementById('fname').value;
                 var lname = document.getElementById('lname').value;
                  var age = document.getElementById('age').value;
                  
                  // get the html table
                  // 0 = the first table
                  var table = document.getElementsByTagName('table')[0];
                  
                  // add new empty row to the table
                  // 0 = in the top 
                  // table.rows.length = the end
                  // table.rows.length/2+1 = the center
                  var newRow = table.insertRow(table.rows.length);
                  
                  // add cells to the row
                  var cel1 = newRow.insertCell(0);
                  var cel2 = newRow.insertCell(1);
                  var cel3 = newRow.insertCell(2);
                  var cel4 = newRow.insertCell(3);
                  var cel5 = newRow.insertCell(4);
                  var cel6 = newRow.insertCell(5);
                  
                  s_no=s_no+1;
				age1=parseInt(age);
				lname1=parseInt(lname);
                  
                  num= num + lname1*age1;
                  num1 = num*0.025;
                  num2 = num+num*0.05;
                  
                  // add values to the cells
                  
                  cel1.innerHTML = s_no;
                  cel2.innerHTML = fname;
                  cel3.innerHTML = lname;
                  cel4.innerHTML = age;
                  cel5.innerHTML = "0 %";
                  cel6.innerHTML = lname1*age1;
                  
                  
                  
                  $("#msgbox3").fadeTo(200,0.1,function() //start fading the messagebox
	  		            	{
	  		                  //add message and change the class of the box and start fading
	  		                  $(this).html(num).removeClass().addClass('myerror').fadeTo(900,1);
	  		            	});
                  
                  $("#msg1").fadeTo(200,0.1,function() //start fading the messagebox
	  		            	{
	  		                  //add message and change the class of the box and start fading
	  		                  $(this).html(num1).removeClass().addClass('myerror').fadeTo(900,1);
	  		            	});
                  
                  $("#msg2").fadeTo(200,0.1,function() //start fading the messagebox
	  		            	{
	  		                  //add message and change the class of the box and start fading
	  		                  $(this).html(num1).removeClass().addClass('myerror').fadeTo(900,1);
	  		            	});
                  
                  $("#msg3").fadeTo(200,0.1,function() //start fading the messagebox
	  		            	{
	  		                  //add message and change the class of the box and start fading
	  		                  $(this).html(num2).removeClass().addClass('myerror').fadeTo(900,1);
	  		            	});
                  $("#msg4").fadeTo(200,0.1,function() //start fading the messagebox
	  		            	{
	  		                  //add message and change the class of the box and start fading
	  		                  $(this).html(num2).removeClass().addClass('myerror').fadeTo(900,1);
	  		            	});
            }
       }
       
            
        </script>
        
        <section id="items">
          
          <table cellpadding="0" cellspacing="0">
          
            <tr>
              <th></th> <!-- Dummy cell for the row number and row commands -->
              <th>Item</th>
              <th>Quantity</th>
              <th>Unit Price</th>
              <th>Discount(if any)</th>
              <th>Total Taxable Amount</th>
            </tr>
            
           
          </table>
          
        </section>
        
        <section id="sums">
        
          <table cellpadding="0" cellspacing="0">
            <tr>
              <th>Subtotal</th>
              <td id=msgbox3></td>
            </tr>
            
            <tr data-iterate="tax">
              <th>cgst @ 2.5%</th>
              <td id=msg1></td>
            </tr>
            <tr data-iterate="tax">
              <th>sgst @ 2.5%</th>
              <td id=msg2></td>
            </tr>
            
            <tr class="amount-total">
              <!-- {amount_total_label} -->
              <td colspan="2" id=msg3></td>
            </tr>
            
            <!-- You can use attribute data-hide-on-quote="true" to hide specific information on quotes.
                 For example Invoicebus doesn't need amount paid and amount due on quotes  -->
            <tr data-hide-on-quote="true">
              <th>Paid</th>
              <td>0</td>
            </tr>
            
            <tr data-hide-on-quote="true" class="due-amount">
              <th>Due sum</th>
              <td id=msg4></td>
            </tr>
            
          </table>
          
        </section>
        
        <div class="clearfix"></div>
        
        <section id="terms">
        
          <span>TERMS</span>
          <div>Thankyou, for puchasing with us.<br> Please make payments within 15 days.<br>
          Any disputes subject to indore jurisdiction only.</div>
          
        </section>

        <div class="payment-info">
          <div>PAYMENTS</div>
          <div>Account Number <i class="fa fa-circle"></i> 123006705</div>
          <div>IBAN <i class="fa fa-circle"></i> US100000060345</div>
          <div></div>
          <div></div>
        </div>
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
