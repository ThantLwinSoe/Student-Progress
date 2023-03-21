<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up Page</title>
<link href="styleOne.css" type="text/css" rel="stylesheet">
<style type="text/css">
	section { 
		margin: 2rem auto;
		width: 800px;
		background: skyblue;
		padding: 1.2rem;
		border-radius: 1rem;
	}
	form {
		display: grid;
 		grid-template-columns: 400px; 
 		grid-gap: 0.4rem; 
	
	}
	form > input {
		background-color: transparent;
		border: 1px solid purple;
		border-radius: 4px;
		height: 1.5rem;
		margin-bottom: 0.4rem;	
	}
	button {
		padding: 0.4rem 1rem;
		background-color: lightgreen;
		border-radius: 4px;
		border: none;
		box-shadow: 1px 1px 4px gray;
	}
	button:hover {
		background-color: blue; 
	}
</style>
</head>
<body>
	<jsp:include page="NavBarTest.jsp">
		<jsp:param value="sign_up" name="page"/>
	</jsp:include>
	<main>
		<section>
			<h1>Sign Up page</h1>
		</section>
		
		<section>
			<form action="useBean.jsp" method="post">
					<label>Name:</label>
					<input type="text" name="username" placeholder="Name">
					<label>Phone:</label>
					<input type="tel" name="phone" placeholder="Phone">
					<label>Email:</label>
					<input type="email" name="email" placeholder="Email">
					<label>Password :</label>
					<input type="password" name="passwd" placeholder="Password">
					<div>
						<button type="submit">Send</button>
					</div>																	
			</form>
		</section>
		
	</main>
</body>
</html>