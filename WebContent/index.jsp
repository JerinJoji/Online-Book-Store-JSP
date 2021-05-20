<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>PustaakShala | Online Book Store</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class="header">
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<a href="index.jsp"><img src="assets/logo.png" width="125px"></a>
				</div>
				<nav>
					<ul id="MenuItems">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="">About</a></li>
						<li><a href="">Contact</a></li>
					</ul>
				</nav>
				<a href="account.jsp" class="btn-sign">Sign Up</a>
				<a href="account.jsp" class="btn-sign">Sign In</a>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
			<div class="row">
				<div class="col-2">
					<h1>Books That<br>You Need!</h1>
					<p>Success isn't always about greatness. It's about consistency. Consistent<br>hard work gains success. Greatness will come.</p>
					<a href="productsindex.jsp" class="btn">Explore Now &#8594;</a>
				</div>
				<div class="col-2">
					<img src="assets/img1.png">
				</div>
			</div>
		</div>

	</div>

	<!---------- featured categories----------->
	<div class="categories">
		<div class="small-container">
			<div class="row">
				<div class="col-3">
					<img src="assets/category-1.jpg">
				</div>
				<div class="col-3">
					<img src="assets/category-2.jfif">
				</div>
				<div class="col-3">
					<img src="assets/category-3.jfif">
				</div>
			</div>
		</div>
		
	</div>

<!---------- featured products----------->

	<div class="small-container">
		<h2 class="title">Featured Books</h2>
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
		<h2 class="title">Latest Books</h2>
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
	</div>
<!---------- Offer ----------->
	<div class="offer">
		<div class="small-container">
			<div class="row">
				<div class="col-2">
					<img src="assets/netbook.jpeg" class="offer-img">
				</div>
				<div class="col-2">
					<p>Exclusively Available on PustaakShala</p>
					<h1>NET 2021</h1>
					<small>The National Eligibility Test(NET) exam Which would be held this year will hava a new pattern. NET book is compiled with the updated pattern. THere are extra question and Solved papers as well.</small><br>
					<a href="" class="btn">Buy Now &#8594;</a>
				</div>
			</div>
		</div>
	</div>


<!--------------- testimonial ----------------- -->
	<div class="testimonial">
		<div class="small-container">
			<div class="row">
				<div class="col-3">
					<i class="fa fa-quote-left"></i>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<img src="assets/elon.jfif">
					<h3>Elon Musk</h3>
				</div>
				<div class="col-3">
					<i class="fa fa-quote-left"></i>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<img src="assets/mark.jpg">
					<h3>Mark Zuckerberg</h3>
				</div>
				<div class="col-3">
					<i class="fa fa-quote-left"></i>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever.</p>
					<div class="rating">
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star"></i>
						<i class="fa fa-star-o"></i>
					</div>
					<img src="assets/bill.jpg">
					<h3>Bill Gates</h3>
				</div>
			</div>
		</div>
	</div>


<!--------------- brands ---------------->
	<div class="brands">
		<div class="small-container">
			<div class="row">
				<div class="col-5">
					<img src="assets/brand1.png">
				</div>
				<div class="col-5">
					<img src="assets/brand2.png">
				</div>
				<div class="col-5">
					<img src="assets/brand3.png">
				</div>
				<div class="col-5">
					<img src="assets/brand4.png">
				</div>
				<div class="col-5">
					<img src="assets/brand5.png">
				</div>
			</div>
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