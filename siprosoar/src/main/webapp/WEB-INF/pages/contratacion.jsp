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

<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<c:url value="/resources/css/bootstrap-theme.min.css"/>" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/bootstrap-theme.css" />" />
<title>Contratacion</title>

<!-- Bootstrap Core CSS -->
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css">
</style>
<script type="text/javascript"
	src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/simple-sidebar.css" />"
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
					src="<c:url value="/resources/img/Logo_SS.png" />"
					style="height: 30px; width: 30px; margin-top: 10px; margin-left: -10px"></li>
			</div>
			<div class="collapse navbar-collapse" id="barra2">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="dropdown-toggle">Modulos de sistema<span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="programassociales">Programas sociales</a></li>
							<li><a href="#">Contratacion</a></li>
							<li><a href="presupuesto">Presupuesto</a></li>
							<li><a href="bancoproyectos">Banco de proyectos</a></li>
							<li><a href="planeacion">Planeacion </a></li>
							<li><a href="localizacionpredial">Localizacion predial</a></li>
						</ul></li>
					<li><img
						src="<c:url value="/resources/img/Logo_Contratacion.png" />"
						style="height: 30px; width: 30px; margin: 10px 5px 0px 10px">
					</li>
					<li><a class="navbar-brand"> Contratacion</a></li>
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
							<img src="<c:url value="/resources/img/Logo_Contratacion.png" />"
								style="height: 40px; width: 50px; margin: -5px 0px 0px -15px">
							Contratos
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
									src="<c:url value ="/resources/img/Foto_Perfil_Fonvida.png"/>"
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
								class="glyphicon glyphicon-plus-sign"></span> Contratos <span
								class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#" data-toggle="tab">Nuevo contrato</a></li>
								<li><a href="#FormularioUsuario2" data-toggle="tab">Consultar
										contrato</a></li>
								<li><a href="#" data-toggle="tab">Listar contrato</a></li>
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
						<c:if test="${!empty contratoList}">
							<table id="myTable" class="table table-striped" width="100%">
								<thead>
									<tr>
										<th>No. Proceso</th>
										<th>Vigencia</th>
										<th>Unidad de ejecutora</th>
										<th>Modalidad</th>
										<th>Cuantia</th>
										<th>Estado</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
										<th>No. Proceso</th>
										<th>Vigencia</th>
										<th>Unidad de ejecutora</th>
										<th>Modalidad</th>
										<th>Cuantia</th>
										<th>Estado</th>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${contratoList}" var="contrato">
										<tr>
											<td><c:out value="${contrato.numProceso}" /></td>
											<td><c:out value="${contrato.vigencia}" /></td>
											<td><c:out value="${contrato.unidadEjecutora.nombreUnidadEjecutora}" /></td>
											<td><c:out value="${contrato.modalidad.nombreModalidad}" /></td>
											<td><c:out value="${contrato.cuantia}" /></td>
											<td><c:out value="${contrato.estado.nombreEstado}" /></td>


										</tr>
									</c:forEach>

								</tbody>
							</table>
						</c:if>
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
