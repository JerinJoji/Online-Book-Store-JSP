<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Random"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Admin Dashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
	
	<link rel="stylesheet" href="css/style.css">
	<script>
		if(window.history.forward(1) != null)
			window.history.forward(1);
	</script>
</head>
<body class="body-admin">
	<div class="container-admin">
		<div class="navigation_admin">
			<ul>
				<li>
					<a href="admindashboard.jsp">
						<span class="icon-admin"><i class="fa fa-book" aria-hidden="true"></i></span>
						<span class="title-admin"><h2>PustaakShala</h2></span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp">
						<span class="icon-admin"><i class="fa fa-home" aria-hidden="true"></i></span>
						<span class="title-admin">Dashboard</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#customers">
						<span class="icon-admin"><i class="fa fa-users" aria-hidden="true"></i></span>
						<span class="title-admin">Customers</span>
					</a>
				</li>
				<!--<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-plus" aria-hidden="true"></i></span>
						<label for="show"><span class="title-admin">Add/Edit Books</span></label>
					</a>
				</li>-->
				<li>
					<a href="" data-toggle="modal" data-target="#add-modal-form" id="" class="addBook">
						<span class="icon-admin"><i class="fa fa-plus" aria-hidden="true"></i></span>
						<span class="title-admin">Add Books</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#orders">
						<span class="icon-admin"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
						<span class="title-admin">Orders</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#books">
						<span class="icon-admin"><i class="fa fa-book" aria-hidden="true"></i></span>
						<span class="title-admin">Books</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#Selling">
						<span class="icon-admin"><i class="fa fa-paper-plane" aria-hidden="true"></i></span>
						<span class="title-admin">Sell Requests</span>
					</a>
				</li>
				<li>
					<a href="logout.jsp">
						<span class="icon-admin"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
						<span class="title-admin">Sign Out</span>
					</a>
				</li>
			</ul>
		</div>

		<%
		try{ 
			int sum = 0;
			Connection con = ConnectionProvider.getCon();
			Statement st = con.createStatement();
		%>
		<div class="main_admin">
			<div class="topbar_admin">
				<div class="toggle_admin" onclick="toggleMenu();"></div>
				<div class="search-admin">
					<label>
						<input type="text" placeholder="Search here">
						<i class="fa fa-search" aria-hidden="true"></i>
					</label>
				</div>
				<div class="user-admin">
						<img src="assets/user.jpg">
				</div>
			</div>

			<div class="cardBox-admin">
				<%
				ResultSet rs = st.executeQuery("SELECT count(*) FROM customer;");
				if(rs.next()){
				%>
				<div class="card-admin">
					<div>
						<div class="numbers-admin"><%= rs.getString(1) %></div>
						<div class="cardName-admin">Number of Customers</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-users" aria-hidden="true"></i>
					</div>
				</div>
				<%} %>
				<%
				ResultSet rs1 = st.executeQuery("SELECT count(*) FROM cart where Status!='Added to Cart'");
				if(rs1.next()){
				%>
				<div class="card-admin">
					<div>
						<div class="numbers-admin"><%= rs1.getString(1) %></div>
						<div class="cardName-admin">Number of Orders</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
				</div>
				<%} %>
				<%
				ResultSet rs2 = st.executeQuery("SELECT count(*) FROM books;");
				if(rs2.next()){
				%>
				<div class="card-admin">
					<div>
						<div class="numbers-admin"><%= rs2.getInt(1) %></div>
						<div class="cardName-admin">Number Of Books</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-book" aria-hidden="true"></i>
					</div>
				</div>
				<%} %>
				<%
				ResultSet rs3 = st.executeQuery("SELECT sum(Price) FROM cart where Status!='Added to Cart' and Status!='Returned'");
				if(rs3.next()){
					sum= rs3.getInt(1);
				%>
				<div class="card-admin">
					<div>
						<div class="numbers-admin">&#8377;<%= sum %></div>
						<div class="cardName-admin">Orders Earnings</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-inr" aria-hidden="true"></i>
					</div>
				</div>
				<%} %>
				<%
				}catch(Exception e){
					System.out.println(e);
				}
				%>
			</div>

			<div class="details-admin">
				<div class="recentOrders-admin" id="recentorders">
					<div class="cardHeader-admin">
						<h2>Recent Orders</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Name</td>
								<td>Price</td>
								<td>Payment</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs4 = st.executeQuery("SELECT * FROM cart join books on cart.Book_ID = books.BookID where cart.Status!='Added to Cart' and cart.Status!='Bill' order by OrderDate desc;");
						while(rs4.next()){
							int bookid = rs4.getInt(2);
							String status = rs4.getString("Status");  
						%>
							<tr>
								<td><%= rs4.getString("BookName") %></td>
								<td>&#8377;<%= rs4.getString("Price") %></td>
								<td><%= rs4.getString("PaymentMethod") %></td>
								<%
								if("Delivered".equals(status))
								{
								%>
								<td><span class="status-admin delivered">Delivered</span></td>
								<%} %>
								<%
								if("Order Confirmed".equals(status))
								{
								%>
								<td><span class="status-admin inprogress">Order Confirmed</span></td>
								<%} %>
								<%
								if("In Progress".equals(status))
								{
								%>
								<td><span class="status-admin pending">In Progress</span></td>
								<%} %>
								<%
								if("Returned".equals(status))
								{
								%>
								<td><span class="status-admin return">Returned</span></td>
								<%} %>
								<%
								if("Returning".equals(status))
								{
								%>
								<td><span class="status-admin pending">Returning</span></td>
								<%} %>
							</tr>
						<%}}catch(Exception e){
							System.out.println(e);
						}
						%>
						</tbody>
					</table>
				</div>

				<div class="recentCustomers-admin" id="recentcustomer">
					<div class="cardHeader-admin">
						<h3>Recent Customers</h3>
					</div>
					<table>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs5 = st.executeQuery("SELECT FirstName, LastName, City, State FROM customer order by DOJ desc;");
						while(rs5.next()){  
						%>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/user.jpg"></div></td>
								<td><h4><%= rs5.getString(1) %> <%= rs5.getString(2) %><br><span><%= rs5.getString(3) %>, <%= rs5.getString(4) %></span></h4></td>
							</tr>
						<%}}catch(Exception e){
							System.out.println(e);
						}
						%>
						</tbody>
					</table>
				</div>
				
				
				<div class="recentOrders-admin" id="books">
					<div class="cardHeader-admin">
						<h2>Books</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Book ID</td>
								<td>Book Name</td>
								<td>Price</td>
								<td>Active</td>
								<td>Edit</td>
								<td>Action</td>
							</tr>
						</thead>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs6 = st.executeQuery("SELECT * FROM books");
						while(rs6.next()){
							String active = rs6.getString(9);
						%>
							<tr>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal1" id="<%= rs6.getString(1) %>" class="getBookdata"><%= rs6.getString(1) %></a></td>
								<td><%= rs6.getString(2) %></td>
								<td><%= rs6.getString(8) %></td>
								<td><%= rs6.getString(9) %></td>
								<td><h3><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal-form" id="<%= rs6.getString(1) %>" class="editBookdetails">Edit</a></h3></td>
								<td>
								<%if(active.equals("No")){%>
								<h3><a href="adminActivateBook.jsp?bookid=<%=rs6.getString(1) %>" style="font-size: 16px;">Active</a></h3>
								<%}else{ %>
								<h3><a href="adminDeactivateBook.jsp?bookid=<%=rs6.getString(1) %>" style="font-size: 16px;">Deactive</a></h3>
								<%} %>
								</td>
							</tr>
						<%}}catch(Exception e){
							System.out.println(e);
						}
						%>
						</tbody>
					</table>
				</div>
				
				<div class="recentCustomers-admin">
					<!--<div class="cardHeader-admin">
						<h2>Recent Customers</h2>
					</div>
					<table>
						<tbody>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Rock<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Brad<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
						</tbody>
					</table>-->
				</div>
				
				<div class="recentOrders-admin" id="customers">
					<div class="cardHeader-admin">
						<h2>Customers</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Customer ID</td>
								<td>Name</td>
								<td>Email</td>
								<td>Phone</td>
								<td>Date of Signing</td>
								<td>Action</td>
							</tr>
						</thead>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs7 = st.executeQuery("SELECT * FROM customer");
						while(rs7.next()){
						%>
							<tr>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal" id="<%= rs7.getString(1) %>" class="getCustomerdata"><%= rs7.getString(1) %></a></td>
								<td><%= rs7.getString(2) %> <%= rs7.getString(3) %></td>
								<td><%= rs7.getString(10) %></td>
								<td><%= rs7.getString(11) %></td>
								<td><%= rs7.getString(13) %></td>
								<td>
								<h3><a href="adminDeleteCustomer.jsp?custid=<%=rs7.getString(1) %>" style="font-size: 16px;">Delete</a></h3>
								</td>
							</tr>
						<%}}catch(Exception e){
							System.out.println(e);
						}
						%>
						</tbody>
					</table>
				</div>
				
				
				<div class="recentCustomers-admin">
					<!--<div class="cardHeader-admin">
						<h2>Recent Customers</h2>
					</div>
					<table>
						<tbody>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Rock<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Brad<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
						</tbody>
					</table>-->
				</div>
				
				
				<div class="recentOrders-admin" id="orders">
					<div class="cardHeader-admin">
						<h2>Orders</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Order ID</td>
								<td>Customer ID</td>
								<td>Book ID</td>
								<td>Price</td>
								<td>Order Date</td>
								<td>Status</td>
								<td>Action</td>
							</tr>
						</thead>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs8 = st.executeQuery("SELECT * FROM cart where Status!='Added to Cart'");
						while(rs8.next()){
							String status = rs8.getString(5);
						%>
							<tr>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal3" id="<%= rs8.getString(3) %>" class="getOrderdata"><%= rs8.getString(3) %></a></td>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal" id="<%= rs8.getString(1) %>" class="getCustomerdata"><%= rs8.getString(1) %></a></td>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal1" id="<%= rs8.getString(2) %>" class="getBookdata"><%= rs8.getString(2) %></a></td>
								<td>&#8377;<%= rs8.getString(4) %></td>
								<td><%= rs8.getString(6) %></td>
								<td><%= rs8.getString(5) %></td>
								<td>
								<%if(status.equals("Order Confirmed")){ %>
								<h3><a href="adminChangetoInProgress.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>" style="font-size: 16px;">In Progress</a></h3>
								<%}
								if(status.equals("In Progress")){ %>
								<h3><a href="adminChangetoDeliver.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>" style="font-size: 16px;">Delivered</a></h3>
								<%}
								if(status.equals("Returning")){ %>
								<h3><a href="adminChangetoReturn.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>" style="font-size: 16px;">Returned</a></h3>
								<%} %>
								</td>
							</tr>
						<%}}catch(Exception e){
							System.out.println(e);
						}
						%>
						</tbody>
					</table>
				</div>
				
				<div class="recentCustomers-admin">
					<!--<div class="cardHeader-admin">
						<h2>Recent Customers</h2>
					</div>
					<table>
						<tbody>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Rock<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Brad<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
						</tbody>
					</table>-->
				</div>
				
				<div class="recentOrders-admin" id="Selling">
					<div class="cardHeader-admin">
						<h2>Selling Requests</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Sell ID</td>
								<td>Book Name</td>
								<td>Customer</td>
								<td>Expected Price</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody>
						<%
						try{
						Connection con = ConnectionProvider.getCon();
						Statement st = con.createStatement();
						ResultSet rs9 = st.executeQuery("SELECT * FROM sellrequest");
						while(rs9.next()){
							String status = rs9.getString(12);
						%>
							<tr>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal2" id="<%= rs9.getString(1) %>" class="getSelldata"><%= rs9.getString(1) %></a></td>
								<td><%= rs9.getString(3) %></td>
								<td><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#view-modal" id="<%= rs9.getString(2) %>" class="getCustomerdata"><%= rs9.getString(2) %></a></td>
								<td>&#8377;<%= rs9.getString(9) %></td>
								<%
								if(status.equals("Pending")){
								%>
								<td>
								<h3><a href="" style="font-size: 16px;" data-toggle="modal" data-target="#nego-modal-form" id="<%= rs9.getString(1) %>" class="negooffer">Action</a></h3>
								</td>
								<%}
								else if(status.equals("Accepted")){
								%>
								<td><h3><a href="adminSoldBookReceived.jsp?sellid=<%=rs9.getString(1) %>" style="font-size: 16px;">Received</a></h3></td>
								<%} 
								else if(status.equals("Declined")){
								%>	
								<td>Declined</td>
								<%}
								else if(status.equals("Negotiated")){
								%>	
								<td>New Offer Sent</td>
								<%}
								else{%>
								<td>Paid & Received</td>
								<%} %>
							</tr>
						<%}}
						catch(Exception e){
							System.out.println(e);
						}%>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

