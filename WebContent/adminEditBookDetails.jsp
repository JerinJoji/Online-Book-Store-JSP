<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%> 
<%
String bookid = request.getParameter("bookid");
String bookname = request.getParameter("bookname");
String bookauthor = request.getParameter("bookauthor");
String bookpublisher = request.getParameter("bookpublisher");
String bookgenre = request.getParameter("bookgenre");
String booksubject = request.getParameter("booksubject");
String bookisbn = request.getParameter("bookisbn");
String bookprice = request.getParameter("bookprice");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update books set BookName='"+bookname+"',Author='"+bookauthor+"',Publisher='"+bookpublisher+"',Genre='"+bookgenre+"',Subject='"+booksubject+"',ISBN='"+bookisbn+"',BookPrice='"+bookprice+"' where BookID="+bookid);
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>