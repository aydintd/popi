<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="style/style.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-min.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap.js"></script>
<script src="bootstrap/jquery-1.9.1.min.js"></script>
<link href="bootstrap/style.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Popi</title>
</head>
<body>
<jsp:useBean id="user" class="com.popi.beans.User" scope="session" />

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<div class="span10 offset1">
					<button type="button" class="btn btn-navbar" data-toggle="collapse"
						data-target=".nav-collapse">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="brand" href="./index.jsp">Popi</a>
					<div class="nav-collapse collapse">
						<div class="navbar-form pull-right">
							<ul class="nav">
								<li><a href="./login_form.jsp"><i class="icon-pencil"></i></a></li>
								
								<%
									if (user.getUsername() != null) {
								%>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">${user.getUsername()} <b class="caret"></b></a>
									<ul class="dropdown-menu">
								<li><a href="./logout"><i class="icon-off"> </i>Çıkış</a></li>
									</ul></li>
								<%
									} else {
								%>
								<li><a href="./login_form.jsp" class="usermenu">
<%-- 								<img alt="Avatar" src="<%=root_url%>/bootstrap/img/avatar.png"> --%>
								<i class="icon-user"></i> 
								</a></li>
								<%
									}
								%>
							</ul>

						</div>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="min-height: 500px;">
</body>
</html>