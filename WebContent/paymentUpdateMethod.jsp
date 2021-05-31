<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>  

<%
	String payment = request.getParameter("paymentmethod");
	String fullname = request.getParameter("fullname");
	String phone = request.getParameter("phone");
	String adr = request.getParameter("adr");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pincode = request.getParameter("pincode");
	String cusid = session.getAttribute("CusID").toString();

	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		st.executeUpdate("update cart set PaymentMethod='"+payment+"', ShipCName='"+fullname+"', ShipCPhone='"+phone+"', ShipCAdr='"+adr+"', ShipCCity='"+city+"', ShipCState='"+state+"', ShipCPin='"+pincode+"' where CusID='"+cusid+"' and Status='Bill'");
		response.sendRedirect("bill.jsp");
	}catch(Exception e){
		
	}
%>