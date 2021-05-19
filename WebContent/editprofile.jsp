<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Book Selling Request | PustaakShala</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
		<%
		String cusid = session.getAttribute("CusID").toString();
		%>
				
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="assets/logo.png" width="125px">
				</div>
				<!-- Search Bar -->	
				<div class="container-search">
				<form action="searchproduct.jsp" method="post">
					<div class="search-box">
						<input type="text" name="search" class="search" placeholder="What are you looking for?">
						<button type="submit" class="search-btn">
						<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
				</div>
				<nav>
					<ul id="MenuItems">
						<li><a href="products.jsp">Home</a></li>
						<li><a href="">Account</a></li>
						<li><a href="orders.jsp">My Orders</a></li>
						<li><a href="cart.jsp"><img src="assets/cart.png" width="30px" height="30px"></a></li>
						<li><a href="logout.jsp" class="btn-logout">Logout</a></li>
					</ul>
				</nav>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>




	<div class="small-container">
	<%
	try{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM customer where CustomerId="+cusid);
		while(rs.next()){
	%>
			<h3>Update Your Profile</h3>
			<p>Update the form below with the your details.</p>
				<div class="container-selling-form">
					<div class="title">Account Update Form</div>
					<form action="updateAccountForm.jsp" method="post">
						<div class="selling-details">
						
							<div class="selling-input-box">
								<span class="sell-details">First Name</span>
								<input type="text" name="firstname" value="<%=rs.getString(2)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Last Name</span>
								<input type="text" name="lastname" value="<%=rs.getString(3)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">House/Building</span>
								<input type="text" name="house" value="<%=rs.getString(4)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Street Name</span>
								<input type="text" name="street" value="<%=rs.getString(5)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Location</span>
								<input type="text" name="location" value="<%=rs.getString(6)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">City</span>
								<input type="text" name="city" value="<%=rs.getString(8)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">State</span>
								<input type="text" name="state" value="<%=rs.getString(9)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Pincode</span>
								<input type="text" name="pincode" value="<%=rs.getString(7)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Email</span>
								<input type="text" name="email" value="<%=rs.getString(10)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Phone Number</span>
								<input type="text" name="phone" value="<%=rs.getString(11)%>">
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Password</span>
								<input type="password" name="password" value="<%=rs.getString(12)%>">
							</div>
							<div class="selling-button">
								<input type="submit" value="Update Account">
							</div>
						</div>
					</form>
				</div>
		<%}
		}
		catch(Exception e){
			System.out.println(e);
		}
		%>
		</div>



<!--------------- footer ---------------->
	
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="footer-col-1">
					<h3>Download Our App</h3>
					<p>Download App for Android and ios mobile phone.</p>
					<div class="app-logo">
						<img src="assets/play-store.png">
						<img src="assets/app-store.png">
					</div>
				</div>
				<div class="footer-col-2">
					<img src="assets/logo.png">
					<p>Our Purpose Is To Efficiently Educate and to Make Learning Content Available to Many.</p>
				</div>
				<div class="footer-col-3">
					<h3>Useful Links</h3>
					<ul>
						<li>Coupons</li>
						<li>Blog Post</li>
						<li>Return Policy</li>
						<li>Join</li>
					</ul>
				</div>
				<div class="footer-col-4">
					<h3>Follow us</h3>
					<ul>
						<li>Facebook</li>
						<li>Twitter</li>
						<li>Instagram</li>
						<li>YouTube</li>
					</ul>
				</div>
			</div>
			<hr>
			<p class="copyright">Copyright 2020 - Our Store</p>
		</div>
	</div>
<!------------------- js for toggle menu -------------------->
	<script>
		var MenuItems = document.getElementById("MenuItems")

		MenuItems.style.maxHeight = "0px";

		function menutoggle(){
			if(MenuItems.style.maxHeight == "0px")
				{
					MenuItems.style.maxHeight = "200px"
				}
			else
				{
					MenuItems.style.maxHeight = "0px"
				}
		}
	</script>
</body>
</html>