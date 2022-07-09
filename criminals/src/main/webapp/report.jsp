<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <% 	String name=request.getParameter("name");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String msg=request.getParameter("message");
String noe=request.getParameter("nameofemployee");
String dloc=request.getParameter("locinc");
String ppl=request.getParameter("nameofppl");
String rep=request.getParameter("yes"); 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	//change name of db stored
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/criminal_db","root","");
	PreparedStatement psd=con.prepareStatement("insert into complaint(name,email,phone,message,nameofemployee,locinc,nameppl,reported) values(?,?,?,?,?,?,?,?)");
    psd.setString(1,name);
	psd.setString(2,email);
	psd.setString(3,phone);
	psd.setString(4, msg);
	psd.setString(5,noe);
	psd.setString(6,dloc);
	psd.setString(7,ppl);
	psd.setString(8,rep);
	int x=psd.executeUpdate();
	if(x>0) out.println("Complaint Filed Successfully");
	else
	out.println("Server error");
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
