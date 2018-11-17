<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- Static content -->
<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
<script type="text/javascript" src="/resources/js/app.js"></script>
<script src="/webjars/jquery/3.3.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />

<title>Spring Boot</title>
</head>

<body>
	<div class="container">
		<br />
		<div align="center" class="alert alert-info">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">�</a>
			<strong>Spring boot,  MVC + bootstrap + jquery, rest.</strong>
		</div>
	</div>
	<hr>
	<div class="form">
		<form action="hello" method="post" onsubmit="return validate()">
			<table>
				<tr>
					<td>Enter Your name</td>
					<td><input id="name" name="name"></td>
					<td><input type="submit" value="Submit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>