<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Page</title>
<link href="styleOne.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="about" name="page"/>
	</jsp:include>
	<main>
		<h1>About Page</h1>
	</main>
</body>
</html>