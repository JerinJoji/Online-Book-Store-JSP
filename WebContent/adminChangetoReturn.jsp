<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%
String bookid = request.getParameter("bookid");
String custid = request.getParameter("custid");
try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set Status='Returned' where Book_ID="+bookid+" and CusID="+custid+" and Status='Returning'");
}
catch(Exception e){
	System.out.println(e);
}

try{
	Connection conn = ConnectionProvider.getCon();
	Statement stt = conn.createStatement();
	stt.executeUpdate("update books set Active='Yes' where BookID="+bookid);
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>