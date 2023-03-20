<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Page One</title>
<link type="text/css" rel="stylesheet" href="styleOne.css">
</head>
<body>
		<%String str = request.getParameter("page"); %>
		<jsp:include page="NavBarTest.jsp">
			<jsp:param value="<%=str%>" name="uacc"/>
		</jsp:include>
		<main>
			<h1>I am <%=str%></h1>			
		</main>

		
</body>
</html>