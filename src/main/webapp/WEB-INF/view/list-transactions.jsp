<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>List Transactions</title>

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


</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h1>List of all the Customers.</h1>
		</div>
	</div>
	<br>
	<p style="font-size: 35px">
		<a href="${pageContext.request.contextPath}/"><i
			class="fa fa-home"></i> </i><span>Home</a></span></a>
	</p>
	<br>
	<div id="container">
		<div id="content">
			<div class="table-responsive">
				<table class="table table-striped custom-table">


					<thead>
						<th scope="col">Transferred By</th>
						<th scope="col">Transferred TO</th>
						<th scope="col">Amount</th>
						<th scope="col">Date</th>
					</thead>

					<c:forEach var="tempTransaction" items="${transactions}">


						<tr scope="row">
							<td>${tempTransaction.transferredFrom}</td>
							<td>${tempTransaction.transferredTo}</td>
							<td>${tempTransaction.amount}</td>
							<td>${tempTransaction.transferTime}</td>


						</tr>

					</c:forEach>

				</table>
			</div>
		</div>
	</div>

</body>
</html>