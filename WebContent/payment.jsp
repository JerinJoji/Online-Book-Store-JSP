<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Book Selling Request | PustaakShala</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
			<h2>Checkout Form</h2>
			<div class="checkout-row">
				<div class="checkout-col-75">
					<div class="checkout-container">
						<form action="#">
							
							<div class="checkout-row">
								<div class="checkout-col-58">
									<h3>Billing Address</h3>
									<label for="fname"><i class="fa fa-user"></i>Full Name</label>
									<input type="text" id="" name="" placeholder="Jibin James">
										
									<label for="email"><i class="fa fa-envelope"></i>Email</label>
									<input type="text" id="" name="" placeholder="jibinjames@gmail.com">
										
									<label for="adr"><i class="fa fa-address-card-o"></i>Address</label>
									<input type="text" id="" name="" placeholder="233B Mayur Vihar">
										
									<label for="city"><i class="fa fa-institution"></i>City</label>
									<input type="text" id="" name="" placeholder="Jaipur">
									<div class="checkout-row">
										<div class="checkout-col-50">
											<label for="state">State</label>
											<input type="text" id="state" name="" placeholder="PP">
										</div>
										<div class="checkout-col-50">
											<label for="zip">Zip</label>
											<input type="text" id="zip" name="" placeholder="121821">
										</div>
									</div>							
								</div>
								
								<div class="checkout-col-50">
									<h3>Payment</h3>
									<label for="fname">Accepted Card</label>
									<div class="checkout-icon-container">
										<i class="fa fa-cc-visa" style="color: navy;"></i>
										<i class="fa fa-cc-amex" style="color: blue;"></i>
										<i class="fa fa-cc-mastercard" style="color: red;"></i>
										<i class="fa fa-cc-discover" style="color: orange;"></i>
									</div>
									<label for="cname">Name on Card</label>
									<input type="text" id="cname" name="" placeholder="Jibin James">
									
									<label for="ccnum">Credit Card</label>
									<input type="text" id="ccnum" name="" placeholder="1111-2222-3333-4444">
									
									<label for="expmonth">Exp Month</label>
									<input type="text" id="expmonth" name="" placeholder="September">
									<div class=="checkout-row">
										<div class="checkout-col-50">
											<label for="expyear">Exp Year</label>
											<input type="text" id="expyear" name="" placeholder="2022">
										</div>
										<div class="checkout-col-50">
											<label for="cvv">CVV</label>
											<input type="text" id="cvv" name="" placeholder="345">
										</div>
									</div>
								</div>
								<label><input type="checkbox" checked="checked" name="">Shipping address same as billing</label>
								<input type="submit" value="Continue to checkout" class="checkout-button">

								
							</div>
						</form>
					</div>
				</div>
				<!-- <div class="checkout-col-25">
					<h4>Card<span class="price" style="color: black"><i class="fa fa-shopping-cart"></i><b>4</b></span></h4>
					<p><a href="#">Book 1</a><span class="price">$233</span></p>
					<p><a href="#">Book 2</a><span class="price">$100</span></p>
					<p><a href="#">Book 3</a><span class="price">$300</span></p>
					<p><a href="#">Book 4</a><span class="price">$430</span></p>
					<hr>
					<p>Total <span class="price" style="color: black"><b>$2442</b></span></p>
				</div> -->
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