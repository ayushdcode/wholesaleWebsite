
<%@page import="edu.com.DBHepler"%>
<% 
String msg="";
     String i=request.getParameter("usrname");
	String name=request.getParameter("fullname");
    String sal=request.getParameter("psw");
    try{
    	
    	DBHepler db=new DBHepler();
    	int count=db.addEmp(i, name, sal);
    	if(count>0)
    	{
    		out.print("Welcome "+name+" you succesfully registered.. now login..");
    	}
    	
    }
    catch(Exception e){
    	
    	out.print(1);
        
    	
    }
%>


<h2 style="color:red"><%=msg %></h2>