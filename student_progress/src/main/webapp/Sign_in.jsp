<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign IN</title>
<link rel="stylesheet" type="text/css" href="styleOne.css">
</head>
<body>

	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="sign_in" name="page" />
	</jsp:include>
	
	<% 
		String uname = request.getParameter("user_name"); 
		String pass = request.getParameter("pass_user");
	%>
	
	<% if( uname == null | pass == null ) { %>

	<main>
		<h1>Sign in page</h1>
		<form action="Sign_in.jsp">
			<label>User Name :</label><br> <input type="text"
				name="user_name" placeholder="User Name"> <label>Password
				: </label><br> <input type="password" name="pass_user"
				placeholder="Password"> <input type="submit" value="Sign in">
		</form>
	</main>
	
	<% } else if ("thant".equals(uname) && "123".equals(pass)) { %>
		
		<main>
			<div>
				<div>Hello <%=uname + " "%>Congratulation</div>
				<jsp:forward page="UserPage.jsp">
					<jsp:param value="<%=uname%>" name="page"/>
				</jsp:forward>
			</div>
		</main>
		
	<% } else {%>
		
		<main>
			<div>
				<div>user name or password incorrect!!!!</div>
				<a href="Sign_up.jsp">Try Again</a>
			</div>
		</main>
		
	<% } %>
</body>
</html>