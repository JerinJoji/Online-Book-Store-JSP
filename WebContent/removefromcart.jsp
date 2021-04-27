<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	
    
<%
String cusid = session.getAttribute("CusID").toString();
String book_id = request.getParameter("bookid");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("delete from cart where Book_ID='"+book_id+"' and CusID='"+cusid+"' and Status='Added to Cart'");
	response.sendRedirect("cart.jsp");
}catch(Exception e){
	System.out.println(e);
}
%>