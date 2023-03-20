<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Page</title>
<link href="styleOne.css" type="text/css" rel="stylesheet">
</head>
<body>
	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="action" name="page"/>
	</jsp:include>
</body>
</html>