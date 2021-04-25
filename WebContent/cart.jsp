<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>All Products - Red Store</title>
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
					<div class="search-box">
						<input type="text" class="search" placeholder="What are you looking for?">
						<button type="submit" class="search-btn">
						<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				<nav>
					<ul id="MenuItems">
						<li><a href="">Home</a></li>
						<li><a href="">Account</a></li>
						<li><a href="account.jsp" class="btn-logout">Log Out</a></li>
						<li><img src="assets/cart.png" width="30px" height="30px"></li>
					</ul>
				</nav>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>


<!----------- cart items details ------------>
	<div class="small-container cart-page">
		
		<table>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			<tr>
				<td>
					<div class="cart-info">
						<img src="assets/netbook.jpeg">
						<div>
							<p>UGC NET Commerce</p>
							<small>Price: $50.00</small>
							<br>
							<a href="">Remove</a>
						</div>
					</div>
				</td>
				<td><input type="number" value="1"></td>
				<td>$50.00</td>
			</tr>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			<tr>
				<td>
					<div class="cart-info">
						<img src="assets/gallery-2.jpg">
						<div>
							<p>Arihant NET Commerce</p>
							<small>Price: $87.00</small>
							<br>
							<a href="">Remove</a>
						</div>
					</div>
				</td>
				<td><input type="number" value="1"></td>
				<td>$87.00</td>
			</tr>
			<tr>
				<th>Product</th>
				<th>Quantity</th>
				<th>Subtotal</th>
			</tr>
			<tr>
				<td>
					<div class="cart-info">
						<img src="assets/gallery-3.jpg">
						<div>
							<p>Human Rights Book</p>
							<small>Price: $100.00</small>
							<br>
							<a href="">Remove</a>
						</div>
					</div>
				</td>
				<td><input type="number" value="1"></td>
				<td>$100.00</td>
			</tr>
		</table>

		<div class="total-price">
			
			<table>
				<tr>
					<td>Subtotal</td>
					<td>$200.00</td>
				</tr>
				<tr>
					<td>Tax</td>
					<td>$35.00</td>
				</tr>
				<tr>
					<td>Total</td>
					<td>$235.00</td>
				</tr>
			</table>
			

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