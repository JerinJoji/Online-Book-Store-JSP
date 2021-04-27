<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
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
				<form action="searchproduct.jsp" method="post">
				<div class="container-search">
					<div class="search-box">
						<input type="text" class="search" placeholder="What are you looking for?">
						<button type="submit" class="search-btn">
						<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				</form>
				<nav>
					<ul id="MenuItems">
						<li><a href="products.jsp">Home</a></li>
						<li><a href="">Account</a></li>
						<li><a href="">My Orders</a></li>
						<li><a href="logout.jsp" class="btn-logout">Log Out</a></li>
						<li><a href="cart.jsp"><img src="assets/cart.png" width="30px" height="30px"></a></li>
					</ul>
				</nav>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>

<!---------- single product details ---------->

	<div class="small-container single-product">
		<div class="row">
		
		<%
			String email = session.getAttribute("email").toString();
			String cusid = session.getAttribute("CusID").toString();
			String book_id = request.getParameter("id");
			try{
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM books where BookID="+book_id);
				while(rs.next()){
		%>
			<div class="col-2">
				<img src="<%=rs.getBlob(10) %>" width="80%" id="ProductImg">

				<!--<div class="small-img-row">
					<div class="small-img-col">
						<img src="assets/gallery-1.jfif" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="assets/gallery-2.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="assets/gallery-3.jpg" width="100%" class="small-img">
					</div>
					<div class="small-img-col">
						<img src="assets/gallery-4.jpg" width="100%" class="small-img">
					</div>
				</div>-->
			</div>
			<div class="col-2">
				<h1><%=rs.getString(2) %></h1>
				<h4>&#8377;<%=rs.getString(8) %></h4>

				<!--<input type="number" value="1"> -->
				<%
				Connection conn = ConnectionProvider.getCon();
				Statement stt = conn.createStatement();
				ResultSet rs1 = stt.executeQuery("SELECT * FROM cart where Book_ID="+book_id+" and CusID="+cusid);
				if(rs1.next()==false){
				%>
				<a href="addToCart.jsp?bookid=<%= book_id %>&price=<%=rs.getString(8) %>" class="btn">Add To Cart</a>
				<%}else{ %>
				<a href="" class="btn" style="background-color:grey;" disabled>Added To Cart</a>
				<%} %>
				
				<h3>Product Details <i class="fa fa-indent"></i></h3>
				<br>
				<p>Author 	: <%=rs.getString(3) %><br>
				Publisher 	: <%=rs.getString(4) %><br>
				Genre		: <%=rs.getString(5) %><br>
				Subject		: <%=rs.getString(6) %><br>
				ISBN		: <%=rs.getString(7) %><br>
				</p>
			</div>
			<%}
			}catch(Exception e){
				System.out.println(e);
			}
			%>
		</div>
	</div>

<!--------------title--------------->
	<div class="small-container">
		<div class="row row-2">
			<h2>Related Products</h2>
			<p>View more</p>
		</div>
	</div>



<!--------------products--------------->
	<div class="small-container">

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
				<p>&#8377;50.00</p>
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
				<p>&#8377;90.00</p>
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
				<p>&#8377;75.00</p>
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
				<p>&#8377;100.00</p>
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


<!-------- js for product gallery --------->
	<script>
		var ProductImg = document.getElementById("ProductImg");
		var SmallImg = document.getElementsByClassName("small-img");

			SmallImg[0].onclick = function()
			{
				ProductImg.src = SmallImg[0].src;
			}
			SmallImg[1].onclick = function()
			{
				ProductImg.src = SmallImg[1].src;
			}
			SmallImg[2].onclick = function()
			{
				ProductImg.src = SmallImg[2].src;
			}
			SmallImg[3].onclick = function()
			{
				ProductImg.src = SmallImg[3].src;
			}

	</script>


</body>
</html>