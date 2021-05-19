<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%> 
<%
String cusid = session.getAttribute("CusID").toString();

String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String housebuilding = request.getParameter("house");
String street = request.getParameter("street");
String location = request.getParameter("location");
String pincode = request.getParameter("pincode");
String city = request.getParameter("city");
String state = request.getParameter("state");
String email = request.getParameter("email");
String phonenum = request.getParameter("phone");
String password = request.getParameter("password");

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update customer set FirstName='"+firstname+"',LastName='"+lastname+"',HouseBuilding='"+housebuilding+"',StreetName='"+street+"',Location='"+location+"',Pincode='"+pincode+"',City='"+city+"',State='"+state+"',Email='"+email+"',PhoneNumber='"+phonenum+"',Password='"+password+"' where CustomerId='"+cusid+"'");
	response.sendRedirect("products.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>