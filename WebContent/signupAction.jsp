<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	

<%	
String firstname = request.getParameter("fname");
String lastname = request.getParameter("lname");
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
	ResultSet rs = st.executeQuery("SELECT * FROM customer where Email = '"+email+"'");
	if(rs.next()){
		response.sendRedirect("account.jsp?rmsg=exists");
	}
	else{
	PreparedStatement ps = con.prepareStatement("insert into customer(FirstName,LastName,HouseBuilding,StreetName,Location,Pincode,City,State,Email,PhoneNumber,Password,DOJ) VALUES(?,?,?,?,?,?,?,?,?,?,?,now())");
	ps.setString(1, firstname);
	ps.setString(2, lastname);
	ps.setString(3, housebuilding);
	ps.setString(4, street);
	ps.setString(5, location);
	ps.setString(6, pincode);
	ps.setString(7, city);
	ps.setString(8, state);
	ps.setString(9, email);
	ps.setString(10, phonenum);
	ps.setString(11, password);
	ps.executeUpdate();
	System.out.println("Registered");
	ResultSet rs1 = st.executeQuery("SELECT * FROM customer where Email = '"+email+"'");
	rs1.next();
	session.setAttribute("email", email);
	session.setAttribute("CusID", rs1.getInt(1));
	response.sendRedirect("products.jsp");
	}
}
catch(Exception e){
	System.out.println(e);
	response.sendRedirect("account.jsp?rmsg=invalid");
}
%>