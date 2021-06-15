<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html>
<head>
<title>Customer Details</title>
</head>

<meta charset="utf-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">


<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\fonts\icomoon/style.css">

<link rel="stylesheet"
	href="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\css\owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\css\bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet"
	href="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\css\style.css">


<script
	src="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\js\jquery-3.3.1.min.js"></script>
<script
	src="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\js\popper.min.js"></script>
<script
	src="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\js\bootstrap.min.js"></script>
<script
	src="C:\Users\16abh\Desktop\JAVA\eclipse\ZIP3\css-table-12\js\main.js"></script>

<style>
.button {
	border: 1px solid #666;
	border-radius: 5px;
	padding: 4px;
	font-size: 20px;
	font-weight: bold;
	height: 50px;
	width: 120px;
	padding: 5px 10px;
	margin-bottom: 15px;
	width: 170px;
	padding: 5px 10px;
	margin-bottom: 15px;
	background: #6d65fc;
	padding: 5px 10px;
	margin-bottom: 15px;
	padding: 5px 10px;
	margin-bottom: 15px;
}
</style>
<body>

	<div id="wrapper">
		<div id="header">
			<h1>
				Customer Details.!!
				</h2>
		</div>
	</div>

	<br>
	<p style="font-size: 35px">
		<a href="${pageContext.request.contextPath}/showAllCustomers"><i class="fa fa-arrow-circle-left" aria-hidden="true"></i>
			</i><span>Back</a></span></a>
	
	
		<a href="${pageContext.request.contextPath}/" style="padding-left: 35px"><i
			class="fa fa-home"></i> </i><span>Home</a></span></a>
	</p>
	<br>

	<div id="container">
		<br>
		<h2>User Name : ${customer.fName} ${customer.lName}</h2>
		<br>
		<c:url var="transferLink" value="/showCustomersForTransfer">
			<c:param name="customerId" value="${customer.id}" />
		</c:url>

		<input type="button" value="Transfer Money"
			onClick="window.location.href='${transferLink}'; return false;"
			class="button" />

		<table class="table table-striped custom-table">

			<tr align="center""row">
				<td>First Name :</td>
				<td>${customer.fName}</td>
			</tr>
			<tr align="center""row">
				<td>Last Name :</td>
				<td>${customer.lName}</td>
			</tr>
			<tr align="center""row">
				<td>Email :</td>
				<td>${customer.email}</td>
			</tr>
			<tr align="center""row">
				<td>Mobile No :</td>
				<td>${customer.mobNo}</td>
			</tr>
			<tr align="center""row">
				<td>Address :</td>
				<td>${customer.address}</td>
			</tr>
			<tr align="center""row">
				<td>Current Balance :</td>
				<td>${customer.currentBalance}</td>
			</tr>


		</table>
	</div>

</body>
</html>