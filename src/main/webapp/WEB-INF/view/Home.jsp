<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<title>Home Page</title>
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<style type="text/css">
body {
	background-image: url("C:/Users/16abh/Desktop/bg.jpg");
}

* {
	margin: 0;
	padding: 0;
}

ul {
	position: absolute;
	top: 50%;
	left: 30%;
	transform: translate(-50%, -50%);
	display: flex;
}

ul li {
	list-style: none;
	margin: 0 5px;
	padding: 20px;
}

ul li .fa {
	font-size: 40px;
	color: #333;
	line-height: 80px;
	transition: 0.5s;
	padding-right: 14px;
}

ul li a span {
	padding: 0;
	margin: 0;
	position: absolute;
	top: 30px;
	color: #333;
	letter-spacing: 4px;
	transition: 0.5s;
}

ul li a {
	text-decoration: none;
	display: absolute;
	display: block;
	width: 210px;
	height: 80px;
	background: #fff;
	text-align: left;
	padding-left: 20px;
	transform: rotate(-30deg) skewX(25deg) translate(0, 0);
	transition: 0.5s;
	box-shadow: -20px 20px 10px rgba(0, 0, 0, 0.5);
}

ul li a:before {
	content: '';
	position: absolute;
	top: 10px;
	left: -20px;
	height: 100%;
	width: 20px;
	background: #b1b1b1;
	transform: 0.5s;
	transform: rotate(0deg) skewY(-45deg);
}

ul li a:after {
	content: '';
	position: absolute;
	top: 80px;
	left: -10px;
	height: 20px;
	width: 100%;
	background: #b1b1b1;
	transform: 0.5s;
	transform: rotate(0deg) skewX(-45deg);
}

ul li a:hover {
	transfor: rotate(-30deg) skew(25deg) translate(20px, -15px);
	box-shadow: -50px 50px 50px rgba(0, 0, 0, 0.5);
}

ul li:hover .fa {
	color: #fff;
}

ul li:hover span {
	color: #fff;
}

ul li:hover a {
	background: #dd4b39;
}

ul li:hover a:before {
	background: #b33a2b;
}

ul li:hover a:after {
	background: #e66a5a;
}
</style>

</head>
<body background="bg.jpg">

	<h1 align="center"
		style="color: white; padding-top: 20px; font-size: 50px">
		<i>The Sparks Foundation</i>
	</h1>
	<hr>
	<p align="center"
		style="color: white; padding-top: 15px; font-size: 35px">
		<i>Welcome to the Banking System.</i>
	</p>

	<hr>

	<ul>
		<li><a href="${pageContext.request.contextPath}/"><i
				class="fa fa-home"></i> </i><span>Home</a></span></a></li>

		<li><a href="${pageContext.request.contextPath}/showAllCustomers"><i
				class="fa fa-eye" aria-hidden="true"></i><span>Customers</a></span></a></li>
		<li><a
			href="${pageContext.request.contextPath}/showAllTransactions"><i
				class="fa fa-eye" aria-hidden="true"></i><span>Transactions</span></a></li>



	</ul>
</body>
</html>