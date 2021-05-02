<!DOCTYPE html>
<html>
<head>
	<title>Admin Dashboard</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link rel="stylesheet" href="css/style.css">
</head>
<body class="body-admin">
	<div class="container-admin">
		<div class="navigation_admin">
			<ul>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-apple" aria-hidden="true"></i></span>
						<span class="title-admin"><h2>Brand Name</h2></span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-home" aria-hidden="true"></i></span>
						<span class="title-admin">Dashboard</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-users" aria-hidden="true"></i></span>
						<span class="title-admin">Customers</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-book" aria-hidden="true"></i></span>
						<span class="title-admin">Add/Edit Books</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-question-circle" aria-hidden="true"></i></span>
						<span class="title-admin">Help</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-cog" aria-hidden="true"></i></span>
						<span class="title-admin">Settings</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-lock" aria-hidden="true"></i></span>
						<span class="title-admin">Password</span>
					</a>
				</li>
				<li>
					<a href="#">
						<span class="icon-admin"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
						<span class="title-admin">Sign Out</span>
					</a>
				</li>
			</ul>
		</div>

		<div class="main_admin">
			<div class="topbar_admin">
				<div class="toggle_admin" onclick="toggleMenu();"></div>
				<div class="search-admin">
					<label>
						<input type="text" placeholder="Search here">
						<i class="fa fa-search" aria-hidden="true"></i>
					</label>
				</div>
				<div class="user-admin">
						<img src="assets/user.jpg">
				</div>
			</div>

			<div class="cardBox-admin">
				<div class="card-admin">
					<div>
						<div class="numbers-admin">1,042</div>
						<div class="cardName-admin">Daily Views</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-eye" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card-admin">
					<div>
						<div class="numbers-admin">80</div>
						<div class="cardName-admin">Sales</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card-admin">
					<div>
						<div class="numbers-admin">200</div>
						<div class="cardName-admin">Comments</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-comment" aria-hidden="true"></i>
					</div>
				</div>
				<div class="card-admin">
					<div>
						<div class="numbers-admin">$6,042</div>
						<div class="cardName-admin">Earning</div>
					</div>
					<div class="iconBox-admin">
						<i class="fa fa-usd" aria-hidden="true"></i>
					</div>
				</div>
			</div>

			<div class="details-admin">
				<div class="recentOrders-admin">
					<div class="cardHeader-admin">
						<h2>Recent Orders</h2>
						<a href="#" class="btn-admin">View All</a>
					</div>
					<table>
						<thead>
							<tr>
								<td>Name</td>
								<td>Price</td>
								<td>Payment</td>
								<td>Status</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>NET 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
							<tr>
								<td>CSS BOOK</td>
								<td>$100</td>
								<td>Due</td>
								<td><span class="status-admin pending">Pending</span></td>
							</tr>
							<tr>
								<td>IAS 2019</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status-admin return">Returned</span></td>
							</tr>
							<tr>
								<td>JEET 2019</td>
								<td>$450</td>
								<td>Paid</td>
								<td><span class="status-admin inprogress">In Progress</span></td>
							</tr>
							<tr>
								<td>NET 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
							<tr>
								<td>CSS BOOK</td>
								<td>$100</td>
								<td>Due</td>
								<td><span class="status-admin pending">Pending</span></td>
							</tr>
							<tr>
								<td>IAS 2019</td>
								<td>$200</td>
								<td>Paid</td>
								<td><span class="status-admin return">Returned</span></td>
							</tr>
							<tr>
								<td>JEET 2019</td>
								<td>$450</td>
								<td>Paid</td>
								<td><span class="status-admin inprogress">In Progress</span></td>
							</tr>
							<tr>
								<td>SET BOOK 2012</td>
								<td>$1200</td>
								<td>Paid</td>
								<td><span class="status-admin delivered">Delivered</span></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
						<h2>Recent Customers</h2>
					</div>
					<table>
						<tbody>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Rock<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>Brad<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
							<tr>
								<td width="60px"><div class="imgBx-admin"><img src="assets/admin-user-img1.jpg"></div></td>
								<td><h4>David<br><span>Italy</span></h4></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>


		</div>

	</div>

<!---------- Form to Add New Books ----------->
	<div class="center-admin-form1">
		<div class="container-admin-form1">
			<div class="text-admin-form1">Add Books</div>
			<form action="#">
				<div class="data-admin-form1">
					<label>Book name</label>
					<input type="text">
					<label>Author</label>
					<input type="text">
					<label>Publisher</label>
					<input type="text">
					<label>Genre</label>
					<select>
						<option>Option 1</option>
						<option>Option 2</option>
						<option>Option 3</option>
						<option>Option 4</option>
					</select>
					<label>Subject</label>
					<select>
						<option>Option 1</option>
						<option>Option 2</option>
						<option>Option 3</option>
						<option>Option 4</option>
					</select>
					<label>ISBN</label>
					<input type="text">
					<label>Price</label>
					<input type="text">
					<label>Active</label>
					<select>
						<option>Yes</option>
						<option>No</option>
					</select>
				</div>
			</form>
		</div>
	</div>


	<script>
		function toggleMenu(){
			let toggle_admin = document.querySelector('.toggle_admin');
			let navigation_admin = document.querySelector('.navigation_admin');
			let main_admin = document.querySelector('.main_admin');
			toggle_admin.classList.toggle('active');
			navigation_admin.classList.toggle('active');
			main_admin.classList.toggle('active');
		}
	</script>

</body>
</html>