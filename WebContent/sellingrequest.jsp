<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
						<li><a href="">Home</a></li>
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
			<h3>Selling Request</h3>
			<p>Fill the form below with the book details.</p>
				<div class="container-selling-form">
					<div class="title">Book Selling Form</div>
					<form action="#">
						<div class="selling-details">
							<div class="selling-input-box">
								<span class="sell-details">Book Name</span>
								<input type="text" placeholder="Enter the Title" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Author</span>
								<input type="text" placeholder="Enter the Author Name" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Publisher</span>
								<input type="text" placeholder="Enter the Publisher Name" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Genre</span>
								<input type="text" placeholder="Enter the Genre" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Subject</span>
								<input type="text" placeholder="Enter the Subject" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">ISBN</span>
								<input type="text" placeholder="Enter the ISBN Number" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Expected Price</span>
								<input type="text" placeholder="Enter the Expected Price" required>
							</div>
							<div class="selling-input-box">
								<span class="sell-details">Upload Image</span>
								<input type="file" id="" name="" required>
							</div>
							<div class="selling-button">
								<input type="submit" value="Send Request">
							</div>
						</div>
					</form>
				</div>
			
			
			
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