<%@page import="edu.com.Sale"%>
<%@page import="edu.com.DBHepler"%>

<% 

String gstin="";

String name=request.getParameter("name");
try{
	DBHepler db=new DBHepler();
	Sale e=db.getGstinInfo(name);
	if(e!=null)
	{
		gstin=e.getGstin();
		
	}
	else{
	}
		
	
}
catch(Exception ex){
	
}
     String date=request.getParameter("date");
    int  invoice=Integer.parseInt(request.getParameter("invoice"));
    double amount=Float.parseFloat(request.getParameter("amount"));
    double cgst= amount*0.025;
    double tgst=amount*0.05;
    double value=amount+amount*0.05;
    if(gstin==null || gstin=="")
    { 	
   	out.print(1);
    }
    else{
    	 try{
    	    	
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
    }
%>
