<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title>Registrar</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<!-- Le styles -->
<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css" />
<!--link href="<c:url value="resources/css/bootstrap-responsive.css"/> rel="stylesheet" /-->
<style type="text/css">
body {
	background-color: #f5f5f5;
}

.form-signin {
	max-width: 300px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}
</style>
</head>

<body onload='document.loginForm.username.focus();'>
	<nav class="navbar">
	<div class="container-fluid">
		<div class="navbar-header">
			<ul class="nav navbar-nav">
				<li><a href="#" class="navbar-brand">SIPROSOAR</a><img
					src="<c:url value="/resources/img/Logo_SS.png" />"
					style="height: 30px; width: 30px; margin-top: 10px"></li>
			</ul>
		</div>
	</div>
	</nav>

	<div class="container">

		<form name='loginForm'
			action="<c:url value='/j_spring_security_check' />" method="POST"
			class="form-signin">
			<h2 class="form-signin-heading">Iniciar sesion</h2>
			<label for="inputEmail" class="sr-only">Email address</label> <input
				type="text" name='username' class="form-control"
				placeholder="Ejemplo" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" name='password' class="form-control"
				placeholder="Contraseña" required>
			<div class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Recuerdame
				</label>
			</div>
			<div>
				<c:if test="${not empty error}">
					<div class="error">Usuario o password inválido</div>
					<div class="error">${error}</div>
				</c:if>
				<c:if test="${not empty msg}">
					<div class="msg">Ha cerrado la sesión correctamente</div>
					<div class="msg">${msg}</div>
				</c:if>
			</div>
			<input class="btn btn-lg btn-primary btn-block" name="submit"
				type="submit" value="Ingresar" />
			<!--a class="btn btn-lg btn-primary btn-block" type="submit"
				href="Modulos.html">Ingresar</a -->
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>

	</div>

	<footer>
	<div class="container-fluid" id="piepagina" style="margin-top: 250px">
		<div class="row">
			<div class="col-md-2">
				<a href="http://www.cipav.org.co/"><img
					src="http://imageshack.com/a/img540/1305/HhrNZx.png"
					style="height: 40px; width: 40px"></a> <a
					href="www.arauca-arauca.gov.co/"><img
					src="http://imageshack.com/a/img537/2955/XyXxZK.png"
					style="height: 40px; width: 80px"></a>
			</div>
			<div class="col-md-4 pull-right"
				style="background-color: #228B22; border-radius: 5px;">
				<p
					style="float: right; color: white; font-size: 11px; margin-bottom: -1px">Copyrigth
					alcaldia de Arauca 2014. http://www.arauca-arauca.gov.co</p>
				<p
					style="float: right; color: white; font-size: 11px; margin-bottom: -1px">
					<span class="glyphicon glyphicon-envelope"></span> Cra 21 # 19- 18
					Barrio la Esperanza
				</p>
				<p
					style="float: right; color: white; font-size: 11px; clear: both; margin-bottom: -2px">Sistemas@arauca.gov.co</p>
			</div>
		</div>
	</div>

	</footer>

	<!-- /container -->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery-1.11.2.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/bootstrap.js" />"></script>

</body>
</html>