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
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-theme.min.css" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap-theme.css" />" />
<title>Presupuesto</title>

<!-- Bootstrap Core CSS -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
</style>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/simple-sidebar.css"/>"
	rel="stylesheet" />

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
							<li><a href="programassociales">Programas sociales</a></li>
							<li><a href="contratacion">Contratacion</a></li>
							<li><a href="#">Presupuesto</a></li>
							<li><a href="bancoproyectos">Banco de proyectos</a></li>
							<li><a href="planeacion">Planeacion </a></li>
							<li><a href="localizacionpredial">Localizacion predial</a></li>
						</ul></li>
					<li><img
						src="<c:url value="/resources/img/Logo_Presupuesto.png"/>"
						style="height: 30px; width: 40px; margin: 10px 5px 0px 10px">
					</li>
					<li><a class="navbar-brand"> Presupuesto</a></li>
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
							<li><a href="javascript:formLogout()">Cerrar
									sesi&oacute;n</a></li>
						</ul></li>
				</ul>
				<legend
					style="background-color: red; height: 3px; max-width: 100%; margin: 0px 0px 0px -1px"></legend>
				<div class="row">
					<div class="col-xs-7">
						<h4>
							<img src="<c:url value="/resources/img/Logo_Presupuesto.png" />"
								style="height: 40px; width: 66px; margin: -5px 0px 0px -15px">
							Presupuestos municipales
						</h4>
					</div>
					<div class="col-xs-3 pull-right">
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; margin-top: 5px">
							Funcionario: <strong> Luis Emilio Tovar</strong>
						</p>
						<p style="float: right; font-size: 10px; margin-bottom: -1px">
							Cargo: <strong> Carrera administrativa</strong>
						</p>
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; clear: both">
							Dependencia: <strong> Contratacion</strong>
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
									src="<c:url value="/resources/img/Foto_Perfil_Fonvida.png"/>" width="120"
									height="160"></label>
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
				<div class="tab-pane" id="ModulosPagina">
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
							<div id="collapsecuatro" class="panel-collapse collapse in"
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
										<li><a href="#BienvenidaUsuario" data-toggle="tab"
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
							<div id="collapsecinco" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingcinco">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="programassociales"
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
				<div class="tab-pane active" id="Filtrospagina">
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
							<div id="filtro1" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="filtroheading1">
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
								class="glyphicon glyphicon-plus-sign"></span> Presupuestos <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#" data-toggle="tab">Nuevo presupuesto</a></li>
								<li><a href="#FormularioUsuario2" data-toggle="tab">Consultar
										presupuesto</a></li>
								<li><a href="#" data-toggle="tab">Listar presupuesto</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-right">
						<li><a href="#"><span class="glyphicon glyphicon-print"></span>
								Imprimir</a></li>
					</ul>
				</div>
			</nav>

			<div class="tab-content">
				<div class="tab-pane active" id="FormularioUsuario2">
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
					<a href="#"><img
						src="<c:url value="/resources/img/escudo_arauca_mini.png" />"></a>
					<a href="#"><img
						src="<c:url value="/resources/img/Logo_SAGMA_Blanco.png" />"
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
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
		<form action="${logoutUrl}" method="post" id="logoutForm">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</footer>
	<!-- jQuery -->
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.dataTables.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.js"/>"></script>
	<!-- Bootstrap Core JavaScript -->

	<!-- Menu Toggle Script -->
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
