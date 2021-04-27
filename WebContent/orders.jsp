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

		<%
		String email = session.getAttribute("email").toString();
		String cusid = session.getAttribute("CusID").toString();
		%>		
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
						<li><img src="assets/cart.png" width="30px" height="30px"></li>
					</ul>
				</nav>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>


<!----------- order items details ------------>
	<div class="small-container cart-page">
		<h2>Orders Placed</h2>
		<br>
		<table>
			<tr>
				<th>Product</th>
				<th>Price</th>
				<th>Status</th>
			</tr>
			<%
				try{
					Connection con = ConnectionProvider.getCon();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("SELECT * FROM cart where CusID ="+cusid+" and Status='Order Placed'");
					while(rs.next()){
						String bookid = rs.getString(2);
			%>
			<tr>
				<%
				Connection conn = ConnectionProvider.getCon();
				Statement stt = conn.createStatement();
				ResultSet rs1 = stt.executeQuery("SELECT * FROM books where BookID ="+bookid);
				while(rs1.next()){
				%>
				<td>
					<div class="cart-info">
						<img src="<%=rs1.getBlob(10) %>">
						<div>
							<p><%=rs1.getString(2) %></p>
							<br>
						</div>
					</div>
				</td>
				<td>&#8377;<%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<%} %>
			</tr>
			<%}
					}catch(Exception e){
				System.out.println(e);
			}%>
		</table>
	</div>
	
	<div class="small-container cart-page">
		<h2>Delivered</h2>
		<br>
		<table>
			<tr>
				<th>Product</th>
				<th>Price</th>
				<th>Status</th>
			</tr>
			<%
				try{
					Connection con = ConnectionProvider.getCon();
					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("SELECT * FROM cart where CusID ="+cusid+" and Status='Delivered'");
					while(rs.next()){
						String bookid = rs.getString(2);
			%>
			<tr>
				<%
				Connection conn = ConnectionProvider.getCon();
				Statement stt = conn.createStatement();
				ResultSet rs1 = stt.executeQuery("SELECT * FROM books where BookID ="+bookid);
				while(rs1.next()){
				%>
				<td>
					<div class="cart-info">
						<img src="<%=rs1.getBlob(10) %>">
						<div>
							<p><%=rs1.getString(2) %></p>
							<br>
						</div>
					</div>
				</td>
				<td>&#8377;<%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<%} %>
			</tr>
			<%}
					}catch(Exception e){
				System.out.println(e);
			}%>
		</table>
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