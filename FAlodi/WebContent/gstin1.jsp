
<%@page import="edu.com.DBHepler"%>
<% 
     String party_name=request.getParameter("party_name1");
	String gstin=request.getParameter("gstin1");
    try{
    	
    	DBHepler db=new DBHepler();
    	int count=db.addGstin1(party_name,gstin);
    	if(count>0)
    	{
    		out.print("Welcome "+party_name+" you succesfully registered..");
    	}
    	
    }
    catch(Exception e){
    	
    	out.print(1);
        
    	
    }
%>