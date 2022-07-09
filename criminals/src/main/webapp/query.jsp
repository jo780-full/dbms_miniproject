<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Query Bar</title>
</head>
<body>
<form action="query.jsp" action="post">
<input type="text" name="query">
<input type="submit" value="Submit Query">


</form>
              <%
            Connection con;
           PreparedStatement pst,psd,psl;
           ResultSet rs,rt,rr;
           try{
        	   Class.forName("com.mysql.cj.jdbc.Driver");
       		con = DriverManager.getConnection("jdbc:mysql://localhost/criminal_db","root","");
       	String Query = request.getParameter("query");
       	String Query1="select c.*,o.*,co.* from criminals c,officer o,complaint co  where c.criminal_name= '"+Query+"' or  o.name='"+Query+"' or co.name='"+Query+"'" ;
    	
        	   psd=con.prepareStatement(Query1);
        	 
        	   
        	   rs=psd.executeQuery();
        
        	   if(rs.next())
        	   {
        		   while(rs.next())
        		   {
        			%>
        			
        			<table>

        			<tr>
        			
        			<td><%out.print(rs.getString("cid"));%></td>
  <td><%out.print(rs.getString("pid"));%></td>
<td><%out.print(rs.getString("criminal_name"));%></td> 
<td><%out.print(rs.getString("age"));%></td>
<td><%out.print(rs.getString("weight"));%></td> 
<td><%out.print(rs.getString("crime_committed"));%></td>
<td><%out.print(rs.getString("judicial_status"));%></td>
<td><%out.print(rs.getString("phone"));%></td>
<td><%out.print(rs.getString("comp_id"));%></td>
<td><%out.print(rs.getString("uidm"));%></td>
 <td><%out.print(rs.getString("arrested_by"));%></td> 
 <td><%out.print(rs.getString("eyecolor"));%></td>
  <td><%out.print(rs.getString("status_aftercrime"));%></td>
  	
        </tr>
        <tr>
        	<td><%out.print(rs.getString("name"));%></td>
  <td><%out.print(rs.getString("email"));%></td>
<td><%out.print(rs.getString("phone"));%></td> 
<td><%out.print(rs.getString("designation"));%></td>
<td><%out.print(rs.getString("date_of_joining"));%></td> 
<td><%out.print(rs.getString("academy"));%></td>
<td><%out.print(rs.getString("station_name"));%></td>
<td><%out.print(rs.getString("station_ID"));%></td>
<td><%out.print(rs.getString("pid"));%></td>

</tr>
<tr>
 <td><%out.print(rs.getString("name"));%></td>
  <td><%out.print(rs.getString("email"));%></td>
<td><%out.print(rs.getString("phone"));%></td> 
<td><%out.print(rs.getString("message"));%></td> 
<td><%out.print(rs.getString("nameofemployee"));%></td>
<td><%out.print(rs.getString("locinc"));%></td>
<td><%out.print(rs.getString("nameppl"));%></td>
<td><%out.print(rs.getString("reported"));%></td>
<td><%out.print(rs.getString("comp_id"));%></td>
<td><%out.print(rs.getString("pid"));%></td>
<td><%out.print(rs.getString("cid"));%></td>
  </tr>
        			</table>
        			
        			
        		
        				
        		
        	
  
  <%}
        	   }   }
           catch(Exception e)
           {
        	   e.printStackTrace();
        	   
           }
        	   
        		   %>
        			
        		
</body>
</html>