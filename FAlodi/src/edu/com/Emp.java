package edu.com;

public class Emp {
	private String eid;
private String name;
public Emp(String eid, String name,String sal) {
	super();
	this.eid = eid;
	this.name = name;
	this.sal=sal;
}
public String getEid() {
	return eid;
}
public void setEid(String eid) {
	this.eid = eid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getSal() {
	return sal;
}
public void setSal(String sal) {
	this.sal = sal;
}
private String sal;
}
