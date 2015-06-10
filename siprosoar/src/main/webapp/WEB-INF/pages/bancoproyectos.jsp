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

<link href="<c:url value="/resources/css/bootstrap.css"/>"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap-theme.css"/>" />
<title>Banco de proyectos</title>

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
<style>
#demo {
	background: white;
}

.sortitem {
	background: white;
	padding-left: 20px;
}

.sortitem .sorthandle {
	position: absolute;
	top: 5px;
	bottom: 5px;
	left: 3px;
	width: 8px;
	display: none;
	background-image:
		url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAQAAAAECAYAAACp8Z5+AAAAB3RJTUUH3wIDBycZ/Cj09AAAAAlwSFlzAAALEgAACxIB0t1+/AAAAARnQU1BAACxjwv8YQUAAAAWSURBVHjaY2DABhoaGupBGMRmYiAEAKo2BAFbROu9AAAAAElFTkSuQmCC');
}

.sortitem:hover .sorthandle {
	display: block;
}
</style>
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
							<li><a href="presupuesto">Presupuesto</a></li>
							<li><a href="#">Banco de proyectos</a></li>
							<li><a href="planeacion">Planeacion </a></li>
							<li><a href="localizacionpredial">Localizacion predial</a></li>
						</ul></li>
					<li><img src="<c:url value="/resources/img/Logo_BP.png"/>"
						style="height: 30px; width: 40px; margin: 10px 5px 0px 10px">
					</li>
					<li><a class="navbar-brand"> Banco de proyectos</a></li>
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
					<div class="col-lg-7">
						<h4>
							<img src="<c:url value="/resources/img/Logo_BP.png"/>"
								style="height: 40px; width: 60px; margin: -5px 0px 0px -15px">
							Banco de proyectos
						</h4>
					</div>
					<div class="col-xs-3 pull-right">
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; margin-top: 5px">
							Funcionario: <strong> Nubia Aidee Martinez</strong>
						</p>
						<p style="float: right; font-size: 10px; margin-bottom: -1px">
							Cargo: <strong> Jefe Banco Proyectos Municipio de Arauca</strong>
						</p>
						<p
							style="float: right; font-size: 10px; margin-bottom: -1px; clear: both">
							Dependencia: <strong> Banco de Proyectos</strong>
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
									src="<c:url value="/resources/img/Foto_Perfil_Fonvida.png"/>"
									width="120" height="160"></label>
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
										href="#collapseuno" aria-expanded="false"> Formularios <span
										class="badge pull-right">3</span>
									</a>
								</h4>
							</div>
							<div id="collapseuno" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headinguno">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#VeriRequisitos" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Verificacion
												requisitos regalias</a></li>
										<li><a href="#VeriOtrasFuentes" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Verificacion
												requisitos otras fuentes</a></li>
										<li><a href="#VeriRequisitosOCAD" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Verificacion
												requisitos OCAD</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingdos">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsedos"
										aria-expanded="false"> Actas <span
										class="badge pull-right">1</span>
									</a>
								</h4>
							</div>
							<div id="collapsedos" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingdos">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Actas
												de cierre</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="panel panel-default" style="margin-top: 0px">
							<div class="panel-heading" role="tab" id="headingtres">
								<h4 class="panel-title">
									<a class="collapsed" data-toggle="collapse"
										data-parent="#acordion" href="#collapsetres"
										aria-expanded="false"> Evaluacion <span
										class="badge pull-right">1</span>
									</a>
								</h4>
							</div>
							<div id="collapsetres" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingtres">
								<div class="panel-body" style="padding: 0px 0px 0px 0px">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#" data-toggle="tab"
											style="padding: 5px 5px 5px 5px; border-radius: 0">Ficha
												de evaluacion</a></li>
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
								class="glyphicon glyphicon-book"></span> Proyectos <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#InsProyectos" data-toggle="tab">Inscribir
										proyecto</a></li>
								<li><a href="#ConsultaProyectos" data-toggle="tab">Consultar
										proyectos</a></li>
								<li><a href="#" data-toggle="tab">Editar</a></li>
								<li><a href="#" data-toggle="tab">Ficha tecnica</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Reportes y estadisticas <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Proyecto por unidad ejecutora</a></li>
								<li><a href="#">Proyecto por dimension</a></li>
								<li><a href="#">Proyecto por programa social</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" data-toggle="dropdown"
							class="dropdown-toggle">Viabilidad <span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#ViabiProyectos" data-toggle="tab">Viabilizar
										proyecto</a></li>
								<li><a href="#" data-toggle="tab">Editar</a></li>
								<li><a href="#">Ficha tecnica</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav pull-right">
						<li><a href="#"><span class="glyphicon glyphicon-refresh"></span>
								Guardar</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-print"></span>
								Imprimir</a></li>
					</ul>
				</div>
			</nav>

			<div class="tab-content">
				<div class="tab-pane active" id="InsProyectos">
					<div class="row" style="margin-top: 10px">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10">
										<h3 style="margin: 0px">Formulario de inscripcion de
											proyectos - Certificado de elegibilidad</h3>
									</div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Crear
											proyecto</button>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<form>
								<div class="form-group col-lg-4">
									<label class="control-label">Codigo BPIM asignado</label> <input
										class="form-control input-sm" value="Por generar">
								</div>
								<div class="form-group col-lg-4">
									<label class="control-label">Fecha de radicacion</label> <input
										class="form-control input-sm" placeholder="DD/MM/AA">
								</div>
								<div class="form-group col-lg-4">
									<label class="control-label">Fecha de registro</label> <input
										class="form-control input-sm" placeholder="DD/MM/AA">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Entidad que radica</label> <select
										class="form-control input-sm">
										<option>Oficina asesora de planeacion y control
											interno</option>
										<option>Fondo de vivienda y desarrollo municipal de
											Arauca</option>
										<option>Oficina asesora de comunicaciones, cultura,
											turismo y protocolo</option>
										<option>Secretaria de gobierno municipal</option>
										<option>Secretaria de hacienda municipal</option>
										<option>Secretaria de agricultura, ganaderia y medio
											ambiente</option>
										<option>Secretaria de salud municipal</option>
										<option>Secretaria de educacion municipal</option>
										<option>Secretaria de obras publicas municipales</option>
										<option>Secretaria de apoyo a la administracion
											municipal</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod entidad</label> <input
										class="form-control input-sm" value="#">
								</div>
								<div class="form-group col-lg-7">
									<label class="control-label">Direccion entidad</label> <input
										class="form-control input-sm">
								</div>
								<div class="form-group col-lg-5">
									<label class="control-label">Telefono entidad</label> <input
										class="form-control input-sm" value="#">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Funcionario responsable</label> <select
										class="form-control input-sm">
										<option>Monica Trespalacios Castillo</option>
										<option>Phillip Alexander Moreno Rodriguez</option>
										<option>Jair Arley Santana</option>
										<option>Laura Janeth Ferreira Cabarique</option>
										<option>Stella Solano Trigos</option>
										<option>Luis Ernesto Tovar Arias</option>
										<option>Mariana Ramirez Rojas</option>
										<option>Carlos Humberto Jimenez Cedeno</option>
										<option>Layla Zorro Vega</option>
										<option>Maira Yelitza Manosalva</option>
										<option>Gustavo Trespalacios</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod funcionario</label> <input
										class="input-sm form-control" value="#">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Dimension del PDM, en el
										que se inscribe</label> <select class="form-control input-sm">
										<option>Dimensi&oacute;n poblacional</option>
										<option>Dimension sociocultural</option>
										<option>Dimension economica</option>
										<option>Dimension ambiente construido</option>
										<option>Dimension ambiente natural</option>
										<option>Dimension politico administrativo</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod dimension</label> <input
										class="form-control input-sm" value="#">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Sector de inversion del
										PDM</label> <select class="form-control input-sm">
										<option>Serguridad, convivencia y orden publico</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod sector</label> <input
										class="form-control input-sm" value="#">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Identificacion del
										programa del PDM</label> <select class="form-control input-sm">
										<option>Arauca con agua potable y Saneamiento basico</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod programa</label> <input
										class="form-control input-sm" value="#">
								</div>
								<div class="form-group col-lg-9">
									<label class="control-label">Identificacion del
										subprograma del PDM</label> <select class="form-control input-sm">
										<option>Arauca con agua potable y Saneamiento basico</option>
									</select>
								</div>
								<div class="form-group col-lg-3">
									<label class="control-label">Cod</label> <input
										class="form-control input-sm" value="#">
								</div>
								<label>Clasificacion presupuestal (Rubro presupuestal)</label>
								<div class="form-group">
									<div class="row"
										style="border: 1px solid #DCDCDC; padding: 5px 0px 5px 0px; margin-bottom: 0px;">
										<div class="col-lg-4">
											<label class="control-label">Codigo</label> <input
												class="form-control input-sm" value="#">
										</div>
										<div class="col-lg-8">
											<label class="control-label">Nombre del rubro
												presupuestal</label>
											<textarea class="form-control" rows="1"></textarea>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label">Dependencia que avalo el
										concepto de viabilidad</label> <select class="form-control input-sm">
										<option>Secretaria de gobierno municipal</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Funcionario que expidio el
										concepto de viabilidad</label> <select class="form-control input-sm">
										<option>Laura Janeth Ferreira Cabarique</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Funcionario de banco de
										proyectos que realizo control posterior</label> <select
										class="form-control input-sm">
										<option>Nubia Aide Martinez Nieves</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Concepto de control
										posterior (Sintesis)</label>
									<textarea class="form-control" rows="6"></textarea>
								</div>
							</form>
						</div>
						<div class="col-lg-6">
							<form>
								<div class="form-group">
									<label class="control-label">Denominacion del proyecto
										de inversion</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
								<div class="form-group">
									<label class="control-label">Objetivo general del
										proyecto</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
								<div class="panel panel-info">
									<div class="panel-heading">Meta de resultado del PDM</div>
									<div class="panel-body">
										<div class="form-group">
											<label class="control-label">Descripcion</label>
											<textarea class="form-control" rows="2"></textarea>
										</div>
										<div class="form-group">
											<label class="control-label">Indicador</label>
											<textarea class="form-control" rows="2"></textarea>
										</div>
										<div class="form-group col-lg-6">
											<label class="control-label">Linea base</label> <input
												class="form-control input-sm" value="#">
										</div>
										<div class="form-group col-lg-6">
											<label class="control-label">Valor programado</label> <input
												class="form-control input-sm" value="#">
										</div>

									</div>
								</div>
								<div class="panel panel-info">
									<div class="panel-heading">Meta de producto del PDM</div>
									<div class="panel-body">
										<div class="form-group">
											<label class="control-label">Descripcion</label>
											<textarea class="form-control" rows="2"></textarea>
										</div>
										<div class="form-group">
											<label class="control-label">Indicador</label>
											<textarea class="form-control" rows="2"></textarea>
										</div>
										<div class="form-group col-lg-6">
											<label class="control-label">Linea base</label> <input
												class="form-control input-sm" value="#">
										</div>
										<div class="form-group col-lg-6">
											<label class="control-label">Valor programado</label> <input
												class="form-control input-sm" value="#">
										</div>
									</div>
								</div>
								<div class="panel panel-info">
									<div class="panel-heading">Fuentes de financiacion</div>
									<div class="panel-body">
										<div class="form-group col-lg-3">
											<label class="control-label">Fuentes</label> <input
												class="form-control input-sm" value="Fuente1"
												style="margin-bottom: 13px"> <input
												class="form-control input-sm" value="Fuente2">
										</div>
										<div class="form-group col-lg-2">
											<label class="control-label">Cod</label> <input
												class="form-control input-sm" value="28"
												style="margin-bottom: 13px"> <input
												class="form-control input-sm" value="#">
										</div>
										<div class="form-group col-lg-3">
											<label class="control-label">Nombre</label>
											<textarea class="form-control" rows="1"
												style="margin-bottom: 6px"></textarea>
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="form-group col-lg-4">
											<label class="control-label">Monto(En pesos)</label> <input
												class="form-control input-sm" value="$500.000"
												style="margin-bottom: 13px"> <input
												class="form-control input-sm" value="#">
										</div>
									</div>
								</div>

							</form>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10"></div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Crear
											proyecto</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="VeriRequisitos">
					<div class="row" style="margin-top: 10px">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10">
										<h3 style="margin: 0px">Verificacion de requisitos de
											regalias</h3>
									</div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											regalias</button>
									</div>
								</div>
							</div>
							<div class="alert alert-success col-lg-10" role="alert"
								style="padding: 3px 0px 3px 5px">Sector de inversion
								(Documentos generales requeridos)</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<!-- Bootstrap 3 panel list. -->
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<!-- sort item -->
									<span class="sorthandle"> </span>
									<!-- sort handle -->
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10">
											<p>Formato diligenciado de verificacion y requisitos para
												el registro de proyectos</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Carta de presentacion del proyecto</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Carta de presentacion de recursos firmada por el
												representante legal donde se especifique:</p>
											<ol>
												<li>Valor total del proyecto, el monto de los recursos
													solicitados, el valor de la confinacion especificando las
													entidades aportantes, valor solicitado en cada vigencia.</li>
												<li>Tiempo de ejecucion.</li>
												<li>El sector de inversion al que corresponde el
													proyecto.</li>
											</ol>
											<p>Este documento es diligenciado por la Oficina Asesora
												de Planeacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Acta de socializacion del proyecto con la comunidad
												debidamente firmada por los asistentes.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>CD con aplicativo MGA que transmita</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>MGA inpresa (Metodologia General de Formulacion
												version actualizada DNP)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion de viabilidad</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Documento tecnico general del proyecto</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Presupuesto detallado. Cuadro del presupuesto
												detallado (cantidad, unidad, precio unitario y costo total)
												firmado por el profesional que lo elabora y el responsable
												de area.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Analisis de precios unitarios actualizado al año que
												se presenta el proyecto, anexando certificacion de la
												Secretaria de obras publicas donde conste que los precios
												unitarios corresponden al promedio de la region y que son
												utilizados para este tipo de obras. Cuando se requiera.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Desagregacion del AIU. Cuando se requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Programacion de obra y flujo de fondos</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan financiero por usos y fuentes, con sus
												respectivos soportes. (en caso de otras fuentes)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudio del mercado, (minimo 3 cotizaciones) para
												suministros de bienes y servicios con las respectivas
												especificaciones tecnicas</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion de la Unidad ejecutora donde conste que
												los precios unitarios corresponden al promedio de la region
												y que son utilizados para este tipo de obras y/o servicios.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plano de localizacion geografica del proyecto
												(departamental, municipal, veredal), del(los) lote(s).</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Disponibilidad presupuestal o carta de compromiso de
												financiacion de entidades diferentes del Municipio en caso
												de confinacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de sostenibilidad del proyecto de
												inversion expedido por la entidad ejecutora y de las demas
												entidades aportantes que garantizen la operacion y/o
												funcionamiento y/o mantenimiento del proyecto en el tiempo
												(Firmada por el representante legal).</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de la oficina asesora de planeacion
												municipal en el cual conste que el proyecto esta acorde con
												los usos y tratamientos del suelo definidos por su
												territorio en el plan basico de ordenamiento territorial
												(PBOT), que no se encuentre en zonas de riesgo o afectacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion en la cual indique que el proyecto se
												encuentra incluido en el plan de Desarrollo Municipal</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion en el cual indique que el proyecto se
												encuentra articulado en el plan de Desarrollo Departamental
												y Nacional. (Firmado por la Unidad ejecutora)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado en el cual indique que el proyecto se
												ajusta a las consideraciones tecnicas y sociales que se
												requieren para la ejecucion del mismo. (Expedida y firmada
												por la Unidad ejecutora)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion que diga si los trabajos se ejecutaran
												en predios de propiedad del estado (Por lo tanto se
												considera bien publico). Cuando se requiera.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Formato F-SCV-17 programacion y ejecucion de proyectos
												de informacion financiados con recursos de regalias y
												compensaciones disponibles a diciembre 31 del 2011 y del
												SGR.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-success col-lg-10" role="alert"
								style="padding: 3px 0px 3px 5px">Para proyectos de
								infraestructura fisica</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudios, diseños, especificaciones técnicas
												definitivas, y los planos de las obras contempladas en el
												proyecto en la escala apropiada, que lo soporten técnica y
												financieramente firmados por el profesional competente, con
												su respectiva matricula profesional, cumpliendo la
												normatividad vigente del sector. Debidamente firmados.
												(Diseños según el tipo de obra (estructurales,
												hidráulicos, eléctricos etc.)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px;">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudios de suelos. Cuando se requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan Maestro de Acueducto y Alcantarillado. Cuando se
												requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificación de la Empresa de Servicios Públicos -
												EMSERPA la que conste que el lote cuenta con disponibilidad
												de servicios públicos inmediata y permanente avalados por
												las empresas prestadoras del servicio. (Vivienda, Colegios,
												edificaciones en general). EN LOS CASOS QUE SE NECESITE</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado Licencia de construcción y
												Autoliquidación</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan de manejo ambiental. cuando sea el caso.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Licencia ambiental. cuando sea el caso.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de la Autoridad Ambiental competente en el
												cual conste que el proyecto y las actividades y obras
												propuestas está acorde con el Plan de Ordenamiento y Manejo
												de Cuencas – POMCA, si no se encuentra formulado, la
												Autoridad Ambiental debe indicar tal situación y no se
												solicitará esta certificación EN CASO DE NECESITARSE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de tradición y libertad, certificado
												catastral, avalúos, escritura y demás requisitos legales.
												(en caso de compra de predios).Certificados de libertad y
												tradición o folio de matrícula inmobiliaria con máximo
												tres meses de expedición, donde conste que la propiedad
												corresponde al departamento, municipio o distrito
												respectivo, a excepción de los bienes de uso público
												establecidos en los Decretos 2811 de 1974 y 2324 de 1984,
												que no son sujetos a registro o las normas que la modifiquen
												o sustituyan. Los resguardos y/o asociaciones de cabildos y
												autoridades indígenas tradicionales, pueden acreditar la
												propiedad mediante la presentación del acto colectivo del
												resguardo suscrito por la autoridad tradicional o cabildo
												gobernador, donde señale que el predio se encuentra en su
												jurisdicción. Para las comunidades negras se requiere el
												documento de titularización expedido por INCODER
												acompañado por un aval suscrito por el consejo comunitario
												de los territorios colectivos de comunidades negras. PARA EL
												CASO DE DONDE SE REALICEN OBRAS O EDIFICACIONES NUEVAS</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificación de la autoridad competente que el
												proyecto a ejecutar afecta o no a comunidades indígenas y/o
												afrodescendientes; en caso que afecte se debe dar
												cumplimiento a la Consulta Previa, de conformidad con lo
												establecido en la Ley 21 de 1991 y entre otras, la Sentencia
												461 de 2008 de la Corte Constitucional. CERTIFICACION EN LA
												CUAL DIGA QUE NO AFECTA A ESTAS COMUNIDADES O SI LAS AFECTA
												REALIZAR LA RESPECTIVA CONSULTA PREVIA.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Cuando el proyecto requiera una servidumbre, se debe
												anexar el certificado de libertad y tradición del predio
												sirviente donde conste la inscripción de la misma, así
												como la escritura pública a través de la cual se
												constituyó. La servidumbre debe ser indefinida en el
												tiempo. Respecto al predio sirviente se debe anexar copia de
												la escritura en la que conste que quien otorga la
												servidumbre es el dueño del predio. (Electricidad,
												acueducto, alcantarillado, vías). EN LOS CASOS QUE SE
												NECESITE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Cuando se trate de la construcción de un proyecto por
												etapas, se debe indicar las fuentes de financiación con la
												que se ejecutarán y las mismas deben ser funcionales. EN
												LOS CASOS QUE SE NECESITE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10"></div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											regalias</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="VeriOtrasFuentes">
					<div class="row" style="margin-top: 10px">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10">
										<h3 style="margin: 0px">Verificacion de requisitos de
											otras fuentes</h3>
									</div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											fuentes</button>
									</div>
								</div>
							</div>
							<div class="alert alert-success col-lg-10" role="alert"
								style="padding: 3px 0px 3px 5px">Sector de inversion
								(Documentos generales requeridos)</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<!-- Bootstrap 3 panel list. -->
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<!-- sort item -->
									<span class="sorthandle"> </span>
									<!-- sort handle -->
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10">
											<p>Formato diligenciado de verificacion y requisitos para
												el registro de proyectos</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Carta de presentacion del proyecto</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Carta de presentacion de recursos firmada por el
												representante legal donde se especifique:</p>
											<ol>
												<li>Valor total del proyecto, el monto de los recursos
													solicitados, el valor de la confinacion especificando las
													entidades aportantes, valor solicitado en cada vigencia.</li>
												<li>Tiempo de ejecucion.</li>
												<li>El sector de inversion al que corresponde el
													proyecto.</li>
											</ol>
											<p>Este documento es diligenciado por la Oficina Asesora
												de Planeacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Acta de socializacion del proyecto con la comunidad
												debidamente firmada por los asistentes.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>CD con aplicativo MGA que transmita</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>MGA inpresa (Metodologia General de Formulacion
												version actualizada DNP)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion de viabilidad</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Documento tecnico general del proyecto</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Presupuesto detallado. Cuadro del presupuesto
												detallado (cantidad, unidad, precio unitario y costo total)
												firmado por el profesional que lo elabora y el responsable
												de area.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Analisis de precios unitarios actualizado al año que
												se presenta el proyecto, anexando certificacion de la
												Secretaria de obras publicas donde conste que los precios
												unitarios corresponden al promedio de la region y que son
												utilizados para este tipo de obras. Cuando se requiera.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Desagregacion del AIU. Cuando se requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Programacion de obra y flujo de fondos</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan financiero por usos y fuentes, con sus
												respectivos soportes. (en caso de otras fuentes)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px"
											style="width:100%">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudio del mercado, (minimo 3 cotizaciones) para
												suministros de bienes y servicios con las respectivas
												especificaciones tecnicas</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion de la Unidad ejecutora donde conste que
												los precios unitarios corresponden al promedio de la region
												y que son utilizados para este tipo de obras y/o servicios.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plano de localizacion geografica del proyecto
												(departamental, municipal, veredal), del(los) lote(s).</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Disponibilidad presupuestal o carta de compromiso de
												financiacion de entidades diferentes del Municipio en caso
												de confinacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de sostenibilidad del proyecto de
												inversion expedido por la entidad ejecutora y de las demas
												entidades aportantes que garantizen la operacion y/o
												funcionamiento y/o mantenimiento del proyecto en el tiempo
												(Firmada por el representante legal).</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de la oficina asesora de planeacion
												municipal en el cual conste que el proyecto esta acorde con
												los usos y tratamientos del suelo definidos por su
												territorio en el plan basico de ordenamiento territorial
												(PBOT), que no se encuentre en zonas de riesgo o afectacion.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion en la cual indique que el proyecto se
												encuentra incluido en el plan de Desarrollo Municipal</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion en el cual indique que el proyecto se
												encuentra articulado en el plan de Desarrollo Departamental
												y Nacional. (Firmado por la Unidad ejecutora)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado en el cual indique que el proyecto se
												ajusta a las consideraciones tecnicas y sociales que se
												requieren para la ejecucion del mismo. (Expedida y firmada
												por la Unidad ejecutora)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificacion que diga si los trabajos se ejecutaran
												en predios de propiedad del estado (Por lo tanto se
												considera bien publico). Cuando se requiera.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Formato F-SCV-17 programacion y ejecucion de proyectos
												de informacion financiados con recursos de regalias y
												compensaciones disponibles a diciembre 31 del 2011 y del
												SGR.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-success col-lg-10" role="alert"
								style="padding: 3px 0px 3px 5px">Para proyectos de
								infraestructura fisica</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudios, diseños, especificaciones técnicas
												definitivas, y los planos de las obras contempladas en el
												proyecto en la escala apropiada, que lo soporten técnica y
												financieramente firmados por el profesional competente, con
												su respectiva matricula profesional, cumpliendo la
												normatividad vigente del sector. Debidamente firmados.
												(Diseños según el tipo de obra (estructurales,
												hidráulicos, eléctricos etc.)</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px;">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estudios de suelos. Cuando se requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan Maestro de Acueducto y Alcantarillado. Cuando se
												requiera</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificación de la Empresa de Servicios Públicos -
												EMSERPA la que conste que el lote cuenta con disponibilidad
												de servicios públicos inmediata y permanente avalados por
												las empresas prestadoras del servicio. (Vivienda, Colegios,
												edificaciones en general). EN LOS CASOS QUE SE NECESITE</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado Licencia de construcción y
												Autoliquidación</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Plan de manejo ambiental. cuando sea el caso.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Licencia ambiental. cuando sea el caso.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de la Autoridad Ambiental competente en el
												cual conste que el proyecto y las actividades y obras
												propuestas está acorde con el Plan de Ordenamiento y Manejo
												de Cuencas – POMCA, si no se encuentra formulado, la
												Autoridad Ambiental debe indicar tal situación y no se
												solicitará esta certificación EN CASO DE NECESITARSE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificado de tradición y libertad, certificado
												catastral, avalúos, escritura y demás requisitos legales.
												(en caso de compra de predios).Certificados de libertad y
												tradición o folio de matrícula inmobiliaria con máximo
												tres meses de expedición, donde conste que la propiedad
												corresponde al departamento, municipio o distrito
												respectivo, a excepción de los bienes de uso público
												establecidos en los Decretos 2811 de 1974 y 2324 de 1984,
												que no son sujetos a registro o las normas que la modifiquen
												o sustituyan. Los resguardos y/o asociaciones de cabildos y
												autoridades indígenas tradicionales, pueden acreditar la
												propiedad mediante la presentación del acto colectivo del
												resguardo suscrito por la autoridad tradicional o cabildo
												gobernador, donde señale que el predio se encuentra en su
												jurisdicción. Para las comunidades negras se requiere el
												documento de titularización expedido por INCODER
												acompañado por un aval suscrito por el consejo comunitario
												de los territorios colectivos de comunidades negras. PARA EL
												CASO DE DONDE SE REALICEN OBRAS O EDIFICACIONES NUEVAS</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Certificación de la autoridad competente que el
												proyecto a ejecutar afecta o no a comunidades indígenas y/o
												afrodescendientes; en caso que afecte se debe dar
												cumplimiento a la Consulta Previa, de conformidad con lo
												establecido en la Ley 21 de 1991 y entre otras, la Sentencia
												461 de 2008 de la Corte Constitucional. CERTIFICACION EN LA
												CUAL DIGA QUE NO AFECTA A ESTAS COMUNIDADES O SI LAS AFECTA
												REALIZAR LA RESPECTIVA CONSULTA PREVIA.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Cuando el proyecto requiera una servidumbre, se debe
												anexar el certificado de libertad y tradición del predio
												sirviente donde conste la inscripción de la misma, así
												como la escritura pública a través de la cual se
												constituyó. La servidumbre debe ser indefinida en el
												tiempo. Respecto al predio sirviente se debe anexar copia de
												la escritura en la que conste que quien otorga la
												servidumbre es el dueño del predio. (Electricidad,
												acueducto, alcantarillado, vías). EN LOS CASOS QUE SE
												NECESITE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Cuando se trate de la construcción de un proyecto por
												etapas, se debe indicar las fuentes de financiación con la
												que se ejecutarán y las mismas deben ser funcionales. EN
												LOS CASOS QUE SE NECESITE.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-success col-lg-10" role="alert"
								style="padding: 3px 0px 3px 5px">Para actualizaciones de
								los proyectos que se encuentran en ejecucion</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<div class="col-lg-3">
												<p>Actualizacion de los items</p>
											</div>
											<div class="col-lg-4">
												<input class="input-sm form-control"
													placeholder="1,2,3,4,5,6...">
											</div>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Informe tecnico de interventor y supervisor, en el
												cual se indiquen los avances de ejecución del proyecto,
												justificación de las modificaciones o adiciones que se
												requieran.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10"></div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											fuentes</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-pane" id="VeriRequisitosOCAD">
					<div class="row" style="margin-top: 10px">
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10">
										<h3 style="margin: 0px">Verificacion de requisitos OCAD</h3>
									</div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											OCAD</button>
									</div>
								</div>
							</div>
							<div class="alert alert-success col-lg-8" role="alert"
								style="padding: 3px 0px 3px 5px">Sector de inversion:
								Deporte y recreacion; Vivienda y desarrollo urbano</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Cumple?</div>
							<div class="alert alert-success col-lg-2 text-center"
								role="alert" style="padding: 3px 0px 3px 5px">Observacion</div>
							<div class="alert alert-success col-lg-1" role="alert"
								style="padding: 3px 0px 3px 5px">Paginas</div>
						</div>
						<div class="col-lg-12">
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificación Secretaria Técnica cumplimiento de
												requisitos.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<p>
									<strong>Carta de presentación y solicitud de recursos
										firmada por el Alcalde representante legal de las entidad,
										donde se especifique:</strong>
								</p>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Valor total del proyecto, el valor solicitado en cada
												vigencia y el monto de los recursos solicitados al Sistema
												General de Regalías - SGR- identificando de que Fondo
												provienen o si corresponden a asignaciones directas y el
												valor de cofinanciación, si a ello hubiere lugar,
												especificando las entidades aportantes.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Entidad ejecutora propuesta. Para el caso de los
												proyectos financiados con cargo a las asignaciones directas
												del Sistema General de Regalías y de los que trata el
												numeral 2o del articulo 34 de la Ley 1530 de 2012, será la
												entidad territorial; sin perjuicio, que ésta pueda proponer
												otro ejecutor.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Tiempo de ejecución.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>El sector de inversión al que corresponde el
												proyecto.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Fase o Fases en las que se presenta el proyecto</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Perfil del Proyecto.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Proyecto Formulado en Metodología General del SGR.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Concepto de Viabilidad y Oportunidad.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificación de la Secretaria de Planeación de la
												(s) entidad (es) territorial (es) que presentan los
												proyectos de inversión, o de aquellas donde se van a
												ejecutar los mismos, en la que conste que éstos se
												encuentran en concordancia con los respectivos Planes de
												Desarrollo, de acuerdo con la órbita de competencias de la
												entidad territorial.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificado de la entidad territorial en el cual
												conste que el proyecto está acorde con los usos y
												tratamientos del suelo definidos para su territorio en el
												Plan de Ordenamiento Territorial- POT, Plan Básico de
												Ordenamiento Territorial- PBOT, o Esquema de Ordenamiento
												Territorial- EOT cuando aplique.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<p>
									<strong>Para acreditar la titularidad del inmueble, se
										debe allegar:</strong>
								</p>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificado de Tradición y Libertad con máximo tres
												(3) meses de expedición, donde conste que la propiedad
												corresponde al departamento, municipio, distrito o entidad
												pública, a excepción de los bienes de uso público que
												conforme a las normas vigentes no son sujetos a registro.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Acto colectivo del resguardo suscrito por la autoridad
												tradicional o cabildo gobernador, donde señale que el
												predio se encuentra en su jurisdicción, si se trata de
												resguardos o asociaciones de cabildos o autoridades
												indígenas tradicionales.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Documento de titularización expedido por INCODER
												tratándose de comunidades Negras, Afrocolombianas, Raizales
												y Palenqueras que deberá acompañarse de un aval suscrito
												por las correspondientes autoridades de las citadas
												comunidades certificada por el ministerio del Interior.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>En el caso de los municipios, en aplicación del
												artículo 48 de la Ley 1551 de 2012, bastará que éstos
												acrediten la posesión del bien y su destinación al uso
												público o la prestación de un servicio público.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Autorización para la intervención expedida por el
												ministerio de cultura y Plan Especial de Manejo y
												Protección tratándose de proyectos de intervención en un
												bien inmueble de interés cultural del ámbito nacional.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Autorización para la intervención expedida por el
												Instituto Colombiano de Antropología e Historia de acuerdo
												con el Plan de Manejo Arqueológico, tratándose de
												proyectos de intervención al patrimonio arqueológico.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Autorización de la entidad territorial que haya
												efectuado la declaratoria de bien de interés cultural
												territorial en el marco de lo previsto en la Ley 397 de
												1197.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Diagnósticos, Estudios, especificaciones técnicas,
												diseños, planos legibles de las obras contempladas en el
												proyecto que lo soporten técnica y financieramente,
												firmados por el profesional competente, con su respectiva
												matricula profesional o acompañados por una certificación
												del representante legal o jefe de planeación de la entidad
												territorial o quien haga sus veces, en la que conste que los
												documentos y planos originales se encuentran debidamente
												firmados y con la matricula profesional de los especialistas
												competentes.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Presupuesto detallado de todas las actividades del
												proyecto de inversión, actualizado al año en que se
												presenta el proyecto y análisis de precios unitarios,
												anexando certificación de la entidad territorial donde
												conste que los precios unitarios corresponden al promedio de
												la región y que son los utilizados para este tipo de obras.
												En el caso en que la Interventoría contractual o las
												labores del apoyo a la supresión a que se refieren el
												articulo 83 de la Ley 1474 de 2011 fueran financiados con
												recursos del SGR, sus costos deberán incluirse como
												componente del proyecto y hacer parte del presupuesto
												presentado, de conformidad con el articulo 38 del Decreto
												414 de 2013.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificado de la autoridad competente que informe que
												las actividades que se pretenden financiar con recursos del
												Sistema General de Regalías no están siendo financiados o
												no han sido financiados con otras fuentes de recursos.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Constancia del tramite de consulta previa que refiere
												la Ley 191 de 1995, expedida por el Ministerio de Relaciones
												Exteriores sobre la pertinencia del proyecto, cuando se
												trate de proyectos de integración y desarrollo fronterizo.
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<p>
									<strong>Autorización para la intervención a
										proyectos localizados en un área protegida publica del
										ámbito nacional o regional, expedida por parte de la
										autoridad competente definida en el Decreto 2372 de 2010,
										así:</strong>
								</p>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para áreas protegidas del Sistema de Parques
												Nacionales Naturales, corresponderá a Parques Nacionales
												Naturales.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para las reservas forestales protectoras nacionales o
												regionales, será la Corporación autónoma regional o de
												desarrollo sostenible.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para los parques naturales regionales, será la
												corporación autónoma regional o de desarrollo sostenible.
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para los distritos naciones de manejo integrado
												nacionales, corresponderá a parques nacionales naturales y
												si son regionales, a la corporación autónoma regional o de
												desarrollo sostenible.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para las áreas de recreación, será la corporación
												autónoma regional o de desarrollo sostenible.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Para los distritos de conservación de suelos,
												corresponde a la corporación autónoma regional o de
												desarrollo sostenible.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificado expedido por la autoridad de la comunidad
												étnica minoritaria debidamente registrada ante el
												ministerio del interior, en el que conste que el proyecto
												presentado está acorde con los planes de etnodesarrollo y
												planes de vida.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Certificado expedido por el Secretario de Planeación
												en donde conste que el plan de vida o plan de etnodesarrollo
												esta en concordancia con el Plan Nacional de Desarrollo y
												con los planes de desarrollo de las entidades territoriales.
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Plano de localización de la zona de influencia del
												proyecto.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Tratándose de proyectos de inversión cofinanciados
												con recursos del Presupuesto General de la Nación, carta de
												intención suscrita por el ordenador del gasto o quien haga
												sus veces en la respectiva entidad del orden nacional, que
												soporte el monto registrado en la Metodología General
												Ajustada. Para el caso de los proyectos de inversión
												sujetos a convocatorias por parte de la nación se deberá
												presentar el documento que soporte la inscripción de la
												entidad territorial a dicha convocatoria.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-8" style="padding-left: 15px">
											<p>Concepto del Comité Consultivo.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
												<option>No aplica</option>
											</select>
										</div>
										<div class="col-lg-2">
											<textarea class="form-control" rows="1"></textarea>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<input class="input-sm form-control" placeholder="#">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<div class="row">
									<div class="col-lg-10"></div>
									<div class="col-lg-2">
										<button type="button" class="btn btn-warning">Verificar
											OCAD</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div id="ConsultaProyectos" class="tab-pane">
					<div class="table-responsive">
						<table id="myTable" class="table table-striped" width="100%">
							<thead>
								<tr>
									<th>Cod BPIM</th>
									<th>Dimensión</th>
									<th>Estado</th>
									<th>Valor Proyecto</th>
									<th>Valor Fuentes</th>
									<th>Fecha de Inscripción</th>
								</tr>
							</thead>

							<tfoot>
								<tr>
									<th>Cod BPIM</th>
									<th>Dimensión</th>
									<th>Estado</th>
									<th>Valor Fuentes</th>
									<th>Valor Proyecto</th>
									<th>Fecha de Inscripción</th>
								</tr>
							</tfoot>

							<tbody>
								<tr>
									<td>2014810010009</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$180.290.622,00</td>
									<td>$180.290.622,00</td>
									<td>17/09/2014</td>
								</tr>
								<tr>
									<td>2014081001081</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$50.000.000,00</td>
									<td>$49.000.000,00</td>
									<td>30/09/2014</td>
								</tr>
								<tr>
									<td>2014081001080</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$61.992.832,00</td>
									<td>$60.000.000,00</td>
									<td>22/09/2014</td>
								</tr>
								<tr>
									<td>2014081001079</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$61.992.832,00</td>
									<td>$60.000.000,00</td>
									<td>22/09/2014</td>
								</tr>
								<tr>
									<td>2014081001078</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$180.290.622,00</td>
									<td>$180.000.000,00</td>
									<td>17/09/2014</td>
								</tr>
								<tr>
									<td>2014081001077</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$133.952.100,00</td>
									<td>$132.952.100,00</td>
									<td>05/09/2014</td>
								</tr>
								<tr>
									<td>2014081001076</td>
									<td>AMBIENTE CONSTRUIDO</td>
									<td>Oficializado</td>
									<td>$407.800.206,00</td>
									<td>$406.800.206,00</td>
									<td>05/09/2014</td>
								</tr>
								<tr>
									<td>2014081001075</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$200.079.361,00</td>
									<td>$200.000.361,00</td>
									<td>05/09/2014</td>
								</tr>
								<tr>
									<td>2014081001074</td>
									<td>POLITICO ADMINISTRATIVO</td>
									<td>Oficializado</td>
									<td>$138.866.819,00</td>
									<td>$137.500.819,00</td>
									<td>05/09/2014</td>
								</tr>
								<tr>
									<td>2014081001073</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$16.999.992,00</td>
									<td>$15.000.992,00</td>
									<td>19/08/2014</td>
								</tr>
								<tr>
									<td>2014081001072</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$16.999.992,00</td>
									<td>$15.000.992,00</td>
									<td>19/08/2014</td>
								</tr>
								<tr>
									<td>2014810010007</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$200.079.361,00</td>
									<td>$200.000.361,00</td>
									<td>05/09/2014</td>
								</tr>
								<tr>
									<td>2014081001070</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$16.999.992,00</td>
									<td>$15.000.992,00</td>
									<td>19/08/2014</td>
								</tr>
								<tr>
									<td>2014081001069</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$1.493.661.598,00</td>
									<td>$1.492.650.000,00</td>
									<td>19/08/2014</td>
								</tr>
								<tr>
									<td>2014081001068</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$60.982.570,00</td>
									<td>$60.000.000,00</td>
									<td>15/08/2014</td>
								</tr>
								<tr>
									<td>2014081001067</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$94.710.927,00</td>
									<td>$93.000.000,00</td>
									<td>14/09/2014</td>
								</tr>
								<tr>
									<td>2014810010008</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$97.530.870,00</td>
									<td>$96.000.000,00</td>
									<td>04/08/2014</td>
								</tr>
								<tr>
									<td>2014810010006</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$2030.132.283,00</td>
									<td>$2030.000.000,00</td>
									<td>04/08/2014</td>
								</tr>
								<tr>
									<td>2014810010005</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$1800.391.000,00</td>
									<td>$1800.000.000,00</td>
									<td>04/08/2014</td>
								</tr>
								<tr>
									<td>2014810010004</td>
									<td>AMBIENTE CONSTRUIDO</td>
									<td>Oficializado</td>
									<td>$1800.391.000,00</td>
									<td>$1800.000.000,00</td>
									<td>04/08/2014</td>
								</tr>
								<tr>
									<td>2014810010003</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$748.090.531,00</td>
									<td>$748.000.000,00</td>
									<td>01/08/2014</td>
								</tr>
								<tr>
									<td>2014081001061</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$79.830.000,00</td>
									<td>$79.000.000,00</td>
									<td>01/08/2014</td>
								</tr>
								<tr>
									<td>2014081001060</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$118.600.000,00</td>
									<td>$118.000.000,00</td>
									<td>01/08/2014</td>
								</tr>
								<tr>
									<td>2014081001059</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$70.000.000,00</td>
									<td>$69.000.000,00</td>
									<td>31/07/2014</td>
								</tr>
								<tr>
									<td>2014081001058</td>
									<td>POLITICO ADMINISTRATIVO</td>
									<td>Oficializado</td>
									<td>$74.030.000,00</td>
									<td>$74.000.000,00</td>
									<td>31/07/2014</td>
								</tr>
								<tr>
									<td>2014081001057</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$70.000.000,00</td>
									<td>$69.000.000,00</td>
									<td>30/07/2014</td>
								</tr>
								<tr>
									<td>2014081001056</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$130.000.000,00</td>
									<td>$129.000.000,00</td>
									<td>30/07/2014</td>
								</tr>
								<tr>
									<td>2014081001055</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$100.000.000,00</td>
									<td>$99.000.000,00</td>
									<td>29/07/2014</td>
								</tr>
								<tr>
									<td>2014081001054</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$30.000.000,00</td>
									<td>$29.000.000,00</td>
									<td>29/07/2014</td>
								</tr>
								<tr>
									<td>2014081001053</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$20.000.000,00</td>
									<td>$20.000.000,00</td>
									<td>24/07/2014</td>
								</tr>
								<tr>
									<td>2014081001052</td>
									<td>AMBIENTE CONSTRUIDO</td>
									<td>Oficializado</td>
									<td>$863.778.081,00</td>
									<td>$862.778.081,00</td>
									<td>24/07/2014</td>
								</tr>
								<tr>
									<td>2014081001051</td>
									<td>AMBIENTE NATURAL</td>
									<td>Oficializado</td>
									<td>$20.000.000,00</td>
									<td>$19.000.000,00</td>
									<td>22/07/2014</td>
								</tr>
								<tr>
									<td>2014081001050</td>
									<td>SOCIOCULTURAL</td>
									<td>Oficializado</td>
									<td>$50.000.000,00</td>
									<td>$49.000.000,00</td>
									<td>17/07/2014</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="tab-pane" id="ViabiProyectos">
					<div class="row">
						<div class="col-lg-10">
							<form>
								<div class="col-lg-6 form-group">
									<label>Dimension:</label> <input class="input-sm form-control"
										placeholder="Dimension"> <label>Sector:</label> <input
										class="input-sm form-control" placeholder="Sector">
								</div>
								<div class="col-lg-6 form-group">
									<label>Programa:</label> <input class="input-sm form-control"
										placeholder="Programa"> <label>Sub programa:</label> <input
										class="input-sm form-control" placeholder="Sub programa">
								</div>
							</form>
						</div>
						<div class="col-lg-2">
							<p class="text-center">Viabilidad N°.</p>
							<div style="border: 1px solid #DCDCDC">
								<h4 class="text-center">011</h4>
							</div>
							<p class="text-center">Marzo 25 de 2015</p>
						</div>
						<div class="col-lg-12">
							<div class="alert alert-warning" role="alert"
								style="padding: 5px">
								<h3 style="margin: 0px">Informacion para viabilizar
									proyectos</h3>
							</div>
						</div>
						<div class="col-lg-12">
							<p>
								<strong>Nombre del proyecto:</strong>
							</p>
							<div class="alert alert-info" role="alert"
								style="padding: 3px 0px 3px 5px">Ampliacion y continuidad
								de los afiliados al regimen subsidiado en salud del Municipio de
								Arauca</div>
						</div>

						<div class="col-lg-12">
							<p>
								<strong>Identificacion, preparacion y evaluacion del
									proyecto</strong>
							</p>
							<div id="demo">
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>El problema esta bien definido.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Estan identificadas las causas y efectos del problema.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>El objeto es coherente con la solucion del problema.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>La alternativa seleccionada soluciona el problema
												definido.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>Los costos estimados son razonables.</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>
												<strong>Es funcion de la entidad responsable del
													proyecto solucionar este problema.</strong>
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>
												<strong>La ficha EBI esta correctamente
													diligenciada.</strong>
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>
												<strong>El proyecto es consistente con los planes,
													politicas y programas de desarrollo institucional.</strong>
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
								<div class="sortitem" style="margin-bottom: 10px">
									<span class="sorthandle"> </span>
									<div class="row" style="padding-left: 8px">
										<div class="col-lg-10" style="padding-left: 15px">
											<p>
												<strong>El proyecto es viable.</strong>
											</p>
										</div>
										<div class="col-lg-1" style="padding-left: 0px">
											<select class="input-sm input-block" style="width: 100%">
												<option>Si</option>
												<option>No</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-11">
							<h4>
								<strong>Asignacion presupuestal</strong>
							</h4>
							<table class="table table-bordered table-condensed">
								<thead>
									<tr>
										<th class="col-lg-1 text-center">Rubro</th>
										<th class="col-lg-1 text-center">Valor</th>
										<th class="col-lg-2 text-center">Valor a viabilizar</th>
										<th class="col-lg-5 text-center">Descripcion del rubro</th>
										<th class="col-lg-3 text-center">Fuentes de financiacion</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>23100101020101</td>
										<td>$1.379.336.751</td>
										<td><input class="input-sm form-control"
											value="$1.279.336.751"></td>
										<td>Construccion de alcantarillado pluvial y andenes via
											entre la pisina FEMAR y el Coliseo Deportivo, barrio La
											granja, municipio de Arauca</td>
										<td>Inversion con recursos de regalias</td>
									</tr>
									<tr>
										<td>23100101020101</td>
										<td>$94.215.629</td>
										<td><input class="input-sm form-control"
											value="$93.215.629"></td>
										<td>Interventoria tecnica y administrativa</td>
										<td>Inversion con recursos de regalias</td>
									</tr>
									<tr>
										<td>Valor total</td>
										<td>$1.473.552.380</td>
										<td><input class="input-sm form-control" value="$"></td>
										<td>A + B</td>
										<td></td>
									</tr>
								</tbody>
								<thead>
									<tr>
										<th class="text-center">Valor total del proyecto</th>
										<th></th>
										<th class="text-center"><input
											class="input-sm form-control" value="$1.473.552.380"></th>
										<th class="text-center">MIL CUATROCIENTOS SETENTA Y TRES
											MILLONES QUINIENTOS CINCUENTA Y DOS MIL TRESCIENTOS OCHENTA
											PESOS M/CTE</th>
										<th></th>
									</tr>
								</thead>
							</table>
						</div>
						<div class="col-lg-11" style="border: 1px solid #DCDCDC">
							<div class="col-lg-3">
								<h4>Aspectos a conceptuar</h4>
							</div>
							<div class="col-lg-2">
								<h4>Cumple?</h4>
							</div>
							<div class="col-lg-4">
								<h4 class="text-center">Analisis del municipio, distrito o
									territorio indigena</h4>
							</div>
							<div class="col-lg-2">
								<h4>Cumple?</h4>
							</div>
						</div>
						<div class="col-lg-11" style="margin-top: 10px">
							<div class="col-lg-3">
								<p>
									<strong>A. Tecnicos</strong>
								</p>
							</div>
							<div class="col-lg-2">
								<select class="input-sm form-control">
									<option>Si</option>
									<option>No</option>
								</select>
							</div>
							<div class="col-lg-4">
								<p>
									<strong>D. Institucionales-comunitario</strong>
								</p>
							</div>
							<div class="col-lg-2">
								<select class="input-sm form-control">
									<option>Si</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="col-lg-11" style="margin-top: 10px">
							<div class="col-lg-3">
								<p>
									<strong>B. Economicos-Financieros</strong>
								</p>
							</div>
							<div class="col-lg-2">
								<select class="input-sm form-control">
									<option>Si</option>
									<option>No</option>
								</select>
							</div>
							<div class="col-lg-4">
								<p>
									<strong>E. Genero y equidad</strong>
								</p>
							</div>
							<div class="col-lg-2">
								<select class="input-sm form-control">
									<option>Si</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<div class="col-lg-11"
							style="margin-top: 10px; margin-bottom: 10px">
							<div class="col-lg-3">
								<p>
									<strong>C. Ambientales</strong>
								</p>
							</div>
							<div class="col-lg-2">
								<select class="input-sm form-control">
									<option>Si</option>
									<option>No</option>
								</select>
							</div>
						</div>
						<legend style="width: 95%"></legend>
						<div class="col-lg-6">
							<form class="form-inline">
								<div class="form-group">
									<label>Unidad ejecutora</label> <select
										class="input-sm form-control">
										<option>Si</option>
										<option>No</option>
									</select>
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
	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>

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
	<script src="<c:url value="/resources/js/jquery.js"/>"></script>
	<script src="<c:url value="/resources/js/jquery-1.11.2.min.js"/>"></script>
	<script type="text/javascript"
		src="<c:url value="/resources/js/jquery.dataTables.js"/>"></script>
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
	<script type="text/javascript" src="jquery.vSort.js"></script>
	<script type="text/javascript" src="jquery.vSort.min.js"></script>
</body>

</html>