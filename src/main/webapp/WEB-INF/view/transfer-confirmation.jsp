<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<title>Amount Page</title>
<style type="text/css">
body {
	background-image: url("C:/Users/16abh/Desktop/pt.jpg");
}
</style>
</head>
<body>
	<h1 align="center"
		style="color: white; padding-top: 20px; font-size: 50px">
		<i>The Sparks Foundation</i>
	</h1>
	<hr>
	<hr>
	<p align="center"
		style="color: white; padding-top: 25px; padding-left: 80px; font-size: 35px">
		Your Transaction was Successfully processed. <br> Thank you!
	</p>
	<br>
	<p  align="center" style="font-size: 35px; color: white;">
		<a href="${pageContext.request.contextPath}/" style="color: white;"><i
			class="fa fa-home"></i> </i><span>Home</a></span></a>
	</p>

</body>
</html>