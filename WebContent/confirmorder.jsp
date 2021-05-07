<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>  

<%
	String cusid = session.getAttribute("CusID").toString();

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update cart set Status='Bill', OrderDate=now(), DeliverDate=DATE_ADD(OrderDate,INTERVAL 7 DAY) where CusID='"+cusid+"' and Status='Added to Cart'");
	System.out.println("Status=bill");
	Statement stt = con.createStatement();
	ResultSet rs2 = stt.executeQuery("SELECT Book_ID FROM cart where CusID ='"+cusid+"' and Status = 'Bill'");
	while(rs2.next()){
		int bookid = rs2.getInt(1);
		st.executeUpdate("update books set Active='No' where BookID="+bookid);
		System.out.println("Changed to NO");
	}
	System.out.println("Order Placed");
	response.sendRedirect("products.jsp");
}catch(Exception e){
	System.out.println(e);
}
%>