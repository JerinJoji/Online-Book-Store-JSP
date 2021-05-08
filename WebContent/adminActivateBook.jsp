<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%
String bookid = request.getParameter("bookid");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update books set Active='Yes' where BookID="+bookid+" and Active='No'");
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>