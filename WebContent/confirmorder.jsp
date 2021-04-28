<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>  

<%
	String cusid = session.getAttribute("CusID").toString();

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set Status='Order Placed', OrderDate=now(), DeliverDate=DATE_ADD(OrderDate,INTERVAL 7 DAY) where CusID='"+cusid+"' and Status='Added to Cart'");
	response.sendRedirect("products.jsp");
}catch(Exception e){
	System.out.println(e);
}
%>