<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%

		String id = request.getParameter("custid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("SELECT * FROM customer WHERE CustomerId="+id);
			while(rs.next()){
%>
				<table class="table table-striped table-bordered">
  					<tr>
    					<th>Customer ID</th>
    					<td><%=rs.getString("CustomerId")%></td>
  					</tr>
  					
  					<tr>
    					<th>Customer Name</th>
    					<td><%=rs.getString("FirstName")%> <%=rs.getString("LastName")%></td>
  					</tr>
  					
  					<tr>
    					<th>Address</th>
    					<td><%=rs.getString("HouseBuilding")%>,<%=rs.getString("Location")%>,<%=rs.getString("StreetName")%></td>
  					</tr>
  					
  					<tr>
    					<th>City</th>
    					<td><%=rs.getString("City")%></td>
  					</tr>
  					
  					<tr>
    					<th>State</th>
    					<td><%=rs.getString("State")%></td>
  					</tr>
  					
  					<tr>
    					<th>Email</th>
    					<td><%=rs.getString("Email")%></td>
  					</tr>
  					
  					<tr>
    					<th>Phone Number</th>
    					<td><%=rs.getString("PhoneNumber")%></td>
  					</tr>
  				</table>
<%
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
%>