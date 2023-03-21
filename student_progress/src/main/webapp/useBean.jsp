<%@ page import="com.jdc.tls.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Use Bean JSP</title>
<link type="text/css" rel="stylesheet" href="styleOne.css">
</head>
<body>
	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="action" name="page"/>
	</jsp:include>
	
	<main>
		<h1>Use Bean Action</h1>
		<jsp:useBean id="user" scope="page" class="com.jdc.tls.User"></jsp:useBean>
		<jsp:setProperty property="user_name" param="username" name="user"/>
		<jsp:setProperty property="user_phone" param="phone" name="user"/>
		<jsp:setProperty property="user_email" param="email" name="user"/>
		
		<table width="50%">
			<tr>
				<td>Name</td>
				<td> <jsp:getProperty property="user_name" name="user"/></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td> <jsp:getProperty property="user_phone" name="user"/></td>
			</tr>
			<tr>
				<td>Email</td>
				<td> <jsp:getProperty property="user_email" name="user"/></td>
			</tr>						
		</table>
		
	</main>
</body>
</html>