<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String pageId = request.getParameter("page");
%>

<header class="header_bar">

	<div class="nav_title">Student Progress</div>

	<div class="nav_bar ">
		<ul class="nav_bar nav_position">
			<%
			if ("home".equals(pageId)) {
			%>
			<li><a class="nav_list active" href="Home.jsp">Home</a></li>
			<li><a class="nav_list" href="Sign_in.jsp">Sign in</a></li>
			<li><a class="nav_list" href="Sign_up.jsp">Sign up</a></li>
			<li><a class="nav_list" href="Action.jsp">Action</a></li>
			<li><a class="nav_list" href="About.jsp">About</a></li>
			<%
			} else if ("sign_in".equals(pageId)) {
			%>
			<li><a class="nav_list" href="Home.jsp">Home</a></li>
			<li><a class="nav_list active" href="Sign_in.jsp">Sign in</a></li>
			<li><a class="nav_list" href="Sign_up.jsp">Sign up</a></li>
			<li><a class="nav_list" href="Action.jsp">Action</a></li>
			<li><a class="nav_list" href="About.jsp">About</a></li>
			<%
			} else if ("sign_up".equals(pageId)) {
			%>
			<li><a class="nav_list" href="Home.jsp">Home</a></li>
			<li><a class="nav_list" href="Sign_in.jsp">Sign in</a></li>
			<li><a class="nav_list active" href="Sign_up.jsp">Sign up</a></li>
			<li><a class="nav_list" href="Action.jsp">Action</a></li>
			<li><a class="nav_list" href="About.jsp">About</a></li>
			<%
			} else if ("about".equals(pageId)) {
			%>
			<li><a class="nav_list" href="Home.jsp">Home</a></li>
			<li><a class="nav_list" href="Sign_in.jsp">Sign in</a></li>
			<li><a class="nav_list" href="Sign_up.jsp">Sign up</a></li>
			<li><a class="nav_list" href="Action.jsp">Action</a></li>
			<li><a class="nav_list active" href="About.jsp">About</a></li>
			<%
			} else if ("action".equals(pageId)) {
			%>
			<li><a class="nav_list" href="Home.jsp">Home</a></li>
			<li><a class="nav_list" href="Sign_in.jsp">Sign in</a></li>
			<li><a class="nav_list" href="Sign_up.jsp">Sign up</a></li>
			<li><a class="nav_list active" href="Action.jsp">Action</a></li>
			<li><a class="nav_list" href="About.jsp">About</a></li>
			<%
			} else if ("thant".equals(pageId)) {
			%>
			<li><a class="nav_list active user" href="#"><%=pageId%></a></li>
			<li><a class="nav_list" href="Home.jsp">Go To Home</a></li>
			<%
			}
			%>
		</ul>
	</div>

</header>
