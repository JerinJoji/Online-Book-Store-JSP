<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>

<%

		String id = request.getParameter("orderid");
		
		try{
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from cart join customer on cart.CusID=customer.CustomerId join books on books.BookID=cart.Book_ID where cart.OrderID="+id);
			while(rs.next()){
%>
				<table class="table table-striped table-bordered">
  					<tr>
    					<th>Order ID</th>
    					<td><%=rs.getString("OrderID")%></td>
  					</tr>
  					
  					<tr>
    					<th>Book Name</th>
    					<td><%=rs.getString("BookName")%></td>
  					</tr>
  					
  					<tr>
    					<th>Customer Name</th>
    					<td><%=rs.getString("ShipCName")%></td>
  					</tr>
  					
  					<tr>
    					<th>Order Date</th>
    					<td><%=rs.getString("OrderDate")%></td>
  					</tr>
  					
  					<tr>
    					<th>Price</th>
    					<td>&#8377;<%=rs.getString("Price")%></td>
  					</tr>
  					
  					<tr>
    					<th>Phone Number</th>
    					<td><%=rs.getString("ShipCPhone")%></td>
  					</tr>
  					
  					<tr>
    					<th>Shipping Address</th>
    					<td><%=rs.getString("ShipCAdr")%>,<br><%=rs.getString("ShipCCity")%>, <%=rs.getString("ShipCState")%> - <%=rs.getString("ShipCPin")%></td>
  					</tr>
  					
  					<tr>
    					<th>Billing Address</th>
    					<td><%=rs.getString("HouseBuilding")%>, <%=rs.getString("Location")%>, <%=rs.getString("StreetName")%><br><%=rs.getString("City")%>, <%=rs.getString("State")%> - <%=rs.getString("Pincode")%></td>
  					</tr>
  					
  					<tr>
    					<th>Payment Method</th>
    					<td><%=rs.getString("PaymentMethod")%></td>
  					</tr>
  					
  					<tr>
    					<th>Order Status</th>
    					<td><b><%=rs.getString("Status")%></b></td>
  					</tr>
  					
  				</table>
<%
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
%>