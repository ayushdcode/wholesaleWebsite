package edu.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBHepler {
	Connection conn;
	Statement  st;
	PreparedStatement pst;
	final String URL="jdbc:mysql://localhost:3306/indorecity1";
	public Connection getMyConnection() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		return DriverManager.getConnection(URL, "root","ayuaksh");
	}
	public int addEmp(String i,String name,String sal) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO emp VALUES('%s','%s','%s')", i,name,sal);
		return st.executeUpdate(q);
	}
	public Emp getEmpInfo(String id,String pass) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("SELECT *FROM emp WHERE eid='%s'AND sal='%s'" , id ,pass);
		ResultSet rs=st.executeQuery(q);
		if(rs.next())
		   return new Emp(rs.getString(1),rs.getString(2),rs.getString(3));
		return null;
	}
	
	public int addSale(String date,String name,String gstin,int invoice,double value,double cgst,double sgst,double tgst,double invoice_value) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO sale(invoice_date,party_name,gstin,invoice_no,taxable_value,cgst,sgst,total_gst,invoice_value) VALUES('%s','%s','%s',%d,%f,%f,%f,%f,%f)",date,name,gstin,invoice,value,cgst,sgst,tgst,invoice_value );
		return st.executeUpdate(q);
	}
	
	public Sale getGstinInfo(String name) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("SELECT *FROM gstin WHERE party_name='%s'" , name);
		ResultSet rs=st.executeQuery(q);
		if(rs.next())
		   return new Sale(rs.getString(1),rs.getString(2));
		return null;
	}
	
	public int addGstin(String party_name,String gstin) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO gstin VALUES('%s','%s')",party_name,gstin);
		return st.executeUpdate(q);
	}
	
	public int addPurchase(String date,String name,String gstin,int invoice,int hsn_code,double value,double cgst,double sgst,double igst,double tgst,double invoice_value) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO buy(invoice_date,party_name,gstin,invoice_no,hsn_code,taxable_value,cgst,sgst,igst,total_gst,invoice_value) VALUES('%s','%s','%s',%d,%d,%f,%f,%f,%f,%f,%f)",date,name,gstin,invoice,hsn_code,value,cgst,sgst,igst,tgst,invoice_value );
		return st.executeUpdate(q);
	}
	public Sale getGstinInfo1(String name) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("SELECT *FROM gstin1 WHERE party_name='%s'" , name);
		ResultSet rs=st.executeQuery(q);
		if(rs.next())
		   return new Sale(rs.getString(1),rs.getString(2));
		return null;
	}
	public int addGstin1(String party_name,String gstin) throws Exception
	{
		conn=getMyConnection();
		st=conn.createStatement();
		String q=String.format("INSERT INTO gstin1 VALUES('%s','%s')",party_name,gstin);
		return st.executeUpdate(q);
	}
	
	 public ResultSet getAllUsers()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("SELECT *FROM sale");
	  	return pst.executeQuery();
	  }
	 
	 public ResultSet getAllPurchase()throws Exception
	  {
	  	conn=getMyConnection();
	  	pst=conn.prepareStatement("SELECT *FROM buy");
	  	return pst.executeQuery();
	  }
	
	

}
