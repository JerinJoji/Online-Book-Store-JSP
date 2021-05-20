<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>  

<%
	String payment = request.getParameter("paymentmethod");
	String cusid = session.getAttribute("CusID").toString();

	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("update cart set PaymentMethod='"+payment+"' where CusID='"+cusid+"' and Status='Bill'");
		response.sendRedirect("bill.jsp");
	}catch(Exception e){
		
	}
%>