<!---------- Form to Add New Books----------->
	<div class="center-admin-form1">
		<input type="checkbox" id="show">
		<!-- <label for="show" class="show-btn">View Form</label> <!-- Keeping a label as a button for testing purpose -->
		<div class="container-admin-form1">
			<label for="show" class="close-btn fa fa-times"></label>
			<div class="text-admin-form1">Add Books</div>
			<form action="AdminAddBooks" method="post" enctype="multipart/form-data">
				<div class="data-admin-form1">
					<label>Book name</label>
					<input type="text" name="bookname" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Author</label>
					<input type="text" name="bookauthor" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Publisher</label>
					<input type="text" name="bookpublisher" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Genre</label>
					<select name = "bookgenre">
						<option>Examination</option>
						<option>Guide Book</option>
						<option>Question Paper Set</option>
					</select>
				</div>
				<div class="data-admin-form1">
					<label>Book Subject</label>
					<select name="booksubject">
						<option>Railway</option>
						<option>Defence</option>
						<option>Government</option>
						<option>Medical</option>
						<option>Education</option>
						<option>Banking</option>
						<option>Law</option>
						<option>Engineering</option>
					</select>
				</div>
				<div class="data-admin-form1">
					<label>Book ISBN Number</label>
					<input type="text" name="bookisbn" pattern="^(?:ISBN(?:-1[03])?:? )?(?=[0-9X]{10}$|(?=(?:[0-9]+[- ]){3})[- 0-9X]{13}$|97[89][0-9]{10}$|(?=(?:[0-9]+[- ]){4})[- 0-9]{17}$)(?:97[89][- ]?)?[0-9]{1,5}[- ]?[0-9]+[- ]?[0-9]+[- ]?[0-9X]$" title="Enter Correct ISBN" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Price</label>
					<input type="number" name="bookprice" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Image</label>
					<input type="file" name="bookimage" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Display Active</label>
					<select name="bookactive">
						<option>Yes</option>
						<option>No</option>
					</select>
				</div>
				<div class="btn-admin-form1">
					<div class="inner-admin-form1"></div>
					<button type="submit">Add Book</button>
				</div>
			</form>
		</div>
	</div>
	
	
