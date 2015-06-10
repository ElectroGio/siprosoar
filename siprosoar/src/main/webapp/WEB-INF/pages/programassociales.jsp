<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet" />
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" />
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-theme.css"/>" />
<title>FONVIDA</title>

<!-- Bootstrap Core CSS -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
</style>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/simple-sidebar.css"/>" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<nav class="navbar navbar-default" style="margin-bottom: 0">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#barra2">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<li><a href="modulos" class="navbar-brand">SIPROSOAR</a><img
					src="<c:url value="/resources/img/Logo_SS.png"/>"
					style="height: 30px; width: 30px; margin-top: 10px; margin-left: -10px"></li>
			</div>
			<div class="collapse navbar-collapse" id="barra2">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle">Modulos de sistema<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Programas sociales</a></li>
							<li><a href="contratacion">Contratacion</a></li>
							<li><a href="presupuesto">Presupuesto</a></li>
							<li><a href="bancoproyectos">Banco de proyectos</a></li>
							<li><a href="planeacion">Planeacion </a></li>
							<li><a href="localizacionpredial">Localizacion predial</a></li>
						</ul></li>
					<li><img src="<c:url value="/resources/img/Logo_PS.png"/>"
						style="height: 30px; width: 30px; margin: 10px 5px 0px 10px">
					</li>
					<li><a class="navbar-brand"> Programas sociales</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"><span class="glyphicon glyphicon-user"></span>
							Usuario admin<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu"
							style="padding: 0px 0px 0px 0px">
							<li><button type="button" class="btn btn-sm btn-default"
									data-toggle="modal" data-target="#usuario" style="width: 100%">Editar
									usuario</button></li>
						</ul></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle"><span class="glyphicon glyphicon-cog"></span>
							Configuracion<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">Configuracion</a></li>
							<li><a href="#">Privacidad</a></li>
							<li><a href="#">Ayuda</a></li>
							<li class="divider"></li>
							<li><a href="javascript:formLogout()">Cerrar sesi&oacute;n</a></li>
						</ul></li>
				</ul>
				<legend
					style="background-color: red; height: 3px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
				<div class="row">
					<div class="col-xs-7">
						<h4>
							<img src="<c:url value="/resources/img/Logo_FONVIDA.png"/>"
								style="height: 40px; width: 66px; margin: -5px 0px 0px -15px">
							FONVIDA - Fondo de vivienda y desarrollo del municipio de Arauca
						</h4>
					</div>
					<div class="col-xs-3 pull-right">
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; margin-top: 5px">
							Funcionario: <strong> Monica Trespalacios Castillo</strong>
						</p>
						<p style="float: right; font-size: 10px; margin-bottom: -1px">
							Cargo: <strong> Directora FONVIDA</strong>
						</p>
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; clear: both">
							Dependencia: <strong> FONVIDA</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="modal fade bs-example-modal-sm" id="usuario" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog bs-example-modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Editar usuario</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-3" style="padding: 5px 5px 5px 5px">
							<div class="form-group">
								<label for="imagen"><img
									src="<c:url value="/resources/img/Foto_Perfil_Fonvida.png"/>" width="120" height="160"></label>
							</div>
						</div>
						<div class="col-md-6">
							<form class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-4 control-label">Funcionario</label>
									<div class="col-xs-8">
										<input type="text" value="Monica Trespalacios"
											class="form-control input-sm">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Tipo</label>
									<div class="col-xs-8">
										<input type="text" value="Usuario director"
											class="form-control input-sm">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Cargo</label>
									<div class="col-xs-8">
										<input type="text" value="Directora FONVIDA"
											class="form-control input-sm">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Entidad</label>
									<div class="col-xs-8">
										<input type="text" value="FONVIDA"
											class="form-control input-sm">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">Dependencia</label>
									<div class="col-xs-8">
										<input type="text" value="Secretaria de gobierno"
											class="form-control input-sm">
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">email</label>
									<div class="col-xs-8">
										<input type="text" value="arq.monicatc@gmail.com"
											class="form-control input-sm">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
					<button type="button" class="btn btn-primary">Guardar
						cambios</button>
				</div>
			</div>
		</div>
	</div>


	<div id="wrapper">

		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="nav nav-pills"
				style="margin: 20px 0px 0px 0px; background-color: black; border-radius: 5px; width: 220px">
				<li><a href="#ModulosPagina" data-toggle="tab"> <span
						class="glyphicon glyphicon-folder-open"
						style="margin: 8px 0px 8px 0px"></span>
				</a></li>
				<li><a href="#Filtrospagina" data-toggle="tab"><span
						class="glyphicon glyphicon-filter" style="margin: 8px 0px 8px 0px"></span></a>
				</li>
				<li><a href="#" data-toggle="tab"><span
						class="glyphicon glyphicon-refresh"
						style="margin: 8px 0px 8px 0px"></span></a></li>
				<li><a href="#" data-toggle="tab"><span
						class="glyphicon glyphicon-th" style="margin: 8px 0px 8px 0px"></span></a>
				</li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="ModulosPagina">
					<div class="panel-group" id="acordion" role="tablist"
						aria-multiselectable="true" style="width: 220px">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="headinguno">
								<h4 class="panel-title">
									<a data-toggle="collapse" data-parent="#acordion"
										href="#collapseuno" aria-expanded="false"> Educacion <span
										class="badge pull-right">6</span>
									</a>
								</h4>
							</div>
							<div id="collapseuno" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headinguno">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li class="active"><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Restaurantes</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Transporte</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Universitarios</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Recreacion
												y deportes</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Ludoteca</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Biblioteca</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingdos">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsedos"
										aria-expanded="false"> Salud <span
										class="badge pull-right">2</span>
									</a>
								</h4>
							</div>
							<div id="collapsedos" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingdos">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Aseguramiento</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Salud
												publica</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingtres">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsetres"
										aria-expanded="false"> Planeacion <span
										class="badge pull-right">2</span>
									</a>
								</h4>
							</div>
							<div id="collapsetres" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingtres">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">SISBEN</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Estratificacion</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingcuatro">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsecuatro"
										aria-expanded="false"> Gobierno <span
										class="badge pull-right">12</span>
									</a>
								</h4>
							</div>
							<div id="collapsecuatro" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingcuatro">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Familias
												en accion</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Discapacidad</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Indigenas</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Tercera
												edad</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Victimas</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Equidad
												genero</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Afrocolombianos</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Jovenes
												a lo bien</a></li>
										<li><a href="comisariadefamilia"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Comisaria
												de familia</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Cultura
												ciudadana</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Infancia
												y adolescencia</a></li>
										<li><a href="inspeccionpolicia"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Inspeccion
												de policia</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingcinco">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsecinco"
										aria-expanded="false"> FONVIDA <span
										class="badge pull-right">2</span>
									</a>
								</h4>
							</div>
							<div id="collapsecinco" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingcinco">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#BienvenidaUsuario" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">VIS ()</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">VIP ()
												Urbana y rural</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingseis">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapseseis"> Secretarias
										<span class="badge pull-right">3</span>
									</a>
								</h4>
							</div>
							<div id="collapseseis" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingseis">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Agricola</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Ganadera</a></li>
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Medio
												ambiente</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="Filtrospagina">
					<div class="panel-group" id="acordion2" role="tablist"
						aria-multiselectable="true" style="width: 220px">
						<div class="panel panel-default">
							<div class="panel-heading" role="tab" id="filtroheading1">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion2" href="#filtro1" aria-expanded="false">
										Filtro basico </a>
								</h4>
							</div>
							<div id="filtro1" class="panel-collapse collapse" role="tabpanel"
								aria-labelledby="filtroheading1">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<form style="margin: 0px 7px 0px 7px">
										<div class="form-group">
											<label>Nombre</label> <input type="text"
												class="form-control input-sm" placeholder="Nombre">
										</div>
										<div class="form-group">
											<label>Apellido</label> <input type="text"
												class="form-control input-sm" placeholder="Apellido">
										</div>
										<div class="form-group">
											<label>Nacionalidad</label> <input type="text"
												class="form-control input-sm" placeholder="Nacionalidad">
										</div>
										<div class="form-group">
											<label>Tipo de documento</label> <select
												class="form-control input-sm">
												<option>TI= Tarjeta de identidad</option>
												<option>CC= Cedula de ciudadania</option>
												<option>CE= Cedula de extranjeria</option>
												<option>RC= Registro civil</option>
											</select>
										</div>
										<div class="form-group">
											<label># de documento</label> <input
												class="form-control input-sm" placeholder="#">
										</div>
										<div class="form-group">
											<label>SISBEN</label> <select class="form-control input-sm">
												<option>1</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
										<div class="form-group">
											<label>Puntaje</label> <input class="form-control input-sm"
												placeholder="#">
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="modal fade bs-example-modal-lg" id="Postulaciones"
				tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
				aria-hidden="true">
				<div class="modal-dialog bs-example-modal-sm">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">Nueva postulacion</h4>
						</div>
						<div class="modal-body">
							<div class="row">
								<div class="col-lg-12">
									<form>
										<div class="form-group col-lg-5">
											<label class="control-label">Puntaje sisben</label> <input
												class="input-sm form-control" placeholder="#">
										</div>
										<div class="form-group col-lg-5">
											<label class="control-label">Fecha de inscripcion</label> <input
												class="input-sm form-control" placeholder="DD/MM/AAAA">
										</div>
									</form>
								</div>
								<div class="col-lg-4"></div>
								<div class="col-lg-8">

									<ul class="list-inline">
										<li style="margin-left: 40px; margin-right: 40px"><h5>
												<strong>Variables</strong>
											</h5></li>
										<li><h5>
												<strong>Sub Totales</strong>
											</h5></li>
									</ul>
									<form class="form-horizontal">
										<a href="#" data-toggle="tooltip" data-placement="left"
											data-original-title="B1= Puntaje del SISBEN para los hogares que se postulen, se determinara conforme al puntaje SISBEN del respectivo jefe de hogar."
											style="font-size: 20px; text-color: red; margin-top: 0px"
											class="btn btn-link">B1</a>
										<div class="row" style="margin-top: -60px">
											<div class="form-group col-lg-4"
												style="margin-left: 40px; margin-right: 0px">
												<label class="control-label">Puntaje sisben</label> <input
													class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4" style="margin-top: 23px">
												<input class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4"
												style="margin-top: 25px; padding-left: 20px">
												<p>
													<span class="glyphicon glyphicon-ok" aria-hidden="true"
														style="border-radius: 100%; border: 1px solid #DCDCDC; padding: 3px; color: green"></span>Cumple
												</p>
											</div>
										</div>
									</form>
									<form class="form-horizontal">
										<a href="#" data-toggle="tooltip" data-placement="left"
											data-original-title="B2= Si el hogar esta conformado por 2 miembros, B2 es igual a 1. Si el hogar esta conformado por 3 miembros, B2 es igual a 2. Asi consecutivamente"
											style="font-size: 20px; text-color: red; margin-top: 0px"
											class="btn btn-link">B2</a>
										<div class="row" style="margin-top: -60px">
											<div class="form-group col-lg-4"
												style="margin-left: 40px; margin-right: 0px">
												<label class="control-label">Miembros hogar</label> <input
													class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4" style="margin-top: 23px">
												<input class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4"
												style="margin-top: 25px; padding-left: 20px">
												<p>
													<span class="glyphicon glyphicon-ok" aria-hidden="true"
														style="border-radius: 100%; border: 1px solid #DCDCDC; padding: 3px; color: green"></span>Cumple
												</p>
											</div>
										</div>
									</form>
									<form class="form-horizontal">
										<a href="#" data-toggle="tooltip" data-placement="left"
											data-original-title="B3= Condición de mujer u hombre cabeza de familia, hogares con miembro hogar discapacitado, hogares con miembro hogar mayor de 65 años. Si tiene alguna de estas condiciones el hogar, B3 es igual a 1. Si no, B3 es igual a O."
											style="font-size: 20px; text-color: red; margin-top: 0px"
											class="btn btn-link">B3</a>
										<div class="row" style="margin-top: -60px">
											<div class="form-group col-lg-4"
												style="margin-left: 40px; margin-right: 0px">
												<label class="control-label">Condicion</label> <input
													class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4" style="margin-top: 23px">
												<input class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4"
												style="margin-top: 25px; padding-left: 20px">
												<p>
													<span class="glyphicon glyphicon-ok" aria-hidden="true"
														style="border-radius: 100%; border: 1px solid #DCDCDC; padding: 3px; color: green"></span>Cumple
												</p>
											</div>
										</div>
									</form>
									<form class="form-horizontal">
										<a href="#" data-toggle="tooltip" data-placement="left"
											data-original-title="B4= Se obtiene de dividir el ahorro total de los miembros de la familia, expresado en pesos, sobre el puntaje del SISBEN"
											style="font-size: 20px; text-color: red; margin-top: 0px"
											class="btn btn-link">B4</a>
										<div class="row" style="margin-top: -60px">
											<div class="form-group col-lg-4"
												style="margin-left: 40px; margin-right: 0px">
												<label class="control-label">Relacion ahorro</label> <input
													class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4" style="margin-top: 23px">
												<input class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4"
												style="margin-top: 25px; padding-left: 20px">
												<p>
													<span class="glyphicon glyphicon-ok" aria-hidden="true"
														style="border-radius: 100%; border: 1px solid #DCDCDC; padding: 3px; color: green"></span>Cumple
												</p>
											</div>
										</div>
									</form>
									<form class="form-horizontal">
										<a href="#" data-toggle="tooltip" data-placement="left"
											data-original-title="B5= Los hogares que presenten alguna de las siguientes condiciones, a saber: madre comunitaria del Instituto de Bienestar Familiar, ICBF, hogares que demuestren tener ahorro programado contractual con evaluación crediticia favorable previa, hogares con miembros afro-colombianos o indígenas, tendrán un puntaje adicional al de su calificación del tres por ciento (3%)."
											style="font-size: 20px; text-color: red; margin-top: 0px"
											class="btn btn-link">B5</a>
										<div class="row" style="margin-top: -60px">
											<div class="form-group col-lg-4"
												style="margin-left: 40px; margin-right: 0px">
												<label class="control-label">Tiempo de ahorro</label> <input
													class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4" style="margin-top: 23px">
												<input class="input-sm form-control" placeholder="#">
											</div>
											<div class="form-group col-lg-4"
												style="margin-top: 25px; padding-left: 20px">
												<p>
													<span class="glyphicon glyphicon-ok" aria-hidden="true"
														style="border-radius: 100%; border: 1px solid #DCDCDC; padding: 3px; color: green"></span>Cumple
												</p>
											</div>
										</div>
									</form>
									<form class="form-horizontal">
										<div class="row" style="margin-left: 60px">
											<div class="col-lg-3" style="margin-right: 3px">
												<a href="#" class="btn btn-success btn-sm">Calificar</a>
											</div>
											<div class="col-lg-4">
												<input class="input-sm form-control" placeholder="#">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary">Postular</button>
							<button type="button" class="btn btn-primary">Guardar
								cambios</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cerrar</button>
						</div>
					</div>
				</div>
			</div>
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header" style="padding: -10px 0px -10px 0px">
						<li><a href="#menu-toggle" class="navbar-brand"
							id="menu-toggle"><span
								class="glyphicon glyphicon-folder-close"></span></a></li>
					</div>
					<ul class="nav navbar-nav" style="padding: -10px 0px -10px 0px">
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle"><span
								class="glyphicon glyphicon-plus-sign"></span> Usuario <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#FormularioUsuario2" data-toggle="tab">Nuevo
										usuario</a></li>
								<li><a href="#ConsultaUsuario" data-toggle="tab">Consultar
										usuario</a></li>
								<li><a href="#" data-toggle="tab">Listar usuarios</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Postulaciones <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#NuevaPostulacion" data-toggle="tab">Nueva
										postulacion</a></li>
								<li><a href="#">Consultar postulaciones</a></li>
								<li><a href="#">Listar postulaciones</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Beneficiados <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Consultar beneficiados</a></li>
								<li><a href="#">Listar subsidios</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Remisiones <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#Nuevaremision" data-toggle="tab">Nueva
										remision</a></li>
								<li><a href="#" data-toggle="tab">Consultar remision</a></li>
								<li><a href="#">Listar remision</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Certificaciones <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#NuevaCertificacion" data-toggle="tab">Nueva
										certificacion</a></li>
								<li><a href="#">Consultar certificacion</a></li>
								<li><a href="#">Listar certificacion</a></li>
							</ul></li>
						<li><a href="#">Reportes y estadisticas</a></li>
					</ul>
				</div>
			</nav>

			<div class="tab-content">
				<div class="tab-pane" id="FormularioUsuario2">

					<ul class="nav nav-tabs nav-justified">
						<li class="active"><a href="#menu1" data-toggle="tab"><span
								class="glyphicon glyphicon-home"></span> Condicion
								socioeconomica</a></li>
						<li><a href="#menu3" data-toggle="tab"><span
								class="glyphicon glyphicon-heart-empty"></span> Informacion
								grupo familiar</a></li>
						<li><a href="#menu2" data-toggle="tab"><span
								class="glyphicon glyphicon-exclamation-sign"></span> Enfoque
								diferencial</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="menu1">
							<div class="row" style="margin: 10px 0px 0px 0px">
								<div class="col-md-6">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="parentesco" class="col-sm-4 control-label">Parentesco</label>
											<div class="col-sm-8">
												<select class="form-control input-sm" id="parentesco">
													<option>Jefe o cabeza de hogar</option>
													<option>Conyugue o compañero(a) permanente</option>
													<option>Hijo o hija</option>
													<option>Padre o madre</option>
													<option>Nieto(a)</option>
													<option>Hermano(a)</option>
													<option>Yerno o nuera</option>
													<option>Abuelos</option>
													<option>Suegros</option>
													<option>Tios</option>
													<option>Sobrinos</option>
													<option>Primos</option>
													<option>Cuñados</option>
													<option>Otros parientes</option>
													<option>No parientes</option>
													<option>Servicio dom&eacute;tico o cuidandero</option>
													<option>Pariente servicio dom&eacute;tico o
														cuidandero</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="rol" class="col-sm-4 control-label">Etnia</label>
											<div class="col-sm-8">
												<select class="form-control input-sm" id="rol">
													<option>Indigena</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="nombre1" class="col-sm-4 control-label">Primer
												Nombre</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="nombre1"
													placeholder="Primer Nombre">
											</div>
										</div>
										<div class="form-group">
											<label for="nombre2" class="col-sm-4 control-label">Segundo
												Nombre</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="nombre2"
													placeholder="Segundo Nombre">
											</div>
										</div>
										<div class="form-group">
											<label for="apellido1" class="col-sm-4 control-label">Primer
												Apellido</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="apellido1"
													placeholder="Primer Apellido">
											</div>
										</div>
										<div class="form-group">
											<label for="apellido2" class="col-sm-4 control-label">Segundo
												Apellido</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="apellido2"
													placeholder="Segundo Apellido">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Dep. nacimiento</label>
											<div class="col-lg-4">
												<select class="input-sm form-control">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Mun. nacimiento</label>
											<div class="col-lg-4">
												<input class="form-control input-sm" placeholder="Municipio">
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label for="nacionalidad" class="col-sm-4 control-label">Nacionalidad</label>
											<div class="col-sm-3">
												<input class="form-control input-sm" id="nacionalidad"
													placeholder="Pais">
											</div>
											<label for="extranjero" class="col-sm-2 control-label">Extranjero?</label>
											<div class="col-sm-3">
												<select class="form-control input-sm" id="extranjero">
													<option>Si</option>
													<option>No</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-4 control-label">Genero</label>
											<div class="col-lg-4">
												<select class="input-sm form-control">
													<option>Masculino</option>
													<option>Femenino</option>
												</select>
											</div>
											<label class="col-lg-2 control-label">Estrato</label>
											<div class="col-lg-2">
												<select class="form-control input-sm">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="LugarNacimiento" class="col-sm-4 control-label">Lugar
												Nacimiento</label>
											<div class="col-sm-4">
												<select class="form-control input-sm" id="LugarNacimiento"
													placeholder="#">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>

											<div class="col-sm-4">
												<input class="form-control input-sm" id="LugarNacimiento"
													placeholder="Municipio">
											</div>
										</div>

										<div class="form-group">
											<label for="TipoDocumento" class="col-sm-4 control-label">Tipo
												Documento</label>
											<div class="col-xs-3">
												<select class="form-control input-sm" id="TipoDocumento"placeholder"TD">
													<option>MS</option>
													<option>RC</option>
													<option>TI</option>
													<option>CC</option>
													<option>CE</option>
													<option>PA</option>
													<option>CD</option>
													<option>AS</option>
												</select>
											</div>
											<label for="Doc" class="col-sm-1  control-label">Doc</label>
											<div class="col-xs-4">
												<input class="form-control input-sm" id="Doc"
													placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Dep. expedicion</label>
											<div class="col-lg-4">
												<select class="input-sm form-control">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Mun. expedicion</label>
											<div class="col-lg-4">
												<input class="form-control input-sm" placeholder="Municipio">
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Dep. residencia</label>
											<div class="col-lg-4">
												<select class="input-sm form-control">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Mun. residencia</label>
											<div class="col-lg-4">
												<input class="form-control input-sm" placeholder="Municipio">
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
									</form>
								</div>


								<div class="col-md-6" style="padding-left: 0px">
									<form class="form-horizontal">
										<div class="form-group">
											<label class="control-label col-lg-4">Cod
												beneficiario</label>
											<div class="col-lg-3">
												<input class="form-control input-sm" placeholder="#">
											</div>
											<label class="col-lg-2 control-label">Cod flia.</label>
											<div class="col-lg-3">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label for="Sisben" class="col-sm-4 control-label">Sisben</label>
											<div class="col-sm-3">
												<select type="" class="form-control input-sm" id="Sisben"
													placeholder="">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
												</select>
											</div>
											<label for="Puntaje" class="col-sm-2 control-label">Puntaje</label>
											<div class="col-sm-3">
												<input type="" class="form-control input-sm" id="Puntaje"
													placeholder="Puntaje">
											</div>
										</div>

										<div class="form-group">
											<label for="FechaNacimiento" class="col-sm-4 control-label">Fecha
												nacimiento</label>
											<div class="col-sm-5">
												<input type="" class="input-sm form-control"
													id="FechaNacimiento" placeholder="DD/MM/AA">
											</div>
											<label for="Edad" class="col-sm-1 control-label">Edad</label>
											<div class="col-sm-2">
												<input type="" class="input-sm form-control" id="Edad"
													placeholder="Edad">
											</div>
										</div>

										<div class="form-group">
											<label for="Ocupacion" class="col-sm-4 control-label">Ocupaci&oacute;n</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control" id="Ocupacion"
													placeholder="">
													<option>Estudiante</option>
													<option>Empleado</option>
													<option>Otro</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="EPS" class="col-sm-4 control-label">Nombre
												SIFA (EPS)</label>
											<div class="col-sm-4">
												<select type="" class="input-sm form-control" id="EPS"
													placeholder="">
													<option>Dusakawi</option>
													<option>Nueva EPS</option>
													<option>Otra</option>
												</select>
											</div>
											<label class="control-label col-lg-2">CodSIFA</label>
											<div class="col-lg-2">
												<input class="input-sm form-control" placeholder="#">
											</div>
										</div>

										<div class="form-group">
											<label for="EstadoCivil" class="col-sm-4 control-label">Estado
												Civil</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control"
													id="EstadoCivil" placeholder="Estado Civil">
													<option>Uni&oacute;n Libre</option>
													<option>Casado</option>
													<option>Viudo</option>
													<option>Separado o divorciado</option>
													<option>Soltero</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="NivelEducativo" class="col-sm-4 control-label">Nivel
												Educativo</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control"
													id="NivelEducativo">
													<option>Primaria</option>
													<option>Secundaria</option>
													<option>T&eacute;cnica</option>
													<option>Tecnol&oacute;gica</option>
													<option>Universidad</option>
													<option>Postgrado</option>
													<option>Ninguna</option>
													<option>Otra</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="IngresosMensuales" class="col-sm-4 control-label">Ingresos</label>
											<div class="col-sm-8">
												<input type="" class="input-sm   form-control"
													id="IngresosMensuales" placeholder="Ingresos Mensuales">
											</div>
										</div>


										<div class="form-group">
											<label for="Aseguramiento" class="col-sm-4 control-label">Aseguramieto</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control" id="Regimen"
													placeholder="Aseguramieto">
													<option>Contributivo</option>
													<option>Subsidiado</option>
													<option>Vinculado o No Afiliado al SGSSS</option>
													<option>Regimen Especial</option>
													<option>Desplazado afiliado al R&eacute;gimen
														contributivo</option>
													<option>Desplazado afiliado al R&eacute;gimen
														subsidiado</option>
													<option>Desplazado no asegurado</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Nombre inst.
												educativa</label>
											<div class="col-lg-4">
												<input class="form-control input-sm" placeholder="Nombre">
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Sede
												institucion</label>
											<div class="col-lg-4">
												<input class="form-control input-sm" placeholder="Nombre">
											</div>
											<label class="control-label col-lg-2">CodDane</label>
											<div class="col-lg-2">
												<input class="form-control input-sm" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Grado</label>
											<div class="col-lg-3">
												<select class="input-sm form-control">
													<option>Primero</option>
													<option>Segundo</option>
													<option>Tercero</option>
													<option>Cuarto</option>
													<option>Quinto</option>
													<option>Sexto</option>
													<option>Septimo</option>
													<option>Octavo</option>
													<option>Noveno</option>
													<option>Decimo</option>
													<option>Once</option>
												</select>
											</div>
											<label class="control-label col-lg-2">Zona</label>
											<div class="col-lg-3">
												<select class="input-sm form-control">
													<option>Rural</option>
													<option>Urbana</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Jornada</label>
											<div class="col-lg-3">
												<select class="input-sm form-control">
													<option>Mañana</option>
													<option>Tarde</option>
												</select>
											</div>
											<label class="control-label col-lg-2">Telefono</label>
											<div class="col-lg-3">
												<input class="input-sm form-control" placeholder="#">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Direccion</label>
											<div class="col-lg-8">
												<input class="input-sm form-control"
													placeholder="Av. Siempreviva">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-lg-4">Condicion
												especial</label>
											<div class="col-lg-8">
												<select class="input-sm form-control">
													<option>Adulto mayor</option>
													<option>Discapacidad</option>
													<option>Victima</option>
													<option>LGTBI</option>
													<option>Afrocolombiano</option>
													<option>Indigena</option>
													<option>Rom gitano</option>
													<option>Pobreza extrema</option>
													<option>Atencion a la mujer</option>
												</select>
											</div>
										</div>

									</form>
								</div>

								<div class="col-lg-12"
									style="margin-top: 10px; padding-top: 10px; border-top: 1px solid #DCDCDC">
									<div class="col-lg-3">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-target="#switch1"
												data-toggle="collapse">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-target="#switch1" data-toggle="collapse"
												style="margin-right: 5px">OFF</button>
											Educacion
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch2">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px" data-toggle="collapse"
												data-target="#switch2">OFF</button>
											Adulto mayor
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch3">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-toggle="collapse" data-target="#switch3"
												style="margin-right: 5px">OFF</button>
											Discapacidad
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch4">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-toggle="collapse" data-target="#switch4"
												style="margin-right: 5px">OFF</button>
											Victimas
										</div>
										<hr style="margin: 3px 0px 3px 0px">
									</div>
									<div class="col-lg-3">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch5">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-toggle="collapse" data-target="#switch5"
												style="margin-right: 5px">OFF</button>
											Afrocolombianos
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch6">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-toggle="collapse" data-target="#switch6"
												style="margin-right: 5px">OFF</button>
											Indigenas
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Rom gitano
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default" data-toggle="collapse"
												data-target="#switch8">ON</button>
											<button class="btn btn-xs btn-primary active"
												data-toggle="collapse" data-target="#switch8"
												style="margin-right: 5px">OFF</button>
											LGTBI
										</div>
										<hr style="margin: 3px 0px 3px 0px">
									</div>
									<div class="col-lg-3">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Primera infancia
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Niñez y adolescencia
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Juventud
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Atencion a la mujer
										</div>
										<hr style="margin: 3px 0px 3px 0px">
									</div>
									<div class="col-lg-3">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Pobreza extrema
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Seguridad publica
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Salud
										</div>
										<hr style="margin: 3px 0px 3px 0px">
										<div class="btn-group btn-toggle">
											<button class="btn btn-xs btn-default">ON</button>
											<button class="btn btn-xs btn-primary active"
												style="margin-right: 5px">OFF</button>
											Vivienda
										</div>
										<hr style="margin: 3px 0px 3px 0px">
									</div>
								</div>
							</div>
							<div class="collapse" id="switch1">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad3" aria-expanded="false"> Educacion </a>
								<div class="collapse" id="discapacidad3">
									<div class="row" style="padding-top: 5px">
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas nacionales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas departamentales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas municipales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Proteccion a la gente con discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="collapse" id="switch2">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad2" aria-expanded="false"> Poblacion
									adulto mayor </a>
								<div class="collapse" id="discapacidad2">
									<div class="row" style="padding-top: 5px">
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas nacionales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>

											</form>
										</div>
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas departamentales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Programa proteccion a personas
																discapacitadas</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>

											</form>
										</div>
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas municipales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Proteccion a la gente con discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-lg-12" style="margin-bottom: 10px">
											<ul class="nav nav-tabs nav-justified">
												<li role="presentation" class="active"><a
													href="#BonosNacionales" data-toggle="tab">Nacionales</a></li>
												<li role="presentation"><a href="#BonosDepart"
													data-toggle="tab">Departamentales</a></li>
												<li role="presentation"><a href="#BonosMunicipal"
													data-toggle="tab">Municipales</a></li>
											</ul>
										</div>
										<div class="tab-content">
											<div class="tab-pane active" id="BonosNacionales">
												<div class="col-sm-12">
													<div class="alert alert-warning text-center" role="alert"
														style="padding: 5px">Informacion de bonos economicos
														de programas especificos</div>
													<form class="form-horizontal">
														<div class="form-group col-lg-7">
															<label class="col-sm-5 control-label">Operador</label>
															<div class="col-sm-7">
																<select class="form-control input-sm">
																	<option>Consorcio adulto mayor regional</option>
																</select>
															</div>
														</div>
														<div class="form-group col-lg-7">
															<label class="col-sm-5">Cantidad de bonos
																recibidos</label>
															<div class="col-sm-7">
																<input class="form-control input-sm" placeholder="#">
															</div>
														</div>
														<div class="form-group col-lg-12">
															<div class="col-sm-2">
																<select class="form-control input-sm">
																	<option>vigencia</option>
																</select>
															</div>
															<div class="col-sm-1">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px"># bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Valor bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Fecha entregado</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Mes</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Lugar</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
													</form>
												</div>
											</div>
											<div class="tab-pane" id="BonosDepart">
												<div class="col-sm-12">
													<div class="alert alert-warning text-center" role="alert"
														style="padding: 5px">Informacion de bonos economicos
														de programas especificos</div>
													<form class="form-horizontal">
														<div class="form-group col-lg-7">
															<label class="col-sm-5">Total ayuda por bonos</label>
															<div class="col-sm-7">
																<input class="form-control input-sm" placeholder="#">
															</div>
														</div>
														<div class="form-group col-lg-7">
															<label class="col-sm-5">Localidad del subprograma</label>
															<div class="col-sm-7">
																<select class="form-control input-sm">
																	<option>Urbana</option>
																	<option>Rural</option>
																</select>
															</div>
														</div>
														<div class="form-group col-lg-12">
															<div class="col-sm-2">
																<select class="form-control input-sm">
																	<option>vigencia</option>
																</select>
															</div>
															<div class="col-sm-1">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px"># bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Valor bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Fecha entregado</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Mes</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Lugar</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
													</form>
												</div>
											</div>
											<div class="tab-pane" id="BonosMunicipal">
												<div class="col-sm-12">
													<div class="alert alert-warning text-center" role="alert"
														style="padding: 5px">Informacion de bonos economicos
														de programas especificos</div>
													<form class="form-horizontal">
														<div class="form-group col-lg-7">
															<label class="col-sm-5">Total ayuda por bonos</label>
															<div class="col-sm-7">
																<input class="form-control input-sm" placeholder="#">
															</div>
														</div>
														<div class="form-group col-lg-7">
															<label class="col-sm-5">Localidad del subprograma</label>
															<div class="col-sm-7">
																<select class="form-control input-sm">
																	<option>Urbana</option>
																	<option>Rural</option>
																</select>
															</div>
														</div>
														<div class="form-group col-lg-12">
															<div class="col-sm-2">
																<select class="form-control input-sm">
																	<option>vigencia</option>
																</select>
															</div>
															<div class="col-sm-1">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px"># bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Valor bono</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Fecha entregado</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Mes</p>
															</div>
															<div class="col-sm-2">
																<p class="bg-success text-center"
																	style="padding: 5px 0px 5px 0px">Lugar</p>
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
														<div class="form-group">
															<label class="col-sm-2 control-label">Bono
																economico</label>
															<div class="col-sm-1">
																<input class="form-control input-sm" placeholder="#">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="$150.000">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="DD/MM/AA">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm" value="Febrero">
															</div>
															<div class="col-sm-2">
																<input class="form-control input-sm"
																	value="Banco agrario">
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>

							<div class="collapse" id="switch3">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad" aria-expanded="false"> Proteccion y
									atencion a la poblacion con discapacidad </a>
								<div class="collapse" id="discapacidad">
									<div class="row" style="padding-top: 5px">
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas nacionales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-sm-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas departamentales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-4">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas municipales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Proteccion a la gente con discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-12">
											<div class="alert alert-warning text-center" role="alert"
												style="padding: 5px">Tipos de discapacidad</div>
										</div>
										<div class="col-xs-3" style="padding-left: 50px">
											<div class="checkbox">
												<input type="checkbox" value="valor1"> Auditiva
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor2"> Autismo
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor3"> Cognitiva
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor4"> Fisica
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor5"> Mental
											</div>
										</div>
										<div class="col-xs-3">
											<div class="checkbox">
												<input type="checkbox" value="valor1"> Mental
												psicosocial
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor2"> Motora
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor3"> Multiple
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor4"> Sensorial
												sordera
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor5"> Sensorial
												hipocaustia
											</div>
										</div>
										<div class="col-xs-3">
											<div class="checkbox">
												<input type="checkbox" value="valor1"> Sensorial
												baja vision
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor2"> Sensorial
												ceguera
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor3"> Sensorial
												sordoceguera
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor4"> Sensorial
												gusto-olfato-tacto
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor5"> Sistematica
											</div>
										</div>
										<div class="col-xs-3">
											<div class="checkbox">
												<input type="checkbox" value="valor1"> Talla baja
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor2"> Visual
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor3"> Voz y habla
											</div>
										</div>
										<div class="col-xs-12">
											<h4>Documentos relacionados:</h4>
											<label for="agregar">Subir cedula</label> <input type="file"
												id="agregar1"> <label for="agregar">Subir
												registro civil</label> <input type="file" id="agregar2"> <label
												for="agregar">Subir certificado de discapacidad</label> <input
												type="file" id="agregar3">
										</div>
									</div>
								</div>
							</div>

							<div class="collapse" id="switch4">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad4" aria-expanded="false"> Poblacion
									victima de la violencia </a>
								<div class="collapse" id="discapacidad4">
									<div class="row" style="padding-top: 5px">
										<div class="col-sm-6">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas nacionales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-9">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-6">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas municipales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Proteccion a la gente con discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-12">
											<div class="alert alert-warning text-center" role="alert"
												style="padding: 5px">Hechos victimizantes</div>
										</div>
										<div class="col-xs-3" style="padding-left: 50px">
											<div class="checkbox">
												<input type="checkbox" value="valor1"> Minas
												antipersonales
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor2"> Desmovilizado
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor3"> Reinsertado
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor4"> Violencia
												intrafamiliar
											</div>
											<div class="checkbox">
												<input type="checkbox" value="valor5"> Otros hechos
												victimizantes
											</div>
										</div>
										<div class="col-xs-5">
											<form class="form-inline">
												<div class="form-group">
													<label><span class="glyphicon glyphicon-plus-sign"></span>
														Nuevo hecho victimizante</label> <input type="text"
														class="form-control input-sm" placeholder="Agregar">
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="collapse" id="switch5">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad5" aria-expanded="false"> Poblacion
									afrocolombiana, negra, raizal y palenquera </a>
								<div class="collapse" id="discapacidad5">
									<div class="row" style="padding-top: 5px">
										<div class="col-xs-12">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Seleccione el enfoque diferencial</div>
											<label class="checkbox-inline"> <input
												type="checkbox" value="option1"> Afrocolombiano
											</label> <label class="checkbox-inline"> <input
												type="checkbox" value="option2"> Negro
											</label> <label class="checkbox-inline"> <input
												type="checkbox" value="option3"> Raizal
											</label> <label class="checkbox-inline"> <input
												type="checkbox" value="option4"> Palenquero
											</label>
											<button class="btn btn-primary btn-sm">Guardar</button>
										</div>
									</div>
								</div>
							</div>

							<div class="collapse" id="switch6">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad6" aria-expanded="false"> Proteccion y
									atencion a la poblacion indigena </a>
								<div class="collapse" id="discapacidad6">
									<div class="row" style="padding-top: 5px">
										<div class="col-xs-12">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Informacion de resguardos y
												cabildos</div>
										</div>
										<div class="col-xs-6">
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-4 control-label">Zonas de
														proteccion</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Rurales</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Resguardo</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Selva</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Comunidad</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Wayu</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Pueblo</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Colina</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Asentamiento</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Rural</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Comunidad</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Kimbaya</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-6">
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-4 control-label">Gobernador(a)</label>
													<div class="col-sm-7">
														<input class="form-control input-sm"
															placeholder="Gobernador(a)">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Codigo de
														resguardo</label>
													<div class="col-sm-7">
														<input class="form-control input-sm" placeholder="#">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Fecha de
														posesion</label>
													<div class="col-sm-7">
														<input class="form-control input-sm"
															placeholder="DD/MM/AA">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Fecha de
														culminacion</label>
													<div class="col-sm-7">
														<input class="form-control input-sm"
															placeholder="DD/MM/AA">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"># de
														hectareas</label>
													<div class="col-sm-7">
														<input class="form-control input-sm" placeholder="#">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label"># Resolucion</label>
													<div class="col-sm-7">
														<input class="form-control input-sm" placeholder="#">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-4 control-label">Cementerios</label>
													<div class="col-sm-7">
														<select class="form-control input-sm">
															<option>Fosas</option>
														</select>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="collapse" id="switch8">
								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#discapacidad8" aria-expanded="false"> Proteccion y
									atencion a la poblacion LGTBI </a>
								<div class="collapse" id="discapacidad8">
									<div class="row" style="padding-top: 5px">
										<div class="col-xs-6">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas nacionales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Agroindigena</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Colombia mayor</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Atencion a personas mayores</option>
														</select>
													</div>
												</div>
											</form>
										</div>
										<div class="col-xs-6">
											<div class="alert alert-success text-center" role="alert"
												style="padding: 5px">Sectores, programas y
												subprogramas municipales</div>
											<form class="form-horizontal">
												<div class="form-group">
													<label class="col-sm-3 control-label">Sector</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Proteccion a la gente con discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Programa</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Inclusion social a personas con
																discapacidad</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Subprograma</label>
													<div class="col-sm-8">
														<select class="form-control input-sm">
															<option>Inclusion educativa</option>
														</select>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="tab-pane" id="menu3">
							<div class="row" style="margin: 10px 5px 5px 5px">
								<div class="col-sm-6">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="parentesco" class="col-sm-4 control-label">Parentesco</label>
											<div class="col-sm-8">
												<select class="form-control input-sm" id="parentesco">
													<option>Jefe o cabeza de hogar</option>
													<option>Conyugue o compañero(a) permanente</option>
													<option>Hijo o hija</option>
													<option>Padre o madre</option>
													<option>Nieto(a)</option>
													<option>Hermano(a)</option>
													<option>Yerno o nuera</option>
													<option>Abuelos</option>
													<option>Suegros</option>
													<option>Tios</option>
													<option>Sobrinos</option>
													<option>Primos</option>
													<option>Cuñados</option>
													<option>Otros parientes</option>
													<option>No parientes</option>
													<option>Servicio dom&eacute;tico o cuidandero</option>
													<option>Pariente servicio dom&eacute;tico o
														cuidandero</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="rol" class="col-sm-4 control-label">Rol</label>
											<div class="col-sm-8">
												<select class="form-control input-sm" id="rol">
													<option>Indigena</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="nombre1" class="col-sm-4 control-label">Primer
												Nombre</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="nombre1"
													placeholder="Primer Nombre">
											</div>
										</div>
										<div class="form-group">
											<label for="nombre2" class="col-sm-4 control-label">Segundo
												Nombre</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="nombre2"
													placeholder="Segundo Nombre">
											</div>
										</div>
										<div class="form-group">
											<label for="apellido1" class="col-sm-4 control-label">Primer
												Apellido</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="apellido1"
													placeholder="Primer Apellido">
											</div>
										</div>
										<div class="form-group">
											<label for="apellido2" class="col-sm-4 control-label">Segundo
												Apellido</label>
											<div class="col-sm-8">
												<input class="form-control input-sm" id="apellido2"
													placeholder="Segundo Apellido">
											</div>
										</div>
										<div class="form-group">
											<label for="nacionalidad" class="col-sm-4 control-label">Nacionalidad</label>
											<div class="col-sm-3">
												<input class="form-control input-sm" id="nacionalidad"
													placeholder="Pais">
											</div>
											<label for="extranjero" class="col-sm-2 control-label">Extranjero?</label>
											<div class="col-sm-3">
												<select class="form-control input-sm" id="extranjero">
													<option>Si</option>
													<option>No</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label for="LugarNacimiento" class="col-sm-4 control-label">Lugar
												Nacimiento</label>
											<div class="col-sm-4">
												<select class="form-control input-sm" id="LugarNacimiento"
													placeholder="#">
													<option>Amazonas</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Valle del Cauca</option>
												</select>
											</div>

											<div class="col-sm-4">
												<input class="form-control input-sm" id="LugarNacimiento"
													placeholder="Municipio">
											</div>
										</div>

										<div class="form-group">
											<label for="TipoDocumento" class="col-sm-4 control-label">Tipo
												Documento</label>
											<div class="col-xs-3">
												<select class="form-control input-sm" id="TipoDocumento"placeholder"TD">
													<option>MS</option>
													<option>RC</option>
													<option>TI</option>
													<option>CC</option>
													<option>CE</option>
													<option>PA</option>
													<option>CD</option>
													<option>AS</option>
												</select>
											</div>
											<label for="Doc" class="col-sm-1  control-label">Doc</label>
											<div class="col-xs-4">
												<input class="form-control input-sm" id="Doc"
													placeholder="#">
											</div>
										</div>
									</form>
								</div>
								<div class="col-sm-6">
									<form class="form-horizontal">
										<div class="form-group">
											<label for="Sisben" class="col-sm-4 control-label">Sisben</label>
											<div class="col-sm-3">
												<select type="" class="form-control input-sm" id="Sisben"
													placeholder="">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
												</select>
											</div>
											<label for="Puntaje" class="col-sm-2 control-label">Puntaje</label>
											<div class="col-sm-3">
												<input type="" class="form-control input-sm" id="Puntaje"
													placeholder="Puntaje">
											</div>
										</div>

										<div class="form-group">
											<label for="FechaNacimiento" class="col-sm-4 control-label">Fecha
												nacimiento</label>
											<div class="col-sm-5">
												<input type="" class="input-sm form-control"
													id="FechaNacimiento" placeholder="DD/MM/AA">
											</div>
											<label for="Edad" class="col-sm-1 control-label">Edad</label>
											<div class="col-sm-2">
												<input type="" class="input-sm form-control" id="Edad"
													placeholder="Edad">
											</div>
										</div>

										<div class="form-group">
											<label for="Ocupacion" class="col-sm-4 control-label">Ocupaci&oacute;n</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control" id="Ocupacion"
													placeholder="">
													<option>Estudiante</option>
													<option>Empleado</option>
													<option>Otro</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="EPS" class="col-sm-4 control-label">EPS</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control" id="EPS"
													placeholder="">
													<option>Dusakawi</option>
													<option>Nueva EPS</option>
													<option>Otra</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="EstadoCivil" class="col-sm-4 control-label">Estado
												Civil</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control"
													id="EstadoCivil" placeholder="Estado Civil">
													<option>Uni&oacute;n Libre</option>
													<option>Casado</option>
													<option>Viudo</option>
													<option>Separado o divorciado</option>
													<option>Soltero</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="NivelEducativo" class="col-sm-4 control-label">Nivel
												Educativo</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control"
													id="NivelEducativo">
													<option>Primaria</option>
													<option>Secundaria</option>
													<option>T&eacute;cnica</option>
													<option>Tecnol&oacute;gica</option>
													<option>Universidad</option>
													<option>Postgrado</option>
													<option>Ninguna</option>
													<option>Otra</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="IngresosMensuales" class="col-sm-4 control-label">Ingresos</label>
											<div class="col-sm-8">
												<input type="" class="input-sm   form-control"
													id="IngresosMensuales" placeholder="Ingresos Mensuales">
											</div>
										</div>


										<div class="form-group">
											<label for="Aseguramiento" class="col-sm-4 control-label">Aseguramieto</label>
											<div class="col-sm-8">
												<select type="" class="input-sm form-control" id="Regimen"
													placeholder="Aseguramieto">
													<option>Contributivo</option>
													<option>Subsidiado</option>
													<option>Vinculado o No Afiliado al SGSSS</option>
													<option>Regimen Especial</option>
													<option>Desplazado afiliado al R&eacute;gimen
														contributivo</option>
													<option>Desplazado afiliado al R&eacute;gimen
														subsidiado</option>
													<option>Desplazado no asegurado</option>
												</select>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="menu2">
							<div class="row" style="margin: 20px 10px 0px 0px"></div>


						</div>
					</div>
				</div>
				<div class="tab-pane active" id="BienvenidaUsuario" role="tabpanel">
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-warning alert-dismissible" role="alert"
								style="padding: 5px 30px 5px 10px">
								<button type="button" class="close" data-dismiss="alert"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<strong>Bienvenido!</strong> este es el Sistema de Programas
								Sociales del municipio de Arauca <a href="#"
									class="btn btn-warning">Conoce mas</a>
							</div>
						</div>
						<div class="col-lg-1"></div>
						<div class="col-lg-11">
							<h2>
								Bienvenido(a) <strong>Monica Tres Palacios</strong>
							</h2>
							<h3>Consulta</h3>
							<div class="row">
								<div class="col-lg-2 media" style="margin-top: 15px"
									align="center">
									<div class="media-bottom">
										<a href="#FormularioUsuario2" data-toggle="tab"> <img
											class="media-object img-thumbnail" src=""
											style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Usuarios</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#"> <img class="media-object img-thumbnail"
											src="" style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Grupos familiares</p>

									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-1"></div>
						<div class="col-lg-11">
							<h3>Herramientas</h3>
							<div class="row">
								<div class="col-lg-2 media" style="margin-top: 15px"
									align="center">
									<div class="media-bottom">
										<a href="#NuevaPostulacion" data-toggle="tab"> <img
											class="media-object img-thumbnail" src=""
											style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Postulaciones</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#"> <img class="media-object img-thumbnail"
											src="" style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Beneficiados</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#Nuevaremision" data-toggle="tab"> <img
											class="media-object img-thumbnail" src=""
											style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Remisiones</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#NuevaCertificacion" data-toggle="tab"> <img
											class="media-object img-thumbnail" src=""
											style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Certificaciones</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#"> <img class="media-object img-thumbnail"
											src="" style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Reportes</p>

									</div>
								</div>
								<div class="col-lg-2 media" align="center">
									<div class="media-bottom">
										<a href="#"> <img class="media-object img-thumbnail"
											src="" style="height: 80px; width: 80px; margin-bottom: 5px">
										</a>
									</div>
									<div class="media-body">
										<p class="media-heading">Estadisticas</p>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="Nuevaremision">
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-7">
										<h3 style="margin: 5px 0px 0px 0px">Remisiones</h3>
									</div>
									<div class="col-lg-3">
										<h3 style="margin: 5px 0px 0px 0px">Numero
											remisi&oacute;n</h3>
									</div>
									<div class="col-lg-2">
										<a class="btn btn-warning" href="#ConsutaRemision"
											data-toggle="tab">Generar remision</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8" style="padding-top: 27px">
							<form class="form-inline">
								<div class="form-group">
									<label class="control-label" style="font-size: 15px">Consultar
										usuario</label> <input class="input-sm form-control" placeholder="#">
									<button type="button" class="btn btn-info">Buscar</button>
								</div>
							</form>
						</div>
						<div class="col-lg-4">
							<form class="form-inline">
								<div class="form-group">
									<p>Fecha</p>
									<input class="form-control input-sm" placeholder="DD/MM/AA">
								</div>
							</form>
						</div>
						<div class="col-lg-12" style="margin-top: 15px">
							<div class="panel panel-info">
								<div class="panel-heading">Datos de usuario</div>
								<div class="panel-body">
									<div class="col-lg-5">
										<dl class="dl-horizontal">
											<dt>Usuario:</dt>
											<dd>Victor Richard Farfan Valdes</dd>
											<dt>Cedula:</dt>
											<dd>29403970</dd>
										</dl>
									</div>
									<div class="col-lg-4">
										<dl class="dl-horizontal">
											<dt>Programa:</dt>
											<dd>X</dd>
											<dt>Subprograma:</dt>
											<dd>Y</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<h5>Origen</h5>
							<div class="col-lg-12"
								style="border: 1px solid #DCDCDC; border-radius: 5px; padding: 10px 0px 19px 0px">
								<dl class="dl-horizontal">
									<dt>Dependencia:</dt>
									<dd>FONVIDA</dd>
									<dt>Sector:</dt>
									<dd>Programas sociales</dd>
								</dl>
							</div>
						</div>
						<div class="col-lg-6">
							<h5>Destino Remisi&oacute;n</h5>
							<div class="col-lg-12"
								style="border: 1px solid #DCDCDC; border-radius: 5px; padding-top: 10px">
								<dl class="dl-horizontal">
									<dt>Programas sociales:</dt>
									<dd>
										<select class="input-sm form-control">
											<option>Seleccione la entidad</option>
										</select>
									</dd>
									<dt>Otros programas:</dt>
									<dd>
										<select class="input-sm form-control">
											<option>Seleccione la entidad</option>
										</select>
									</dd>
								</dl>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-default" role="alert"
								style="padding: 5px; margin-top: 50px; border: 1px solid #DCDCDC; border-radius: 5px">
								<p class="text-center">Remisi&oacute;n</p>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea rows="10" class="form-control">La Secretaria de Gobierno del Municipio de Arauca hace remision al señor Victor Richard Farfan Valdes identificado con cedula de ciudadania # 9403970 expedida en el municipio de Arauca, y perteneciente al reguardo Zamuro de la comunidad Matecandela a la siguiente dependencia:</textarea>
						</div>
						<div class="col-lg-12" style="margin-top: 10px">
							<button type="button" class="btn btn-info">Generar
								remision</button>
						</div>
					</div>
				</div>
				<div id="ConsultaUsuario" class="tab-pane">
					<div class="table-responsive">
						<table id="myTable" class="table table-striped" width="100%">
							<thead>
								<tr>
									<th>Nombres</th>
									<th>Finca</th>
									<th>Corregimiento</th>
									<th>Cedula</th>
									<th>Vereda</th>
									<th>Celular</th>
								</tr>
							</thead>

							<tfoot>
								<tr>
									<th>Nombres</th>
									<th>Finca</th>
									<th>Corregimiento</th>
									<th>Cedula</th>
									<th>Vereda</th>
									<th>Celular</th>
								</tr>
							</tfoot>

							<tbody>
								<tr>
									<td>Tirso Abraham Ojeda</td>
									<td>Quindebana</td>
									<td>Maporillal</td>
									<td>17583725</td>
									<td>Matal De Flor Amarillo</td>
									<td>3202808033</td>
								</tr>
								<tr>
									<td>Lidia Aidee Mora V</td>
									<td>La Palma</td>
									<td>Cañas Bravas</td>
									<td>68303609</td>
									<td>La Pastora</td>
									<td>3102906897</td>
								</tr>
								<tr>
									<td>David Holguin</td>
									<td>Las Palmas</td>
									<td>Santa Barbara</td>
									<td>5626441</td>
									<td>Los Caballos</td>
									<td>3115367256</td>
								</tr>
								<tr>
									<td>Cecilia Avila Cadena</td>
									<td>Ketyquin</td>
									<td>Cañas Bravas</td>
									<td>68297787</td>
									<td>Selvas Del Lipa</td>
									<td>3124326864</td>
								</tr>
								<tr>
									<td>Felipa Cadena Barahona</td>
									<td>Aguas Claras</td>
									<td>Cañas Bravas</td>
									<td>36487102</td>
									<td>Selvas Del Lipa</td>
									<td>3138185515</td>
								</tr>
								<tr>
									<td>Nubia Marleni Lancacho M</td>
									<td>Villa Maria 1</td>
									<td>Santa Barbara</td>
									<td>1116796089</td>
									<td>La Saya</td>
									<td>3102285641</td>
								</tr>
								<tr>
									<td>Clara Ines Mendoza</td>
									<td>Villa Maria 2</td>
									<td>Santa Barbara</td>
									<td>68288802</td>
									<td>La Saya</td>
									<td>3102285641</td>
								</tr>
								<tr>
									<td>Tilcia Contreras Caceres</td>
									<td>La Cucuteña</td>
									<td>Santa Barbara</td>
									<td>60422792</td>
									<td>Mata De Piña</td>
									<td>3167499294</td>
								</tr>
								<tr>
									<td>Libia Marina Gutierrez</td>
									<td>Las Primaveras</td>
									<td>Todos Los Santos</td>
									<td>24249195</td>
									<td>Todos Los Santos</td>
									<td>3163720943</td>
								</tr>
								<tr>
									<td>Juliana Del Carmen Carvajal De P.</td>
									<td>La Energia</td>
									<td>Santa Barbara</td>
									<td>24240104</td>
									<td>Los Caballos</td>
									<td>No tiene</td>
								</tr>
								<tr>
									<td>Dulvar E. Camejo</td>
									<td>Los Portales</td>
									<td>Maporillal</td>
									<td>17586325</td>
									<td>Merecure</td>
									<td>3142034919</td>
								</tr>
								<tr>
									<td>Luis Efrain Garrido</td>
									<td>El Encanto</td>
									<td>Caracol</td>
									<td>17583300</td>
									<td>Cabuyare</td>
									<td>8851418</td>
								</tr>
								<tr>
									<td>Luis Ernesto Garrido Duarte</td>
									<td>RLos Raudales</td>
									<td>Caracol</td>
									<td>1116780595</td>
									<td>Cabuyare</td>
									<td>8851418</td>
								</tr>
								<tr>
									<td>Luis Alberto Cisneros M</td>
									<td>Guamalito</td>
									<td>Caracol</td>
									<td>1190432</td>
									<td>Cabuyare</td>
									<td>8851418</td>
								</tr>
								<tr>
									<td>Elizabeth Balta</td>
									<td>El Trompillo</td>
									<td>Santa Barbara</td>
									<td>68287598</td>
									<td>La Saya</td>
									<td>3218354839</td>
								</tr>
								<tr>
									<td>Marisol Tovar Concho</td>
									<td>Los Pajuicitos</td>
									<td>Caracol</td>
									<td>68288035</td>
									<td>Barranca Amarilla</td>
									<td>3163311682</td>
								</tr>
								<tr>
									<td>Pedro Jose Briceño</td>
									<td>CEl Progreso</td>
									<td>Caracol</td>
									<td>17586765</td>
									<td>Cabuyare</td>
									<td>3503071484</td>
								</tr>
								<tr>
									<td>Ligia Yaney Mendez Diaz</td>
									<td>La Providencia</td>
									<td>Santa Barbara</td>
									<td>68289068</td>
									<td>Los Arrecifes</td>
									<td>3142973195</td>
								</tr>
								<tr>
									<td>Enrique Castillo Alvarez</td>
									<td>El Clavo</td>
									<td>Maporillal</td>
									<td>4299047</td>
									<td>El Socorro</td>
									<td>3143603985</td>
								</tr>
								<tr>
									<td>Orlando Meche Mendivelso</td>
									<td>Puerto Narda</td>
									<td>Cañas Bravas</td>
									<td>17586621</td>
									<td>Selvas Del Lipa</td>
									<td>3115559632</td>
								</tr>
								<tr>
									<td>Ruben Dario Camejo Monsalve</td>
									<td>Santa Barbara</td>
									<td>Santa Barbara</td>
									<td>4299979</td>
									<td>Chaparrito</td>
									<td>3102747917</td>
								</tr>
								<tr>
									<td>Clodomiro Joaquin Trigo A.</td>
									<td>Chaparrito</td>
									<td>Santa Barbara</td>
									<td>17582533</td>
									<td>Chaparrito</td>
									<td>3105761275</td>
								</tr>
								<tr>
									<td>Luz Estrella Soto Castañeda</td>
									<td>Mi Laguito</td>
									<td>Santa Barbara</td>
									<td>21231207</td>
									<td>Chaparrito</td>
									<td>3105761275</td>
								</tr>
								<tr>
									<td>Carlos Ariel Castro</td>
									<td>La Fortaleza</td>
									<td>Cañas Bravas</td>
									<td>17582788</td>
									<td>Selvas Del Lipa</td>
									<td>3212011929</td>
								</tr>
								<tr>
									<td>Guillermo Alberto Ceballos Zuluaga</td>
									<td>El Cogollo</td>
									<td>Santa Barbara</td>
									<td>15373807</td>
									<td>Selvas Del Lipa</td>
									<td>3212011929</td>
								</tr>
								<tr>
									<td>Dioselina Del Carmen Colmenares T.</td>
									<td>Las Palmas</td>
									<td>Santa Barbara</td>
									<td>24243033</td>
									<td>Chaparrito</td>
									<td>3142164010</td>
								</tr>
								<tr>
									<td>Andrea Josefina Caroprese C.</td>
									<td>Los Casanares</td>
									<td>Maporillal</td>
									<td>24241658</td>
									<td>La Bendicion</td>
									<td>3208610618</td>
								</tr>
								<tr>
									<td>Jorge Apolinar Cedeño Parales</td>
									<td>El Palmar</td>
									<td>Santa Barbara</td>
									<td>19395063</td>
									<td>Chaparrito</td>
									<td>3102811695</td>
								</tr>
								<tr>
									<td>Elsy Vicenta Ojeda Espy</td>
									<td>La Plata</td>
									<td>Todos Los Santos</td>
									<td>24242516</td>
									<td>Todos Los Santos</td>
									<td>3204902323</td>
								</tr>
								<tr>
									<td>Vianey Maria Ramirez Colmenares</td>
									<td>El Broco</td>
									<td>Santa Barbara</td>
									<td>68285654</td>
									<td>Mategallina</td>
									<td>3102417431</td>
								</tr>
								<tr>
									<td>Antonino Marin</td>
									<td>Bethel</td>
									<td>Santa Barbara</td>
									<td>2079566</td>
									<td>Clarinetero</td>
									<td>3108584489</td>
								</tr>
								<tr>
									<td>David Dario Camejo Oviedo</td>
									<td>Yagrumal</td>
									<td>Maporillal</td>
									<td>7361595</td>
									<td>Merecure</td>
									<td>3105684651</td>
								</tr>
								<tr>
									<td>Edgar Lopez Carvajal</td>
									<td>Los Naranjos</td>
									<td>Cañas Bravas</td>
									<td>7818319</td>
									<td>Saltos Del Lipa</td>
									<td>3115404711</td>
								</tr>
								<tr>
									<td>Hernando Guarin Benitez</td>
									<td>Buenaventura</td>
									<td>Santa Barbara</td>
									<td>6610699</td>
									<td>Los Arrecifes</td>
									<td>3105723065</td>
								</tr>
								<tr>
									<td>Joel Enrique Tovar</td>
									<td>Vallado</td>
									<td>Todos Los Santos</td>
									<td>17586169</td>
									<td>Todos Los Santos</td>
									<td>3178531770</td>
								</tr>
								<tr>
									<td>Hector Jorge Diaz Carvajal</td>
									<td>Casablanca</td>
									<td>Maporillal</td>
									<td>17581570</td>
									<td>Matal De Flor Amarillo</td>
									<td>3184975883</td>
								</tr>
								<tr>
									<td>Silvia Marbelys Cisneros Madrid</td>
									<td>Las Palmitas</td>
									<td>Maporillal</td>
									<td>1116772100</td>
									<td>Las Plumas</td>
									<td>3184975883</td>
								</tr>
								<tr>
									<td>Jose Rafael Unda</td>
									<td>Puerto Rico</td>
									<td>Santa Barbara</td>
									<td>17582241</td>
									<td>Mata De Piña</td>
									<td>3174576515</td>
								</tr>
								<tr>
									<td>Ramon Antonio Fernandez Valenzuela</td>
									<td>Las Taparitas</td>
									<td>Cañas Bravas</td>
									<td>17581220</td>
									<td>La Conquista</td>
									<td>3212775038</td>
								</tr>
								<tr>
									<td>Luis Carlos Parales</td>
									<td>La Esperanza</td>
									<td>Maporillal</td>
									<td>17591869</td>
									<td>San Pablo</td>
									<td>3144636714</td>
								</tr>
								<tr>
									<td>Olmer Emilio Garrido Parales</td>
									<td>El Nevado</td>
									<td>Maporillal</td>
									<td>17590544</td>
									<td>San Pablo</td>
									<td>3118421981</td>
								</tr>
								<tr>
									<td>Gilma Liliana Salazar</td>
									<td>No Registra</td>
									<td>Cañas Bravas</td>
									<td>40390378</td>
									<td>Saltos Del Lipa</td>
									<td>3155627617</td>
								</tr>
								<tr>
									<td>Carlos Augusto Rodriguez Avila</td>
									<td>San Felipe</td>
									<td>Cañas Bravas</td>
									<td>4299951</td>
									<td>Saltos Del Lipa</td>
									<td>3152536290</td>
								</tr>
								<tr>
									<td>Gladys Marlene Blanco Monsalve</td>
									<td>Nicaragua</td>
									<td>Maporillal</td>
									<td>68289022</td>
									<td>Merecure</td>
									<td>3105832812</td>
								</tr>
								<tr>
									<td>Eva Celmira Diaz Carvajal</td>
									<td>Santo Cristo</td>
									<td>Maporillal</td>
									<td>60251276</td>
									<td>La Bendicion</td>
									<td>3185548884</td>
								</tr>
								<tr>
									<td>Carlos Ramon Colina</td>
									<td>Los Canaletes</td>
									<td>Santa Barbara</td>
									<td>17581413</td>
									<td>La Saya</td>
									<td>3138413582</td>
								</tr>
								<tr>
									<td>Diego Tomas Zambrano Ramirez</td>
									<td>Las Canarias</td>
									<td>Caracol</td>
									<td>17584888</td>
									<td>Cabuyare</td>
									<td>3158181354</td>
								</tr>
								<tr>
									<td>Marciano Cesar De La Hoz Rua</td>
									<td>El Paraiso</td>
									<td>Santa Barbara</td>
									<td>72312513</td>
									<td>La Saya</td>
									<td>3134813783</td>
								</tr>
								<tr>
									<td>Luciano Zambrano Ojeda</td>
									<td>El Milagro</td>
									<td>Caracol</td>
									<td>17594934</td>
									<td>Cabuyare</td>
									<td>3158181354</td>
								</tr>
								<tr>
									<td>Maira Elizabeth Quenza Padilla</td>
									<td>La Fortaleza De Maique</td>
									<td>Santa Barbara</td>
									<td>68297509</td>
									<td>La Saya</td>
									<td>3203107004</td>
								</tr>
								<tr>
									<td>Alvaro Heli Quenza Tovar</td>
									<td>Mata Larga</td>
									<td>Santa Barbara</td>
									<td>17581153</td>
									<td>La Saya</td>
									<td>3115784080</td>
								</tr>
								<tr>
									<td>Elizabeth Beatriz Quenza Padilla</td>
									<td>Villa Eliza</td>
									<td>Santa Barbara</td>
									<td>1116782382</td>
									<td>La Saya</td>
									<td>3115758814</td>
								</tr>
								<tr>
									<td>Adriana Maryely Quenza Padilla</td>
									<td>El Laurel</td>
									<td>Santa Barbara</td>
									<td>68295851</td>
									<td>La Saya</td>
									<td>3203107004</td>
								</tr>
								<tr>
									<td>Manuel Eliecer Rincon Eregua</td>
									<td>Los Taguanes</td>
									<td>Caracol</td>
									<td>17592882</td>
									<td>El Peligro</td>
									<td>3162245269</td>
								</tr>
								<tr>
									<td>Jose Antonio Silva</td>
									<td>La Palmita</td>
									<td>Caracol</td>
									<td>17581589</td>
									<td>El Peligro</td>
									<td>3174685858</td>
								</tr>
								<tr>
									<td>Luis Humberto Moreno Guanare</td>
									<td>Sol Y Sombra</td>
									<td>Caracol</td>
									<td>17585735</td>
									<td>El Peligro</td>
									<td>4266782887</td>
								</tr>
								<tr>
									<td>Odilio Del Carmen Colmenares</td>
									<td>Bonaire</td>
									<td>Caracol</td>
									<td>6608091</td>
									<td>El Peligro</td>
									<td>3154813040</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane" id="ConsutaRemision">
					<div class="row" style="margin-left: 1px; margin-right: 1px">
						<div class="col-lg-12"
							style="border: 1px solid #DCDCDC; border-radius: 5px">
							<div class="col-lg-1" align="center">
								<img src="img/escudo_arauca_mini.png"
									style="height: 70px; width: 60px; margin: 10px 0px 5px 0px">
							</div>
							<div class="col-lg-4">
								<h4 class="text-center" style="margin-top: 5px">
									<strong>FONDO DE VIVIENDA Y DESARROLLO DEL MUNICIPIO
										DE ARAUCA</strong><br>Secretaria de gobierno
								</h4>
							</div>
							<div class="col-lg-2">
								<h4 class="text-center">
									<br>
									<strong>Formato de remisiones</strong>
								</h4>
							</div>
							<div class="col-lg-2">
								<p>
									<strong><br>
									<br>Pag.</strong>1 de 1
								</p>
							</div>
							<div class="col-lg-3" style="border-left: 1px solid #DCDCDC">
								<p class="text-center">Remision #</p>
								<div style="border: 1px solid #DCDCDC; border-radius: 5px">
									<h4 class="text-center">011</h4>
								</div>
								<p class="text-center">Marzo 25 de 2015</p>
							</div>
						</div>
						<div class="col-lg-12" style="margin-top: 15px">
							<div class="panel panel-info">
								<div class="panel-heading">Datos de usuario</div>
								<div class="panel-body">
									<div class="col-lg-6">
										<dl class="dl-horizontal">
											<dt>Usuario:</dt>
											<dd>Victor Richard Farfan Valdes</dd>
											<dt>Cedula:</dt>
											<dd>29403970</dd>
										</dl>
									</div>
									<div class="col-lg-4">
										<dl class="dl-horizontal">
											<dt>Programa:</dt>
											<dd>X</dd>
											<dt>Subprograma:</dt>
											<dd>Y</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<h5>Origen</h5>
							<div class="col-lg-12"
								style="border: 1px solid #DCDCDC; border-radius: 5px; padding-top: 10px">
								<dl class="dl-horizontal">
									<dt>Dependencia:</dt>
									<dd>Comisaria Unica de Familia de Arauca</dd>
									<dt>Sector:</dt>
									<dd>Programas sociales</dd>
								</dl>
							</div>
						</div>
						<div class="col-lg-6">
							<h5>Destino Remisi&oacute;n</h5>
							<div class="col-lg-12"
								style="border: 1px solid #DCDCDC; border-radius: 5px; padding-top: 10px">
								<dl class="dl-horizontal">
									<dt>Programas sociales:</dt>
									<dd>FONVIDA</dd>
									<dt>Otros programas:</dt>
									<dd>Planeacion</dd>
								</dl>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-default" role="alert"
								style="padding: 5px; margin-top: 50px; border: 1px solid #DCDCDC; border-radius: 5px">
								<p class="text-center">Remisi&oacute;n</p>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea rows="10" class="form-control">La Secretaria de Gobierno del Municipio de Arauca hace remision al señor Victor Richard Farfan Valdes identificado con cedula de ciudadania # 9403970 expedida en el municipio de Arauca, y perteneciente al reguardo Zamuro de la comunidad Matecandela a la siguiente dependencia:</textarea>
							<p>Para constancia se firma a los DD dias del mes de MM del
								año AAAA</p>
						</div>

						<div class="col-lg-12" style="margin-top: 10px">
							<div class="col-lg-4"
								style="border: 1px solid black; border-radius: 5px; height: 100px">
								<br>
								<br>
								<br>
								<br>
								<legend
									style="background-color: black; height: 2px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
								<p class="text-right" style="margin-bottom: 20px">Firma</p>
							</div>
							<div class="col-lg-4"></div>
							<div class="col-lg-4"
								style="border: 1px solid black; border-radius: 5px; height: 100px">
								<br>
								<br>
								<br>
								<br>
								<legend
									style="background-color: black; height: 2px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
								<p class="text-right" style="margin-bottom: 20px">Firma</p>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="col-lg-4">
								<p style="margin-bottom: 0px">Elaboro y reviso</p>
								<p style="margin-bottom: 0px">
									<strong>Monica Trespalacios Castillo</strong>
								</p>
								<p style="margin-bottom: 0px">Coordinadora FONVIDA</p>
								<p>Fondo de Viviendas</p>
							</div>
							<div class="col-lg-4"></div>
							<div class="col-lg-4">
								<p style="margin-bottom: 0px">Recibe</p>
								<p style="margin-bottom: 0px">
									<strong>Victor Richard Farfan Valdes</strong>
								</p>
								<p style="margin-bottom: 0px">
									<strong>CC: </strong> 94443675
								</p>
								<p>
									<strong>Telefono: </strong> 3164444333
								</p>
							</div>
						</div>
						<div class="col-lg-12"
							style="border-top: 1px solid #DCDCDC; margin-top: 40px">
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									FONVIDA <br> Alcaldia de Arauca
								</p>
							</div>
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									Direccion <br> Carrera 24 Calle 18 y 19 Barrio la
									Esperanza
								</p>
							</div>
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									Tel. dependencia <br> 57 7 8853156 Fax:57 7 8855186
								</p>
							</div>
							<div class="col-lg-3">
								<p style="font-size: 10px">
									Informacion / Contacto <br>
									contactenos@arauca-arauca.gov.co
								</p>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="NuevaCertificacion">
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-6">
										<h3 style="margin: 5px 0px 0px 0px">Certificaciones</h3>
									</div>
									<div class="col-lg-3">
										<h3 style="margin: 5px 0px 0px 0px">Numero
											certificaci&oacute;n</h3>
									</div>
									<div class="col-lg-3">
										<a class="btn btn-warning" href="#ConsultaCertificacion"
											data-toggle="tab">Generar Certificacion</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8" style="padding-top: 27px">
							<form class="form-inline">
								<div class="form-group">
									<label class="control-label" style="font-size: 15px">Consultar
										usuario</label> <input class="input-sm form-control" placeholder="#">
									<button type="button" class="btn btn-info">Buscar</button>
								</div>
							</form>
						</div>
						<div class="col-lg-4">
							<form class="form-inline">
								<div class="form-group">
									<p>Fecha</p>
									<input class="form-control input-sm" placeholder="DD/MM/AA">
								</div>
							</form>
						</div>
						<div class="col-lg-12" style="margin-top: 15px">
							<div class="panel panel-info">
								<div class="panel-heading">Datos de usuario</div>
								<div class="panel-body">
									<div class="col-lg-5">
										<dl class="dl-horizontal">
											<dt>Usuario:</dt>
											<dd>Victor Richard Farfan Valdes</dd>
											<dt>Cedula:</dt>
											<dd>29403970</dd>
										</dl>
									</div>
									<div class="col-lg-4">
										<dl class="dl-horizontal">
											<dt>Programa:</dt>
											<dd>X</dd>
											<dt>Subprograma:</dt>
											<dd>Y</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-default" role="alert"
								style="padding: 5px; margin-top: 50px; border: 1px solid #DCDCDC; border-radius: 5px">
								<p class="text-center">Certificaci&oacute;n</p>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea rows="10" class="form-control">La Secretaria de Gobierno del Municipio de Arauca hace certificacion al señor Victor Richard Farfan Valdes identificado con cedula de ciudadania # 9403970 expedida en el municipio de Arauca, y perteneciente al reguardo Zamuro de la comunidad Matecandela a la siguiente dependencia:</textarea>
						</div>
						<div class="col-lg-12" style="margin-top: 10px">
							<button type="button" class="btn btn-info">Generar
								certificacion</button>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="ConsultaCertificacion">
					<div class="row" style="margin-left: 1px; margin-right: 1px">
						<div class="col-lg-12"
							style="border: 1px solid #DCDCDC; border-radius: 5px">
							<div class="col-lg-1" align="center">
								<img src="img/escudo_arauca_mini.png"
									style="height: 70px; width: 60px; margin: 10px 0px 5px 0px">
							</div>
							<div class="col-lg-4">
								<h4 class="text-center" style="margin-top: 5px">
									<strong>FONDO DE VIVIENDA Y DESARROLLO DEL MUNICIPIO
										DE ARAUCA</strong><br>Secretaria de gobierno
								</h4>
							</div>
							<div class="col-lg-2">
								<h4 class="text-center">
									<br>
									<strong>Formato de certificacion</strong>
								</h4>
							</div>
							<div class="col-lg-2">
								<p>
									<strong><br>
									<br>Pag.</strong>1 de 1
								</p>
							</div>
							<div class="col-lg-3" style="border-left: 1px solid #DCDCDC">
								<p class="text-center">Certificacion #</p>
								<div style="border: 1px solid #DCDCDC; border-radius: 5px">
									<h4 class="text-center">011</h4>
								</div>
								<p class="text-center">Marzo 25 de 2015</p>
							</div>
						</div>
						<div class="col-lg-12" style="margin-top: 15px">
							<div class="panel panel-info">
								<div class="panel-heading">Datos de usuario</div>
								<div class="panel-body">
									<div class="col-lg-6">
										<dl class="dl-horizontal">
											<dt>Usuario:</dt>
											<dd>Victor Richard Farfan Valdes</dd>
											<dt>Cedula:</dt>
											<dd>29403970</dd>
										</dl>
									</div>
									<div class="col-lg-4">
										<dl class="dl-horizontal">
											<dt>Programa:</dt>
											<dd>X</dd>
											<dt>Subprograma:</dt>
											<dd>Y</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-default" role="alert"
								style="padding: 5px; margin-top: 50px; border: 1px solid #DCDCDC; border-radius: 5px">
								<p class="text-center">Certificaci&oacute;n</p>
							</div>
						</div>
						<div class="col-lg-12">
							<textarea rows="10" class="form-control">La Secretaria de Gobierno del Municipio de Arauca hace certificacion al señor Victor Richard Farfan Valdes identificado con cedula de ciudadania # 9403970 expedida en el municipio de Arauca, y perteneciente al reguardo Zamuro de la comunidad Matecandela a la siguiente dependencia:</textarea>
							<p>Para constancia se firma a los DD dias del mes de MM del
								año AAAA</p>
						</div>

						<div class="col-lg-12" style="margin-top: 10px">
							<div class="col-lg-4"
								style="border: 1px solid black; border-radius: 5px; height: 100px">
								<br>
								<br>
								<br>
								<br>
								<legend
									style="background-color: black; height: 2px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
								<p class="text-right" style="margin-bottom: 20px">Firma</p>
							</div>
							<div class="col-lg-4"></div>
							<div class="col-lg-4"
								style="border: 1px solid black; border-radius: 5px; height: 100px">
								<br>
								<br>
								<br>
								<br>
								<legend
									style="background-color: black; height: 2px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
								<p class="text-right" style="margin-bottom: 20px">Firma</p>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="col-lg-4">
								<p style="margin-bottom: 0px">Elaboro y reviso</p>
								<p style="margin-bottom: 0px">
									<strong>Monica Trespalacios Castillo</strong>
								</p>
								<p style="margin-bottom: 0px">Coordinadora FONVIDA</p>
								<p>Fondo de Viviendas</p>
							</div>
							<div class="col-lg-4"></div>
							<div class="col-lg-4">
								<p style="margin-bottom: 0px">Recibe</p>
								<p style="margin-bottom: 0px">
									<strong>Victor Richard Farfan Valdes</strong>
								</p>
								<p style="margin-bottom: 0px">
									<strong>CC: </strong> 94443675
								</p>
								<p>
									<strong>Telefono: </strong> 3164444333
								</p>
							</div>
						</div>
						<div class="col-lg-12"
							style="border-top: 1px solid #DCDCDC; margin-top: 40px">
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									FONVIDA <br> Alcaldia de Arauca
								</p>
							</div>
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									Direccion <br> Carrera 24 Calle 18 y 19 Barrio la
									Esperanza
								</p>
							</div>
							<div class="col-lg-3" style="border-right: 1px solid #DCDCDC">
								<p style="font-size: 10px">
									Tel. dependencia <br> 57 7 8853156 Fax:57 7 8855186
								</p>
							</div>
							<div class="col-lg-3">
								<p style="font-size: 10px">
									Informacion / Contacto <br>
									contactenos@arauca-arauca.gov.co
								</p>
							</div>
						</div>
					</div>
				</div>
				<div id="NuevaPostulacion" class="tab-pane">
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-7">
										<h3 style="margin: 5px 0px 0px 0px">Postulaciones</h3>
									</div>
									<div class="col-lg-2">
										<a class="btn btn-warning" href="#" data-toggle="modal"
											data-target="#Postulaciones">Verificar postulacion</a>
									</div>
									<div class="col-lg-3">
										<a href="#" class="btn btn-warning">Generar postulacion</a>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-8" style="padding-top: 27px">
							<form class="form-inline">
								<div class="form-group">
									<label class="control-label" style="font-size: 15px">Consultar
										usuario</label> <input class="input-sm form-control" placeholder="#">
									<button type="button" class="btn btn-info">Buscar</button>
								</div>
							</form>
						</div>
						<div class="col-lg-4">
							<form class="form-inline">
								<div class="form-group">
									<p>Fecha</p>
									<input class="form-control input-sm" placeholder="DD/MM/AA">
								</div>
							</form>
						</div>
						<div class="col-lg-12" style="margin-top: 15px">
							<div class="panel panel-info">
								<div class="panel-heading">Datos de usuario</div>
								<div class="panel-body">
									<div class="col-lg-5">
										<dl class="dl-horizontal">
											<dt>Usuario:</dt>
											<dd>Victor Richard Farfan Valdes</dd>
											<dt>Cedula:</dt>
											<dd>29403970</dd>
										</dl>
									</div>
									<div class="col-lg-4">
										<dl class="dl-horizontal">
											<dt>Programa:</dt>
											<dd>X</dd>
											<dt>Subprograma:</dt>
											<dd>Y</dd>
										</dl>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<form class="form-horizontal">

								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample0" aria-expanded="false"
									aria-controls="collapseExample0"> Informacion Residencial y
									Contacto </a>

								<div class="collapse in" id="collapseExample0">
									<div
										style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
										<div class="form-group">
											<p class="text-center">
												<strong>Informacion Residencial y Contacto</strong>
											</p>
										</div>


										<div class="form-group">
											<label for="Departamento" class="col-sm-4 control-label">Departamento</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Departamento">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label for="CodDepartamento" class="col-sm-2 control-label">CodDANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodDepartamento">
											</div>
										</div>


										<div class="form-group">
											<label for="Municipio" class="col-sm-4 control-label">Municipio</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Municipio">
													<option>Arauca</option>
													<option>Arauquita</option>
													<option>Cravo Norte</option>
													<option>Fortul</option>
													<option>Puerto Rondon</option>
													<option>Saravena</option>
													<option>Tame</option>
												</select>
											</div>
											<label for="CodMunicipio" class="col-sm-2 control-label">CodDANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodMunicipio">
											</div>
										</div>

										<div class="form-group">
											<label for="Area" class="col-sm-4 control-label">Area/Zona/Sector</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Area">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Barrio" class="col-sm-4 control-label">Barrio</label>
											<div class="col-sm-3">
												<select class="form-control input-sm" id="Barrio"
													placeholder="Barrio">
													<option>Corocora</option>
													<option>Cristo Rey</option>
												</select>
											</div>
											<label for="Comuna" class="col-sm-2 control-label">Comuna</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Comuna"
													placeholder="Comuna">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Corregimiento" class="col-sm-4 control-label">Corregimiento</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Corregimiento">
													<option>Todos los Santos</option>
													<option>Mata de Piña</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Vereda" class="col-sm-4 control-label">Vereda</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Vereda">
													<option>Bocas del Ele</option>
													<option>Flor Amarillo</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="CondicionHabitacional"
												class="col-sm-4 control-label">Condicion
												Habitacional</label>
											<div class="col-sm-3">
												<select class="form-control input-sm"
													id="CondicionHabitacional"
													placeholder="Condicion Habitacional">
													<option>Arriendo</option>
													<option>Opcion 2</option>
												</select>
											</div>
											<label for="AreaSisben" class="col-sm-2 control-label">AreaSisben</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Area Sisben"
													placeholder="Area Sisben">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="DireccionResidencia"
												class="col-sm-4 control-label">Direccion Residencia</label>
											<div class="col-sm-7">
												<input class="form-control input-sm"
													id="DireccionResidencia" placeholder="Direccion Residencia">
											</div>
										</div>


										<div class="form-group">
											<label for="CorreoElectronico" class="col-sm-4 control-label">Correo</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control"
													id="CorreoElectronico" placeholder="Correo Electronico">
											</div>
										</div>

										<div class="form-group">
											<label for="Movil" class="col-sm-4 control-label">Movil</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control" id="Movil"
													placeholder="Movil">
											</div>
										</div>
									</div>
								</div>



								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample" aria-expanded="false"
									aria-controls="collapseExample"
									style="margin: 0px 0px 0px 0px; width: 100%"> Datos del
									Hogar Postulante </a>

								<div class="collapse" id="collapseExample"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div
										style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">


										<div class="form-group">
											<p class="text-center">
												<strong>Datos del hogar postulante</strong>
											</p>
										</div>


										<div class="form-group">
											<label for="Departamento" class="col-sm-4 control-label">Departamento</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Departamento">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label for="CodDepartamento" class="col-sm-2 control-label">CodDANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodDepartamento">
											</div>
										</div>


										<div class="form-group">
											<label for="Municipio" class="col-sm-4 control-label">Municipio</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Municipio">
													<option>Arauca</option>
													<option>Arauquita</option>
													<option>Cravo Norte</option>
													<option>Fortul</option>
													<option>Puerto Rondon</option>
													<option>Saravena</option>
													<option>Tame</option>
												</select>
											</div>
											<label for="CodMunicipio" class="col-sm-2 control-label">CodDANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodMunicipio">
											</div>
										</div>

										<div class="form-group">
											<label for="Area" class="col-sm-4 control-label">Area/Zona/Sector</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Area">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Barrio" class="col-sm-4 control-label">Barrio</label>
											<div class="col-sm-3">
												<select class="form-control input-sm" id="Barrio"
													placeholder="Barrio">
													<option>Corocora</option>
													<option>Cristo Rey</option>
												</select>
											</div>
											<label for="Comuna" class="col-sm-2 control-label">Comuna</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Comuna"
													placeholder="Comuna">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Corregimiento" class="col-sm-4 control-label">Corregimiento</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Corregimiento">
													<option>Todos los Santos</option>
													<option>Mata de Piña</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Vereda" class="col-sm-4 control-label">Vereda</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Vereda">
													<option>Bocas del Ele</option>
													<option>Flor Amarillo</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="CondicionHabitacional"
												class="col-sm-4 control-label">Condicion
												Habitacional</label>
											<div class="col-sm-3">
												<select class="form-control input-sm"
													id="CondicionHabitacional"
													placeholder="Condicion Habitacional">
													<option>Arriendo</option>
													<option>Opcion 2</option>
												</select>
											</div>
											<label for="AreaSisben" class="col-sm-2 control-label">AreaSisben</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Area Sisben"
													placeholder="Area Sisben">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="DireccionResidencia"
												class="col-sm-4 control-label">Direccion Actual</label>
											<div class="col-sm-7">
												<input class="form-control input-sm"
													id="DireccionResidencia" placeholder="Direccion Residencia">
											</div>
										</div>

										<div class="form-group">
											<label for="DireccionTrabajo" class="col-sm-4 control-label">Direccion
												laboral</label>
											<div class="col-sm-7">
												<input class="form-control input-sm" id="DireccionTrabajo"
													placeholder="Direccion sitio de trabajo">
											</div>
										</div>


										<div class="form-group">
											<label for="CorreoElectronico" class="col-sm-4 control-label">Correo</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control"
													id="CorreoElectronico" placeholder="Correo Electronico">
											</div>
										</div>

										<div class="form-group">
											<label for="Movil" class="col-sm-4 control-label">Movil</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control" id="Movil"
													placeholder="Movil">
											</div>
										</div>

										<div class="form-group">
											<label for="TelFijo" class="col-sm-4 control-label">Telefono
												Fijo</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control" id="TelFijo"
													placeholder="Telefono Fijo">
											</div>
										</div>
									</div>
								</div>


								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample1" aria-expanded="false"
									aria-controls="collapseExample1"> Modalidad de Vivienda </a>

								<div class="collapse" id="collapseExample1"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div>


										<div class="form-group">
											<p class="text-center">
												<strong>Modalidad de vivienda</strong>
											</p>
										</div>

										<div class="form-group">
											<label for="Area" class="col-sm-4 control-label">Area/Zona/Sector</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Area">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="ConMejoras" class="col-sm-4 control-label">Construccion/Mejoras</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="ConMejoras"
													placeholder="">
													<option>Construcci&oacute;n en Sitio Propio</option>
													<option>Mejoramiento de Vivienda</option>
												</select>
											</div>
										</div>
									</div>
								</div>


								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample2" aria-expanded="false"
									aria-controls="collapseExample2"> Comprobación predial y
									FONVIDA </a>

								<div class="collapse" id="collapseExample2"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div>

										<div class="form-group">
											<p class="text-center">
												<strong>Comprobacion predial y FONVIDA</strong>
											</p>
										</div>


										<div class="form-group">
											<label for="CantidadPredios" class="col-sm-4 control-label">Cantidad
												Predios</label>
											<div class="col-sm-2">
												<select type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<label for="TipoPostulante" class="col-sm-2 control-label">Postulante</label>
											<div class="col-sm-3">
												<select type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
													<option>Opcion 1</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="TipoPostulante" class="col-sm-4 control-label">Postulaciones</label>
											<div class="col-sm-2">
												<select type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
													<option>6</option>
													<option>7</option>
													<option>8</option>
													<option>9</option>
													<option>10</option>
												</select>
											</div>
											<label for="SubsidioVivienda" class="col-sm-2 control-label">Subsidio</label>
											<div class="col-sm-3">
												<select type="" class="input-sm form-control"
													id="SubsidioVivienda" placeholder="Subsidio Vivienda">
													<option>Beneficiario</option>
												</select>
											</div>
										</div>
									</div>
								</div>


							</form>
						</div>
						<div class="col-lg-6">
							<form class="form-horizontal">


								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample4" aria-expanded="false"
									aria-controls="collapseExample4"> Informaci&oacute;n del
									Inmueble </a>

								<div class="collapse in" id="collapseExample4"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div>



										<div class="form-group">
											<p class="text-center">
												<strong>Dimension del lote</strong>
											</p>
										</div>

										<div class="form-group">
											<label for="Municipio" class="col-sm-4 control-label">Frente
												(m)</label>
											<div class="col-sm-3">
												<input class="input-sm form-control" id="Municipio"
													placeholder="Frente (m  )">
											</div>
											<label for="CodMunicipio" class="col-sm-2 control-label">Fondo(m)</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodMunicipio"
													placeholder="Fondo">
											</div>
										</div>

										<div class="form-group">
											<p class="text-center">
												<strong>Informacion juridica del inmueble</strong>
											</p>
										</div>


										<div class="form-group">
											<label for="TitPropiedad" class="col-sm-4 control-label">Titulo
												de Propiedad</label>
											<div class="col-sm-7">
												<select type="" class="input-sm form-control"
													id="TitPropiedad" placeholder="Titulo de Propiedad">
													<option>Escritura</option>
													<option>Resolucion</option>
													<option>Carta de Venta</option>
													<option>Resolucion</option>
													<option>Certificado de Tradicion</option>
													<option>Certificado Tramite Incoder</option>
													<option>Certificado de ocupacion por junta de
														accion comunal</option>
													<option>Resolucion</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="CueConEscritura" class="col-sm-4 control-label">Tiene
												Escritura</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="CueConEscritura"
													placeholder="">
													<option>Si</option>
													<option>No</option>
												</select>
											</div>
											<label for="TipoLote" class="col-sm-2 control-label">Tipo
												Lote</label>
											<div class="col-sm-2">
												<select class="input-sm form-control" id="TipoLote"
													placeholder="Tipo de Lote">
													<option>U</option>
													<option>R</option>
												</select>
											</div>
										</div>


										<div class="form-group">
											<label for="NumEscritura" class="col-sm-4 control-label">Numero
												Escritura</label>
											<div class="col-sm-7">
												<input class="input-sm form-control" id="NumEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="NumEscritura" class="col-sm-4 control-label">#
												Mat. Inmobiliaria</label>
											<div class="col-sm-7">
												<input class="input-sm form-control" id="NumEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="NumEscritura" class="col-sm-4 control-label">Cedula
												Catastral</label>
											<div class="col-sm-7">
												<input class="input-sm form-control" id="NumEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="NumEscritura" class="col-sm-4 control-label">Fecha
												Expedicion</label>
											<div class="col-sm-7">
												<input class="input-sm form-control" id="NumEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="NumEscritura" class="col-sm-4 control-label">Lugar
												Expedicion</label>
											<div class="col-sm-7">
												<input class="form-control input-sm" id="NumEscritura">
											</div>
										</div>

									</div>
								</div>

								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample7" aria-expanded="false"
									style="margin: 0px 0px 0px 0px; width: 100%">
									Informaci&oacute;n General del Inmueble </a>

								<div class="collapse" id="collapseExample7"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div class="well"
										style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">

										<div class="form-group">
											<label for="Municipio" class="col-sm-8 control-label">Informaci&oacute;n
												General del Inmueble</label>
										</div>

										<div class="form-group">
											<label for="Coordenadas" class="col-sm-3 control-label">Coordenadas</label>
											<div class="col-sm-3">
												<input class="input-sm form-control" id="Coordenadas"
													placeholder="Norte">
											</div>
											<label for="CodMunicipio" class="col-sm-1 control-label"></label>
											<div class="col-sm-3">
												<input class="input-sm form-control" id="Coordenadas"
													placeholder="Oeste">
											</div>
										</div>

										<div class="form-group">
											<label for="Departamento" class="col-sm-3 control-label">Departamento</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Departamento">
													<option>Arauca</option>
													<option>Antioquia</option>
													<option>Atlantico</option>
													<option>Caldas</option>
													<option>Bolivar</option>
													<option>Cordoba</option>
													<option>Boyaca</option>
													<option>Caqueta</option>
													<option>Casanare</option>
													<option>Cauca</option>
													<option>Choco</option>
													<option>Guainia</option>
													<option>Guaviare</option>
													<option>Nariño</option>
													<option>Bolivar</option>
													<option>Quindio</option>
													<option>Putumayo</option>
													<option>Valle del Cauca</option>
													<option>Vaupes</option>
													<option>Vichada</option>
													<option>Cundinamarca</option>
													<option>Cesar</option>
													<option>La Guajira</option>
													<option>Magdalena</option>
													<option>Huila</option>
													<option>Tolima</option>
													<option>Norte de Santander</option>
													<option>Santander</option>
													<option>Caldas</option>
													<option>Bolivar</option>
												</select>
											</div>
											<label for="CodDepartamento" class="col-sm-2 control-label">Cod
												DANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodDepartamento">
											</div>
										</div>


										<div class="form-group">
											<label for="Municipio" class="col-sm-3 control-label">Municipio</label>
											<div class="col-sm-3">
												<select class="input-sm form-control" id="Municipio">
													<option>Arauca</option>
													<option>Arauquita</option>
													<option>Cravo Norte</option>
													<option>Fortul</option>
													<option>Puerto Rondon</option>
													<option>Saravena</option>
													<option>Tame</option>
												</select>
											</div>
											<label for="CodMunicipio" class="col-sm-2 control-label">Cod
												DANE</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="CodMunicipio">
											</div>
										</div>

										<div class="form-group">
											<label for="Area" class="col-sm-3 control-label">Area/Zona/Sector</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Area">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Barrio" class="col-sm-3 control-label">Barrio</label>
											<div class="col-sm-3">
												<select class="form-control input-sm" id="Barrio"
													placeholder="Barrio">
													<option>Corocora</option>
													<option>Cristo Rey</option>
												</select>
											</div>
											<label for="Comuna" class="col-sm-2 control-label">Comuna</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Comuna"
													placeholder="Comuna">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Corregimiento" class="col-sm-3 control-label">Corregimiento</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Corregimiento">
													<option>Todos los Santos</option>
													<option>Mata de Piña</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Vereda" class="col-sm-3 control-label">Vereda</label>
											<div class="col-sm-7">
												<select class="form-control input-sm" id="Corregimiento"
													placeholder="Vereda">
													<option>Bocas del Ele</option>
													<option>Flor Amarillo</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="CondicionHabitacional"
												class="col-sm-3 control-label">Condici&oacute;n
												Habitacional</label>
											<div class="col-sm-3">
												<select class="form-control input-sm"
													id="CondicionHabitacional"
													placeholder="Condicion Habitacional">
													<option>Arriendo</option>
													<option>Opcion 2</option>
												</select>
											</div>
											<label for="AreaSisben" class="col-sm-2 control-label">AreaSisben</label>
											<div class="col-sm-2">
												<select class="form-control input-sm" id="Area Sisben"
													placeholder="Area Sisben">
													<option>R</option>
													<option>U</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="Municipio" class="col-sm-7 control-label">Dimensiones
												del Lote</label>
										</div>

										<div class="form-group">
											<label for="Frente" class="col-sm-3 control-label">Frente
												(m)</label>
											<div class="col-sm-3">
												<input class="input-sm form-control" id="Frente"
													placeholder="Frente">
											</div>
											<label for="Fondo" class="col-sm-2 control-label">Fondo
												(m)</label>
											<div class="col-sm-2">
												<input class="input-sm form-control" id="Fondo"
													placeholder="Fondo">
											</div>
										</div>

										<div class="form-group">
											<label for="Municipio" class="col-sm-8 control-label">Disponibilidad
												de los servicios p&uacute;blicos</label>
										</div>


										<div class="form-group">
											<label for="" class="col-sm-3 control-label">Agua
												Potable</label>
											<div class="col-sm-5">
												<div class="checkbox-inline" style="margin-right: 8px">
													<input type="checkbox" value="valor1"> Acueducto
												</div>
												<div class="checkbox-inline">
													<input type="checkbox" value="option1"> Puntillo
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="CueConEscritura" class="col-sm-3 control-label">Tratamiento
												de aguas residuales</label>
											<div class="col-sm-5">
												<label class="checkbox-inline"> <input
													type="checkbox" id="inlineCheckbox1" value="valor1">
													Alcantarillado
												</label> <label class="checkbox-inline"> <input
													type="checkbox" id="inlineCheckbox1" value="option1">
													Pozo S&eacute;ptico
												</label>
											</div>
										</div>


										<div class="form-group">
											<label for="CueConEscritura" class="col-sm-3 control-label">Tiene
												Energía Electrica</label>
											<div class="col-sm-2">
												<select type="" class="input-sm form-control"
													id="CueConEscritura" placeholder="">
													<option>Si</option>
													<option>No</option>
												</select>
											</div>
										</div>


										<div class="form-group">
											<label for="Municipio" class="col-sm-8 control-label">Documentos
												relacionados al Inmueble</label>
										</div>

										<div class="form-group">
											<label for="CopEscritura" class="col-sm-3 control-label">Escritura</label>
											<div class="col-sm-2">
												<input type="file" id="CopEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="CopEscritura" class="col-sm-3 control-label">Copia
												Resolucion</label>
											<div class="col-sm-2">
												<input type="file" id="CopEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="CopEscritura" class="col-sm-3 control-label">Documento
												de identificacion</label>
											<div class="col-sm-2">
												<input type="file" id="CopEscritura">
											</div>
										</div>

										<div class="form-group">
											<label for="CopEscritura" class="col-sm-3 control-label">Paz
												y salvo Impuesto Predial</label>
											<div class="col-sm-2">
												<input type="file" id="CopEscritura">
											</div>
										</div>

									</div>
								</div>

								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExamplex" aria-expanded="false"
									aria-controls="collapseExamplex"
									style="margin: 0px 0px 0px 0px; width: 100%">
									Informaci&oacute;n de Cuentas de ahorro previo y/o
									Cesant&iacute;as </a>

								<div class="collapse" id="collapseExamplex"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div class="well"
										style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">

										<div class="form-group">
											<label for="Municipio" class="col-sm-8 control-label">Cuentas
												de ahorro previo</label>
										</div>


										<div class="form-group">
											<label for="CantidadPredios" class="col-sm-3 control-label">Entidad
												Captadora</label>
											<div class="col-sm-7">
												<select type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
													<option>Bancolombia</option>
													<option>Banco de Bogot&aacute;</option>
													<option>Davivienda</option>
													<option>Banco Popular</option>
													<option>Otro</option>
												</select>
											</div>
										</div>


										<div class="form-group">
											<label for="TipoPostulante" class="col-sm-3 control-label">Numero
												de cuenta</label>
											<div class="col-sm-7">
												<input type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
											</div>
										</div>

										<div class="form-group">
											<label for="FechasCuentas" class="col-sm-3 control-label">Fechas</label>
											<div class="col-sm-3">
												<input type="" class="input-sm form-control"
													id="FechasCuentas" placeholder="Apertura">
											</div>
											<label for="Inmovilizacion" class="col-sm-1 control-label"></label>
											<div class="col-sm-3">
												<input type="" class="input-sm form-control"
													id="Inmovilizacion" placeholder="Inmovilizacion">
											</div>
										</div>

										<div class="form-group">
											<label for="Municipio" class="col-sm-7 control-label">Cesantias</label>
										</div>



										<div class="form-group">
											<label for="CantidadPredios" class="col-sm-3 control-label">Entidad
												Depositaria</label>
											<div class="col-sm-7">
												<select type="" class="input-sm form-control"
													id="TipoPostulante" placeholder="Tipo Postulante">
													<option>Bancolombia</option>
													<option>Banco de Bogot&aacute;</option>
													<option>Davivienda</option>
													<option>Banco Popular</option>
													<option>Otro</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="FechasCuentas" class="col-sm-3 control-label">Fechas</label>
											<div class="col-sm-3">
												<input type="" class="input-sm form-control"
													id="FechasCuentas" placeholder="Certificacion">
											</div>
											<label for="Inmovilizacion" class="col-sm-1 control-label"></label>
											<div class="col-sm-3">
												<input type="" class="input-sm form-control"
													id="Inmovilizacion" placeholder="Inmovilizacion">
											</div>
										</div>


									</div>
								</div>

								<a class="btn btn-primary btn-block" data-toggle="collapse"
									href="#collapseExample6" aria-expanded="false"
									aria-controls="collapseExample6"
									style="margin: 0px 0px 0px 0px; width: 100%"> Recursos
									econ&oacute;micos </a>

								<div class="collapse" id="collapseExample6"
									style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">
									<div class="well"
										style="padding: 0px 0px 0px 0px; width: 100%; margin: 0px 0px 0px 0px">



										<div class="form-group">
											<label for="Municipio" class="col-sm-9 control-label">Ahorro
												Previo - Aporte del Hogar</label>
										</div>

										<form class="form-inline">
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Cuenta
															de ahorro programado</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>

										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Cesantias</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>

										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Ahorro
															previo en cualquier modalidad</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>

										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Credito
															Aprobado</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>

										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Evaluacion
															Crediticia</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>

										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Otros
															Recursos (Especificar)</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>


										<form>
											<div class="form-group"
												style="padding: 0px 0px 0px 0px; margin: 0px 0px 20px 0px">
												<label for="Municipio" class="col-sm-3 control-label"></label>
												<div class="col-sm-7">
													<div class="form-group has-success has-feedback"
														style="padding: 0px 0px 0px 0px; margin: 0px 0px 0px 0px">
														<label class="control-label" for="inputGroupSuccess3">Total
															Aporte Hogar</label>
														<div class="input-group">
															<span class="input-group-addon">$</span> <input
																type="text" class="form-control" id="inputGroupSuccess3"
																aria-describedby="inputGroupSuccess3Status">
														</div>
														<span class="glyphicon glyphicon-ok form-control-feedback"
															aria-hidden="true"></span> <span
															id="inputGroupSuccess3Status" class="sr-only">(success)</span>
													</div>
												</div>
											</div>
										</form>


										<div class="form-group">
											<label for="Municipio" class="col-sm-8 control-label">Datos
												Entidad crediticia</label>
										</div>


										<div class="form-group">
											<label for="TitPropiedad" class="col-sm-3 control-label">Entidad
												de credito aprobado</label>
											<div class="col-sm-7">
												<select type="" class="input-sm form-control"
													id="TitPropiedad" placeholder="Titulo de Propiedad">
													<option>Bancolombia</option>
													<option>Banco de Bogota</option>
													<option>Davivienda</option>
													<option>Banco Popular</option>
												</select>
											</div>
										</div>

										<div class="form-group">
											<label for="CueConEscritura" class="col-sm-3 control-label">Fecha
												de aprobacion</label>
											<div class="col-sm-7">
												<select type="" class="input-sm form-control"
													id="CueConEscritura" placeholder="">
													<option>Aqui va la fecha</option>
													<option>No</option>
												</select>
											</div>
										</div>

									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- Close tab content -->
			<!-- /#page-content-wrapper -->
		</div>
	</div>
	<!-- /#wrapper -->

	<footer>
		<div class="container-fluid" id="piepagina">
			<div class="row">
				<div class="col-lg-4">
					<a href="#"><img src="img/escudo_arauca_mini.png"></a> <a
						href="#"><img src="img/Logo_SAGMA_Blanco.png"
						style="height: 40px; widht: 50px"></a>
				</div>
				<div class="col-lg-3 pull-right"
					style="background-color: #228B22; border-radius: 5px;">
					<p
						style="float: right; color: white; font-size: 10px; margin-bottom: -1px">Alcaldia
						de Arauca 2014. www.arauca-arauca.gov.co</p>
					<p
						style="float: right; color: white; font-size: 10px; margin-bottom: -1px">
						<span class="glyphicon glyphicon-envelope"></span> Cra 21 # 19- 18
						Barrio la Esperanza
					</p>
					<p
						style="float: right; color: white; font-size: 10px; clear: both; margin-bottom: -1px">Sistemas@arauca.gov.co</p>
				</div>
			</div>
		</div>

	</footer>
	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery.js"/>" ></script>
	<script src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/jquery.dataTables.js"/>"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/tooltip.js"/>"></script>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<!-- Bootstrap Core JavaScript -->

	<!-- Menu Toggle Script -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('[data-toggle="tooltip"]').tooltip();
		});
	</script>
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
	</script>
	<script type="text/javascript">
		$('.btn-toggle').click(function() {
			$(this).find('.btn').toggleClass('active');

			if ($(this).find('.btn-primary').size() > 0) {
				$(this).find('.btn').toggleClass('btn-primary');
			}
			if ($(this).find('.btn-danger').size() > 0) {
				$(this).find('.btn').toggleClass('btn-danger');
			}
			if ($(this).find('.btn-success').size() > 0) {
				$(this).find('.btn').toggleClass('btn-success');
			}
			if ($(this).find('.btn-info').size() > 0) {
				$(this).find('.btn').toggleClass('btn-info');
			}

			$(this).find('.btn').toggleClass('btn-default');

		});

		$('form').submit(function() {
			alert($(this["options"]).val());
			return false;
		});

		$(function() {
			$('#tabulado a:last').tab('show')
		})
	</script>
	<script>
		$(document).ready(function() {
			$('#myTable').dataTable();
		});
		function formLogout() {
			document.getElementById("logoutForm").submit();
		}
	</script>
</body>

</html>
