<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Admin Dashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
</head>
<body class="body-admin">
	<div class="container-admin">
		<div class="navigation_admin">
			<ul>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-apple" aria-hidden="true"></i></span>
						<span class="title-admin"><h2>Brand Name</h2></span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-home" aria-hidden="true"></i></span>
						<span class="title-admin">Dashboard</span>
					</a>
				</li>
				<li>
					<a href="#">
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
					<a href="#">
						<span class="icon-admin"><i class="fa fa-question-circle" aria-hidden="true"></i></span>
						<span class="title-admin">Help</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-cog" aria-hidden="true"></i></span>
						<span class="title-admin">Settings</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-lock" aria-hidden="true"></i></span>
						<span class="title-admin">Password</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
						<span class="title-admin">Sign Out</span>
					</a>
				</li>
			</ul>
		</div>

		<%
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
				ResultSet rs3 = st.executeQuery("SELECT sum(Price) FROM cart;");
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
			</div>

			<div class="details-admin">
				<div class="recentOrders-admin">
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
							<tr>
								<td>NET 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
							<tr>
								<td>CSS BOOK</td>
								<td>$100</td>
								<td>Due</td>
								<td><span class="status-admin pending">Pending</span></td>
							</tr>
							<tr>
								<td>IAS 2019</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status-admin return">Returned</span></td>
							</tr>
							<tr>
								<td>JEET 2019</td>
								<td>$450</td>
								<td>Paid</td>
								<td><span class="status-admin inprogress">In Progress</span></td>
							</tr>
							<tr>
								<td>NET 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
							<tr>
								<td>CSS BOOK</td>
								<td>$100</td>
								<td>Due</td>
								<td><span class="status-admin pending">Pending</span></td>
							</tr>
							<tr>
								<td>IAS 2019</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status-admin return">Returned</span></td>
							</tr>
							<tr>
								<td>JEET 2019</td>
								<td>$450</td>
								<td>Paid</td>
								<td><span class="status-admin inprogress">In Progress</span></td>
							</tr>
							<tr>
								<td>SET BOOK 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
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
					</table>
				</div>
				
				
				<div class="recentOrders-admin">
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
								<td>Active/Deactive</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>NET Book 2012</td>
								<td>Jerin Joji</td>
								<td>Arihant Books</td>
								<td>Exam Preparation Guide</td>
								<td>NET</td>
								<td>2321321</td>
								<td>$323</td>
								<td>active</td>
								<td><button>Active</button><button>Deactive</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
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
					</table>
				</div>
				
				<div class="recentOrders-admin">
					<div class="cardHeader-admin">
						<h2>Customer</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Customer ID</td>
								<td>Name</td>
								<td>Address</td>
								<td>City</td>
								<td>State</td>
								<td>Email</td>
								<td>Password</td>
								<td>Phone</td>
								<td>Date of Signing</td>
								<td>Delete</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Colony</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
							<tr>
								<td>2343</td>
								<td>Jagat Joy</td>
								<td>123 Halal Col.</td>
								<td>Jaipur</td>
								<td>Rajasthan</td>
								<td>hhh@gmail.com</td>
								<td>73648</td>
								<td>9988778787</td>
								<td>12/12/12</td>
								<td><button>Delete</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				
				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
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
					</table>
				</div>
				
				
				<div class="recentOrders-admin">
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
								<td>Method</td>
								<td>Status</td>
								<td>Delivered/Returned</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Delivered</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Returned</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Delivered</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Returned</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Delivered</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Returned</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Delivered</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Returned</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
							<tr>
								<td>0123</td>
								<td>23244</td>
								<td>$343</td>
								<td>12/2/14</td>
								<td>Pending</td>
								<td>Cash</td>
								<td>Returned</td>
								<td><button>Delivered</button><button>Returned</button></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
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
					</table>
				</div>
				
				<div class="recentOrders-admin">
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
			<form action="#">
				<div class="data-admin-form1">
					<label>Book name</label>
					<input type="text" required>
				</div>
				<div class="data-admin-form1">
					<label>Author</label>
					<input type="text" required>
				</div>
				<div class="data-admin-form1">
					<label>Publisher</label>
					<input type="text" required>
				</div>
				<div class="data-admin-form1">
					<label>Genre</label>
					<select>
						<option>Option 1</option>
						<option>Option 2</option>
						<option>Option 3</option>
						<option>Option 4</option>
					</select>
				</div>
				<div class="data-admin-form1">
					<label>Subject</label>
					<select>
						<option>Option 1</option>
						<option>Option 2</option>
						<option>Option 3</option>
						<option>Option 4</option>
					</select>
				</div>
				<div class="data-admin-form1">
					<label>ISBN</label>
					<input type="text" required>
				</div>
				<div class="data-admin-form1">
					<label>Price</label>
					<input type="text" required>
				</div>
				<div class="data-admin-form1">
					<label>Active</label>
					<select>
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

<<<<<<< HEAD


=======
>>>>>>> 911a21f80bf47f45beb5d12f8fc1a127a84b2e15
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