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
					<form>
						<input type="text" class="search" placeholder="What are you looking for?">
						<button type="submit" class="search-btn">
						<i class="fa fa-search"></i>
						</button>
					</form>
					</div>
				</div>
				<nav>
					<ul id="MenuItems">
						<li><a href="">Home</a></li>
						<li><a href="">Books</a></li>
						<li><a href="">About</a></li>
						<li><a href="">Contact</a></li>
						<li><a href="">Account</a></li>
					</ul>
				</nav>
				<a href="cart.jsp"><img src="assets/cart.png" width="30px" height="30px"></a>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>




	<div class="small-container">

		<div class="row row-2">
			<h2>All Products</h2>
			<select>
				<option>Default sorting</option>
				<option>Sort by price</option>
				<option>Sort by popularity</option>
				<option>Sort by rating</option>
				<option>Sort by sale</option>
			</select>
		</div>

		<div class="row">
			<div class="col-4">
				<img src="assets/product-1.jpg">
				<h4>LSAT Unlocked 2018-19</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$50.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-2.jfif">
				<h4>CISF Head Constable</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
				</div>
				<p>$90.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-3.jfif">
				<h4>Indian Army MER</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$75.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-4.jfif">
				<h4>AIIMS Mock Test Papers</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$100.00</p>
			</div>
		</div>


		<div class="row">
			<div class="col-4">
				<img src="assets/product-5.png">
				<h4>FE Exam Preparation Book</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$30.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-6.jfif">
				<h4>Nursing School Entrance Exams</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
				</div>
				<p>$70.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-7.jfif">
				<h4>State Trooper and Highway Patrol</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$65.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-8.jfif">
				<h4>SSC Elementary and Advanced Mathematics</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$45.00</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<img src="assets/product-9.jfif">
				<h4>JIPMER Medical Entrance Examination</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$120.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-10.jfif">
				<h4>PMP Exam Prep</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
				</div>
				<p>$57.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-11.jfif">
				<h4>Indian Army ACC Entrance Exam</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-half-o"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$60.00</p>
			</div>
			<div class="col-4">
				<img src="assets/product-12.jfif">
				<h4>Indian Army Artificer Apprentice</h4>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>$110.00</p>
			</div>
		</div>

		<div class="page-btn">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>			
			<span>&#8594;</span>
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