<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>List Customers</title>

<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
	rel="stylesheet">


<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">


<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />





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


<style type="text/css">
</style>
</head>
<body>
	<div id="header">
		<h1>List of all the Customers.</h1>
	</div>

	<div id="container">
		<div id="content">
		<br>
			<p style="font-size: 35px">
				<a href="${pageContext.request.contextPath}/"><i 
					class="fa fa-home"></i> </i><span>Home</a></span></a>
			</p>
		<br>
			<div class="table-responsive">
				<table class="table table-striped custom-table">


					<thead>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Details</th>
					</thead>

					<c:forEach var="tempCustomer" items="${customers}">

						<c:url var="detailsLink" value="/showCustomerDetail">
							<c:param name="customerId" value="${tempCustomer.id}" />
						</c:url>

						<tr scope="row">
							<td>${tempCustomer.fName}</td>
							<td>${tempCustomer.lName}</td>
							<td><a href="${detailsLink}"><i class="fa fa-eye"
									aria-hidden="true"></i></a></td>

						</tr>

					</c:forEach>

				</table>
			</div>
		</div>
	</div>

</body>
</html>