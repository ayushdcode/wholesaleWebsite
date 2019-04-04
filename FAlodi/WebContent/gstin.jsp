
<%@page import="edu.com.DBHepler"%>
<% 
     String party_name=request.getParameter("party_name");
	String gstin=request.getParameter("gstin");
    try{
    	
    	DBHepler db=new DBHepler();
    	int count=db.addGstin(party_name,gstin);
    	if(count>0)
    	{
    		out.print("Welcome "+party_name+" you succesfully registered..");
    	}
    	
    }
    catch(Exception e){
    	
    	out.print(1);
        
    	
    }
%>