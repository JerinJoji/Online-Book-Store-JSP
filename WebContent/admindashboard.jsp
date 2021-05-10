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
					<a href="#">
						<span class="icon-admin"><i class="fa fa-book" aria-hidden="true"></i></span>
						<span class="title-admin"><h2>PustaakShala</h2></span>
					</a>
				</li>
				<li>
					<a href="#">
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
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-book" aria-hidden="true"></i></span>
						<label for="show"><span class="title-admin">Add/Edit Books</span></label>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#recentorders">
						<span class="icon-admin"><i class="fa fa-question-circle" aria-hidden="true"></i></span>
						<span class="title-admin">Recent Orders</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#books">
						<span class="icon-admin"><i class="fa fa-cog" aria-hidden="true"></i></span>
						<span class="title-admin">Books</span>
					</a>
				</li>
				<li>
					<a href="admindashboard.jsp#Selling">
						<span class="icon-admin"><i class="fa fa-lock" aria-hidden="true"></i></span>
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
						<i class="fa fa-eye" aria-hidden="true"></i>
					</div>
				</div>
				<%} %>
				<%
				ResultSet rs1 = st.executeQuery("SELECT count(*) FROM cart;");
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
				
				<div class="card-admin">
					<div>
						<div class="numbers-admin">200</div>
						<div class="cardName-admin">Sell Requests</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-paper-plane" aria-hidden="true"></i>
					</div>
				</div>
				<%
				ResultSet rs3 = st.executeQuery("SELECT sum(Price) FROM cart where Status!='Returned';");
				if(rs3.next()){
				%>
				<div class="card-admin">
					<div>
						<div class="numbers-admin">&#8377;<%= rs3.getString(1) %></div>
						<div class="cardName-admin">Earning</div>
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
						ResultSet rs4 = st.executeQuery("SELECT * FROM cart join books on cart.Book_ID = books.BookID where cart.Status!='Added to Cart' order by OrderDate desc;");
						while(rs4.next()){
							int bookid = rs4.getInt(2);
							String status = rs4.getString(5);  
						%>
							<tr>
								<td><%= rs4.getString(10) %></td>
								<td>&#8377;<%= rs4.getString(4) %></td>
								<td><%= rs4.getString(8) %></td>
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
								<td>Author</td>
								<td>Publisher</td>
								<td>Genre</td>
								<td>Subject</td>
								<td>ISBN</td>
								<td>Price</td>
								<td>Active</td>
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
								<td><%= rs6.getString(1) %></td>
								<td><%= rs6.getString(2) %></td>
								<td><%= rs6.getString(3) %></td>
								<td><%= rs6.getString(4) %></td>
								<td><%= rs6.getString(5) %></td>
								<td><%= rs6.getString(6) %></td>
								<td><%= rs6.getString(7) %></td>
								<td><%= rs6.getString(8) %></td>
								<td><%= rs6.getString(9) %></td>
								<td>
								<%if(active.equals("No")){%>
								<h3><a href="adminActivateBook.jsp?bookid=<%=rs6.getString(1) %>">Active</a></h3>
								<%}else{ %>
								<h3><a href="adminDeactivateBook.jsp?bookid=<%=rs6.getString(1) %>">Deactive</a></h3>
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
								<td>City</td>
								<td>State</td>
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
								<td><%= rs7.getString(1) %></td>
								<td><%= rs7.getString(2) %> <%= rs7.getString(3) %></td>
								<td><%= rs7.getString(8) %></td>
								<td><%= rs7.getString(9) %></td>
								<td><%= rs7.getString(10) %></td>
								<td><%= rs7.getString(11) %></td>
								<td><%= rs7.getString(13) %></td>
								<td>
								<h3><a href="adminDeleteCustomer.jsp?custid=<%=rs7.getString(1) %>">Delete</a></h3>
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
								<td>Customer ID</td>
								<td>Book ID</td>
								<td>Price</td>
								<td>Order Date</td>
								<td>Payment</td>
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
								<td><%= rs8.getString(1) %></td>
								<td><%= rs8.getString(2) %></td>
								<td>&#8377;<%= rs8.getString(4) %></td>
								<td><%= rs8.getString(6) %></td>
								<td><%= rs8.getString(8) %></td>
								<td><%= rs8.getString(5) %></td>
								<td>
								<%if(status.equals("Order Confirmed")){ %>
								<h3><a href="adminChangetoInProgress.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>">In Progress</a></h3>
								<%}
								if(status.equals("In Progress")){ %>
								<h3><a href="adminChangetoDeliver.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>">Delivered</a></h3>
								<%}
								if(status.equals("Returning")){ %>
								<h3><a href="adminChangetoReturn.jsp?custid=<%=rs8.getString(1)%>&bookid=<%=rs8.getString(2)%>">Returned</a></h3>
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
								<td>Book Name</td>
								<td>Author</td>
								<td>Publisher</td>
								<td>Genre</td>
								<td>Subject</td>
								<td>ISBN</td>
								<td>Expected Price</td>
								<td>Accept/Decline</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
							<tr>
								<td>NET Book 2013</td>
								<td>Arjun Sharma</td>
								<td>Arihant</td>
								<td>Solved Papers</td>
								<td>Teaching</td>
								<td>343243</td>
								<td>$343</td>
								<td><button>Accept</button><button>Decline</button></td>
							</tr>
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
						<option>Law</option>
						<option>Engineering</option>
					</select>
				</div>
				<div class="data-admin-form1">
					<label>Book ISBN Number</label>
					<input type="text" name="bookisbn" required>
				</div>
				<div class="data-admin-form1">
					<label>Book Price</label>
					<input type="text" name="bookprice" required>
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

</body>
</html>