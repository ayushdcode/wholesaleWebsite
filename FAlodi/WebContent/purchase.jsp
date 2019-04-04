<%@page import="edu.com.Sale"%>
<%@page import="edu.com.DBHepler"%>
<%


%>
<% 

String gstin="";

String name=request.getParameter("name1");
try{
	DBHepler db=new DBHepler();
	Sale e=db.getGstinInfo1(name);
	if(e!=null)
	{
		gstin=e.getGstin();
		
	}
	else{
	}
		
	
}
catch(Exception ex){
	
}
     String date=request.getParameter("date1");
    int  invoice=Integer.parseInt(request.getParameter("invoice1"));
    int  hsn_code=Integer.parseInt(request.getParameter("hsn_code"));
    
    double amount=Float.parseFloat(request.getParameter("amount1"));
    double cgst=0;
    double tgst=amount*0.05;
    double value=amount+amount*0.05;
    if(gstin==null || gstin=="")
    { 	
   	out.print(1);
    }
    else{
    	 try{
    	    	
    	    	DBHepler db=new DBHepler();
    	    	int count=db.addPurchase(date,name,gstin,invoice,hsn_code,amount,cgst,cgst,tgst,tgst,value);
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
    }
%>
