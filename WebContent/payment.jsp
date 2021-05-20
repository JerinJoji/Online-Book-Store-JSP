<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="project.ConnectionProvider"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Payment | PustaakShala</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<script>
		if(window.history.forward(1) != null)
			window.history.forward(1);
	</script>
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
						<li><a href="editprofile.jsp">Account</a></li>
						<li><a href="orders.jsp">My Orders</a></li>
						<li><a href="sellingrequest.jsp">Sell Book</a></li>
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
						<form action="paymentUpdateMethod.jsp" method="post">
							
							<div class="checkout-row">
								<div class="checkout-col-58">
								<%
								try{
									Connection con = ConnectionProvider.getCon();
									Statement st = con.createStatement();
									ResultSet rs = st.executeQuery("SELECT * FROM customer where CustomerId="+cusid);
									while(rs.next()){
								%>
									<h3 style = "margin-bottom:20px; margin-top:15px;">Billing Address</h3>
									<label for="fname"><i class="fa fa-user" style="margin-right:10px;"></i>Full Name</label>
									<input type="text" id="" value="<%=rs.getString(2) %> <%=rs.getString(3) %>" disabled>
										
									<label for="email"><i class="fa fa-envelope" style="margin-right:10px;"></i>Email</label>
									<input type="text" id="" name="" value="<%=rs.getString(10) %>" disabled>
										
									<label for="adr"><i class="fa fa-address-card-o" style="margin-right:10px;"></i>Address</label>
									<input type="text" id="" name="" value="<%=rs.getString(4) %>, <%=rs.getString(5) %>, <%=rs.getString(6) %>" disabled>
										
									<label for="city"><i class="fa fa-institution" style="margin-right:10px;"></i>City</label>
									<input type="text" id="" name="" value="<%=rs.getString(8) %>" disabled>
									<div class="checkout-row">
										<div class="checkout-col-50">
											<label for="state">State</label>
											<input type="text" id="state" name="" value="<%=rs.getString(9) %>" disabled>
										</div>
										<div class="checkout-col-50">
											<label for="zip">Pincode</label>
											<input type="text" id="zip" name="" value="<%=rs.getString(7) %>" disabled>
										</div>
									</div>		
									<%}}catch(Exception e){
										System.out.println(e);
									}
									%>					
								</div>
								
								<div class="checkout-col-50">
									<h3 style = "margin-bottom:20px; margin-top:15px;">Payment</h3>
									<label for="fname">Accepted Card</label>
									<div class="checkout-icon-container">
										<i class="fa fa-cc-visa" style="color: navy;"></i>
										<i class="fa fa-cc-amex" style="color: blue;"></i>
										<i class="fa fa-cc-mastercard" style="color: red;"></i>
										<i class="fa fa-cc-discover" style="color: orange;"></i>
									</div>
									
									<label>Payment Method</label>
									<% 
									String pay = request.getParameter("paymode"); 
									if(pay.equals("Credit/Debit Card")){
									%>
									<select name="paymentmethod" onchange="OnGradeChanged(this.value);" style="margin-bottom:20px; width:50%;">
										<option value="Credit/Debit Card" selected>Credit/Debit Card</option>
										<option value="UPI">UPI Payment</option>
										<option value="Cash on Delivery">Cash on Delivery</option>
									</select>
									
									<label for="cname">Name on Card</label>
									<input type="text" id="cname" pattern="[a-zA-Z]*" title="Only Letters" required>
									
									<label for="ccnum">Card Number</label>
									<input type="text" id="ccnum" title="Only Digits and Enter the Correct Number" pattern="(^4[0-9]{12}(?:[0-9]{3})?$)|(^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$)|(3[47][0-9]{13})|(^3(?:0[0-5]|[68][0-9])[0-9]{11}$)|(^6(?:011|5[0-9]{2})[0-9]{12}$)|(^(?:2131|1800|35\d{3})\d{11}$)" required>
									
									<label for="expmonth">Expiry Month and Year</label>
									<input type="month" id="expmonth" required>
									
									<div class=="checkout-row">
										<div class="checkout-col-50">
											<label for="cvv">CVV</label>
											<input type="text" id="cvv" pattern="^[0-9]{3,4}$" title="Enter the Correct CVV" required>
										</div>
									</div>
									<%}
									if(pay.equals("UPI")){
									%>
									<select name="paymentmethod" onchange="OnGradeChanged(this.value);" style="margin-bottom:20px; width:50%;">
										<option value="Credit/Debit Card">Credit/Debit Card</option>
										<option value="UPI" selected>UPI Payment</option>
										<option value="Cash on Delivery">Cash on Delivery</option>
									</select>
									
									<label for="cname">Enter UPI ID</label>
									<input type="text" id="cname" pattern="^[\w.-]+@[\w.-]+$" title="Enter UPI Correctly" required>
									<%}
									if(pay.equals("Cash on Delivery")){
									%>
									<select name="paymentmethod" onchange="OnGradeChanged(this.value);" style="margin-bottom:20px; width:50%;">
										<option value="Credit/Debit Card">Credit/Debit Card</option>
										<option value="UPI">UPI Payment</option>
										<option value="Cash on Delivery" selected>Cash on Delivery</option>
									</select>
									
									<input type="text" value="Cash On Delivery" disabled>
									<%} %>
								</div>
								<!-- 
								<label><input type="checkbox" checked="checked" name="">Shipping address same as billing</label> -->
								<input type="submit" value="Continue to checkout" class="checkout-button">
							</div>
						</form>
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
	<script>
	function OnGradeChanged(value){
    	window.location.replace("payment.jsp?paymode="+value);
	}
</script>
</body>
</html>