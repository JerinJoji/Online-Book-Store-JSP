<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>  

<%
try{
	String cusid = session.getAttribute("CusID").toString();
	String book_id = request.getParameter("bookid");
	String price = request.getParameter("price");
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into cart(CusID,Book_ID,Quantity,Price,Status) VALUES(?,?,?,?,?)");
	ps.setString(1, cusid);
	ps.setString(2, book_id);
	ps.setString(3, "1");
	ps.setString(4, price);
	ps.setString(5, "Added to Cart");
	ps.executeUpdate();
	System.out.println("Added to cart");
	response.sendRedirect("products.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>