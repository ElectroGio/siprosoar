<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Registrar</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" />
<link href="<c:url value="/resources/css/bootstrap-responsive.css" />"
	rel="stylesheet" />
</head>

<body>
	<nav class="navbar navbar-inverse">
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
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img src="<c:url value="/resources/img/Logo_Contratacion.png"/>"
					style="height: 30px; widht: 30px; border: 0" > <a
					href="contratacion">
					<h5 class="text-center" style="clear: both">Contratacion</h5>
				</a>
			</div>
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img src="<c:url value="/resources/img/Logo_presupuesto.png"/>"
					style="height: 30px; widht: 30px" > <a href="presupuesto">
					<h5 class="text-center">Presupuesto</h5>
				</a>
			</div>
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img src="<c:url value="/resources/img/Logo_BP.png"/>" style="height: 30px; widht: 30px" >
				<a href="bancoproyectos">
					<h5 class="text-center">Banco de proyectos</h5>
				</a>
			</div>
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img
					src="<c:url value="/resources/img/Logo_Planificacion.png" />" style="height:30px; widht:30px" >
				<a href="#">
					<h5 class="text-center">Planeacion</h5>
				</a>
			</div>
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img src="<c:url value="/resources/img/Logo_PS.png" />" style="height: 30px; widht: 30px" >
				<a href="programassociales">
					<h5 class="text-center">Programas sociales</h5>
				</a>
			</div>
			<div class="col-xs-12"
				style="border-radius: 5px; background-color: #F5F5F5; padding-top: 5px; margin-bottom: 10px"
				align="center">
				<img src="<c:url value="/resources/img/Logo_CP.png" />" style="height: 30px; widht: 30px" >
				<a href="#">
					<h5 class="text-center">Localizacion predial</h5>
				</a>
			</div>
		</div>
	</div>
	<footer>
		<div class="container-fluid" id="piepagina">
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
</body>

</html>