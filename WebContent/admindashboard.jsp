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
						<span class="icon-admin"><i class="fa fa-comments" aria-hidden="true"></i></span>
						<span class="title-admin">Message</span>
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
								<td><span class="status-admin delivered">Pending</span></td>
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
								<td><span class="status-admin delivered">Pending</span></td>
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
						</tbody>
					</table>
				</div>

				<div class="recentCustomers-admin">
					<div class="cardHeader-admin">
						<h2>Recent Customers</h2>
					</div>
				</div>
			</div>


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