<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%> 
<%
String sellid = request.getParameter("sellid");
String sbookprice = request.getParameter("sbookprice");
String scustdesp = request.getParameter("scustdesp");


try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update sellrequest set SBookPrice='"+sbookprice+"',SCustDesp='"+scustdesp+"', SellStatus='Pending' where SellID="+sellid);
	response.sendRedirect("orders.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>