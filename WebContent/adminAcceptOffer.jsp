<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%
String sellid = request.getParameter("sellid");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update sellrequest set SellStatus='Accepted', SellDate=now() where SellID="+sellid+" and SellStatus='Pending'");
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>