<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign IN</title>
<link rel="stylesheet" type="text/css" href="styleOne.css">
<style type="text/css">
	.sel_one {
/* 		display: block; */
		margin: 4em auto 1em;
		background-color: hsl(60deg 80% 90%);
		border: 1px solid yellow;
		width:  800px;
		border-radius: 6px;
	 }
	 .form_design {
	 	display: grid;
	 	padding: 2em 2em;
	 	padding-bottom: 3em;
	 }
	 .form_design > input { 
	 	display: flex;
	 	margin-top: 0.3em; 
	 	background-color: transparent;
	 	border: 1px solid purple;
	 	border-radius: 5px;
	 	height: 2em;
	 }
	 .form_design > label {
	 	
		margin-top: 0.5em;
	}
</style>
</head>
<body>

	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="sign_in" name="page" />
	</jsp:include>

	<%
	String uname = request.getParameter("user_name");
	String pass = request.getParameter("pass_user");
	%>

	<%
	if (uname == null | pass == null) {
	%>

	<main class="">
		<section class="sel_one">
			<h1 class="">Registration</h1>
		</section>

		<section class="sel_one" style=" margin-top: 0;">
			<form action="Sign_in.jsp" class="form_design">
				<label>User Name :</label> 
				<input type="text"name="user_name" placeholder="User Name"> 
				<label>Password: </label> 
				<input type="password" name="pass_user" placeholder="Password"> 
				<input type="submit" value="Sign in" 
				style="background-color: skyblue;
					border: 1px solid purple;
					border-radius: 5px;
					margin-top: 1em;
					width: 6rem;
				">
			</form>
		</section>

	</main>

	<%
	} else if ("thant".equals(uname) && "123".equals(pass)) {
	%>

	<main>
		<div>
			<div>
				Hello
				<%=uname + " "%>Congratulation
			</div>
			<jsp:forward page="UserPage.jsp">
				<jsp:param value="<%=uname%>" name="page" />
			</jsp:forward>
		</div>
	</main>

	<%
	} else {
	%>

	<main>
		<div>
			<div>user name or password incorrect!!!!</div>
			<a href="Sign_up.jsp">Try Again</a>
		</div>
	</main>

	<%
	}
	%>
</body>
</html>