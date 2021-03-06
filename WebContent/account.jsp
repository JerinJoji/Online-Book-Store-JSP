<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login/Signup | PustaakShala</title>
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

				
		<div class="container">
			<div class="navbar">
				<div class="logo">
					<img src="assets/logo.png" width="125px">
				</div>
				<nav>
					<ul id="MenuItems">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="">About</a></li>
						<li><a href="">Contact</a></li>
					</ul>
				</nav>
				<img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
			</div>
	
		</div>

<!--------------- account-page ---------------->

	<div class="account-page">
		<div class="container">
			<div class="row">
				<div class="col-2-acc">
					<img src="assets/img1.png" width="100%">
				</div>

				<div class="col-2-acc">
					<div class="form-container">
						<div class="form-btn">
							<span onclick="login()">Login</span>
							<span onclick="register()">Register</span>
							<hr id="Indicator">
						</div>

						<form id="LoginForm" action="loginAction.jsp" method="post">
							<input type="email" name="loginemail" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Email must be in Correct Format" required>
							<input type="password" name="loginpassword" placeholder="Password" required>
							<button type="submit" class="btn">Login</button>
							<%
							String msg = request.getParameter("msg");
							if("notexist".equals(msg)){
							%>
							<p style="color:red">Incorrect Username and Password</p>
							<%}
							if("invalid".equals(msg))
							{
							%>
							<p style="color:red">Something Went Wrong</p>
							<%}%>
							<a href="">Forgot password</a>
						</form>

						<form id="RegForm" action="signupAction.jsp" method="post">
							<input type="text" name = "fname" placeholder="FirstName" pattern="[a-zA-Z]*" title="Only Letters" required>
							<input type="text" name = "lname" placeholder="LastName" pattern="[a-zA-Z]*" title="Only Letters" required>
							<input type="text" name = "house" placeholder="House/Building" required>
							<input type="text" name = "street" placeholder="StreetName" required>
							<input type="text" name = "location" placeholder="Location" required>
							<input type="text" name = "pincode" placeholder="Pincode" pattern="^[1-9][0-9]{5}$" title="Pincode must be in Correct Format" required>
							<input type="text" name = "city" placeholder="City" required>
							<input type="text" name = "state" placeholder="State" required>
							<input type="email" name = "email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Email must be in Correct Format" required>
							<input type="text" name = "phone" placeholder="PhoneNumber" pattern="[789][0-9]{9}" title="All numbers and not more or less than 10 digits" required>
							<input type="password" name = "password" placeholder="Password" pattern=".{8,}" title="Eight or more characters" required>
							<%
							String rmsg = request.getParameter("rmsg");
							if("invalid".equals(rmsg)){
							%>
							<p style="color:red">Something Went Wrong</p>
							<%} %>
							<%if("exists".equals(rmsg)){
							%>
							<p style="color:red">Email Already Exists</p>
							<%} %>
							<button type="submit" class="btn">Register</button>
						</form>
					</div>	
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



<!------------------- js for toggle menu -------------------->

	<script>
		
		var LoginForm = document.getElementById("LoginForm");
		var RegForm = document.getElementById("RegForm");
		var Indicator = document.getElementById("Indicator");

			function register(){

				RegForm.style.transform = "translateX(0px)";
				LoginForm.style.transform = "translateX(0px)";
				Indicator.style.transform = "translateX(100px)";
			}

			function login(){

				RegForm.style.transform = "translateX(300px)";
				LoginForm.style.transform = "translateX(300px)";
				Indicator.style.transform = "translateX(0px)";
			}

	</script>

</body>
</html>