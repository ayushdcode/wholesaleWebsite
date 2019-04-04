<%@page import="edu.com.Emp"%>
<%@page import="edu.com.DBHepler"%>
<% 
String  id=request.getParameter("un");
String  pass=request.getParameter("pw");
String name="";
    try{
    	DBHepler db=new DBHepler();
    	Emp e=db.getEmpInfo(id,pass);
    	if(e!=null)
    	{
    		name=e.getName();
    		out.print(name);
    		
    	   	
    		
    	}
    	else{
    		out.print(1); 
    	}
    		
    	
    }
    catch(Exception ex){
    	
    	out.print(1);
    
    	
    }
 
	

     
    

%>