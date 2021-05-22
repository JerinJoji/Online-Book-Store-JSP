<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%> 
<%
String sellid = request.getParameter("sellid");
String sbookprice = request.getParameter("sbookprice");
String sadmindesp = request.getParameter("sadmindesp");


try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update sellrequest set SBookPrice='"+sbookprice+"',SAdminDesp='"+sadmindesp+"', SellStatus='Negotiated' where SellID="+sellid);
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>