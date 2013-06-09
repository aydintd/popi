<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.popi.beans.User" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<jsp:useBean id="user" class="com.popi.beans.User" scope="session" />

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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giriş</title>
</head>
<body>

<%-- <c:if test="${ !err1.empty }"> --%>
<!-- 	<p> -->
<%-- 		<c:out value="${ err1 }"></c:out> --%>
<!-- 	</p> -->
<%-- </c:if> --%>

<div class="row">

	<article class="form-title">Üye Girişi</article>
	<form class="form-horizontal form-signin" action="logon.jsp" method="post">

		<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
		%>
		<div class="alert alert-error">
			<center>
				<strong><%=error%></strong>
			</center>
		</div>
		<%
			}
		%>
		<div class="control-group">
				<label class="control-label" for="inputUser">Kullanıcı Adı</label>
				<div class="controls">
					<input type="text" id="inputEmail" name="email" placeholder="Email">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label" for="inputPassword">Parola</label>
				<div class="controls">
					<input type="password" id="inputPassword" name="passwd"
						placeholder="Parola">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-inverse">Giriş</button>
				</div>
		</div>
	</form>
</div>


</body>
</html>