<!-- Customer Modal -->
<div class="modal fade" id="view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Customer Detail</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="show-data"></div>
      </div>
      
    </div>
  </div>
</div>

<!-- Book Modal -->
<div class="modal fade" id="view-modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Book Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="show-data1"></div>
      </div>
      
    </div>
  </div>
</div>


<!-- Sell Modal -->
<div class="modal fade" id="view-modal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Selling Book Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="show-data2"></div>
      </div>
      
    </div>
  </div>
</div>

<!-- Order Modal -->
<div class="modal fade" id="view-modal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Order Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="show-data3"></div>
      </div>
      
    </div>
  </div>
</div>

<!-- Edit book Modal -->
<div class="modal fade" id="view-modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Edit Book Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="edit-data"></div>
      </div>
      
    </div>
  </div>
</div>


<!-- Add book Modal -->
<div class="modal fade" id="add-modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Add Book</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="addbook-data"></div>
      </div>
      
    </div>
  </div>
</div>

<!-- Negotiate Modal -->
<div class="modal fade" id="nego-modal-form" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">Negotiate Offer</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
      	<div id="nego-data"></div>
      </div>
      
    </div>
  </div>
</div>

<!-- JS -->
	<script>
		function toggleMenu(){
			let toggle_admin = document.querySelector('.toggle_admin');
			let navigation_admin = document.querySelector('.navigation_admin');
			let main_admin = document.querySelector('.main_admin');
			toggle_admin.classList.toggle('active');
			navigation_admin.classList.toggle('active');
			main_admin.classList.toggle('active');
		}
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.getCustomerdata').click(function(){
 				var custid=$(this).attr("id");
 				$.ajax({
 					url:"modalCustomerData.jsp",
 					type:"post",
 					data:"custid="+custid,
 					success:function(data){
 						$("#show-data").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.getBookdata').click(function(){
 				var bookid=$(this).attr("id");
 				$.ajax({
 					url:"modalBookData.jsp",
 					type:"post",
 					data:"bookid="+bookid,
 					success:function(data){
 						$("#show-data1").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.getSelldata').click(function(){
 				var sellid=$(this).attr("id");
 				$.ajax({
 					url:"modalSellData.jsp",
 					type:"post",
 					data:"sellid="+sellid,
 					success:function(data){
 						$("#show-data2").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.getOrderdata').click(function(){
 				var orderid=$(this).attr("id");
 				$.ajax({
 					url:"modalOrderData.jsp",
 					type:"post",
 					data:"orderid="+orderid,
 					success:function(data){
 						$("#show-data3").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.editBookdetails').click(function(){
 				var bookid=$(this).attr("id");
 				$.ajax({
 					url:"modalEditBook.jsp",
 					type:"post",
 					data:"bookid="+bookid,
 					success:function(data){
 						$("#edit-data").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.addBook').click(function(){
 				//var bookid=$(this).attr("id");
 				$.ajax({
 					url:"modalAddBook.jsp",
 					type:"post",
 					//data:"bookid="+bookid,
 					success:function(data){
 						$("#addbook-data").html(data);
 					}
 				});
 			});
 		});
	</script>
	
	<script type="text/javascript">
 		$(document).ready(function(){
 			$('.negooffer').click(function(){
 				var sellid=$(this).attr("id");
 				$.ajax({
 					url:"modalNegoOffer.jsp",
 					type:"post",
 					data:"sellid="+sellid,
 					success:function(data){
 						$("#nego-data").html(data);
 					}
 				});
 			});
 		});
	</script>
</body>
</html>