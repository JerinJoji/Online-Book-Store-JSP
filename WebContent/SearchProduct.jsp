<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>   	
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Search Books | PustaakShala</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
		if(window.history.forward(1) != null)
			window.history.forward(1);
	</script>
</head>
<body>
		<%String email = session.getAttribute("email").toString();
		String cusid = session.getAttribute("CusID").toString(); %>
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
						<li><a href="logout.jsp" class="btn-logout">Log Out</a></li>
						<li><a href="cart.jsp"><img src="assets/cart.png" width="30px" height="30px"></a></li>
					</ul>
				</nav>
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
			<%
			int flag =0;
			try{
				String search = request.getParameter("search");
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("SELECT * FROM books where BookName like '%"+search+"%' or Author like '%"+search+"%' or Publisher like '%"+search+"%' or Genre like '%"+search+"%' or Subject like '%"+search+"%' or ISBN like '%"+search+"%' and Active = 'Yes'");
				while(rs.next()){
					flag=1;
			%>
			<div class="col-4">
				<img src="<%=rs.getBlob(10)%>">
				<a href="productdetails.jsp?id=<%=rs.getString(1)%>"><h4><%=rs.getString(2)%></h4></a>
				<div class="rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star-o"></i>
				</div>
				<p>&#8377;<%=rs.getString(8) %></p>
			</div>
			<%}
			}
			catch(Exception e){
				System.out.println(e);
			}
			%>
			<%
			if(flag==0){
			%>
			<div class="col-4">
				<h1 style="text-align:center; color:red;">Book Not Found</h1>
			</div>
			<%
			}
			%>
		<!-- <div class="page-btn">
			<span>1</span>
			<span>2</span>
			<span>3</span>
			<span>4</span>			
			<span>&#8594;</span>
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