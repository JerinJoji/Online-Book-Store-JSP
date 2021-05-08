<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	
    
<%
String custid = request.getParameter("custid");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from customer where CustomerId="+custid);
	response.sendRedirect("admindashboard.jsp");
}catch(Exception e){
	System.out.println(e);
}
%>