<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%
String sellid = request.getParameter("sellid");
String bookname,author,publisher,genre,subject,isbn,price,bookimage,path;

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("SELECT * FROM sellrequest where SellID="+sellid+" and SellStatus='Accepted'");
	if(rs.next()){
		PreparedStatement ps = con.prepareStatement("insert into books(BookName,Author,Publisher,Genre,Subject,ISBN,BookPrice,Active,Bookimage,Path) VALUES(?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, rs.getString(3));
		ps.setString(2, rs.getString(4));
		ps.setString(3, rs.getString(5));
		ps.setString(4, rs.getString(6));
		ps.setString(5, rs.getString(7));
		ps.setString(6, rs.getString(8));
		ps.setString(7, rs.getString(9));
		ps.setString(8, "No");
		ps.setString(9, rs.getString(10));
		ps.setString(10, rs.getString(11));
		ps.executeUpdate();
	}
}catch(Exception e){
	System.out.println(e);
}

try{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("update sellrequest set SellStatus='Paid & Recieved' where SellID="+sellid+" and SellStatus='Accepted'");
	response.sendRedirect("admindashboard.jsp");
}
catch(Exception e){
	System.out.println(e);
}
%>