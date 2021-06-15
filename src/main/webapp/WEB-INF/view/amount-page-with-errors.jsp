<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Amount Page</title>
<style type="text/css">
.button {
	border: 1px solid #666;
	border-radius: 5px;
	padding: 4px;
	padding-left: 100px;
	font-size: 12px;
	font-weight: bold;
	height: 50px;
	width: 120px;
	padding: 5px 10px;
	margin-bottom: 15px;
	width: 120px;
	padding: 5px 10px;
	margin-bottom: 15px;
	background: #6d65fc;
}

body {
	background-image: url("C:/Users/16abh/Desktop/pt.jpg");
}

.failed {
	color: red;
}
</style>
</head>
<body>
	<h1 align="center"
		style="color: white; padding-top: 20px; font-size: 50px">
		<i>The Sparks Foundation</i>
	</h1>
	<hr>
	<p align="center"
		style="color: white; padding-top: 10px; font-size: 35px">
		<i>Transaction Page.</i>
	</p>

	<hr>


	<c:url var="sendLink" value="/verifyAmount">
		<c:param name="from" value="${from.id}" />
		<c:param name="to" value="${to.id}" />
	</c:url>

	<form:form action="${sendLink}" method="POST">

		<p
			style="color: white; padding-top: 15px; padding-left: 80px; font-size: 30px">
			Enter Amount to be paid : <input type="number" name="amount">
			<i class="failed">Sorry! You entered an invalid amount.</i>
		</p>

		<div style="padding-left: 100px">
			<input class="button" type="submit" value="Submit" />
		</div>
	</form:form>

</body>
</html>