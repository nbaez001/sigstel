<%-- 
    Document   : home
    Created on : 17/03/2015, 10:48:30 PM
    Author     : NERIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/admin/site.css" rel="stylesheet">
        <!-- Custom styling plus plugins -->
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/icheck/flat/green.css" rel="stylesheet">

        <link href="<%=request.getContextPath()%>/css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="shared/navbarLeft.jsp" %>
                <%@include file="shared/navbarTop.jsp" %>
                <div class="right_col" role="main">
                    <div class="">

                        <div class="page-title">
                            <div class="title_left">
                                <h3>Administrador <small>Herramientas</small></h3>
                            </div>
                            <div class="title_right">
                                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search for...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">Go!</button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-xs-12 col-lg-12">
                                <div class="alert alert-info alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <i class="fa fa-info-circle"></i>  <strong>Prueba las herramientas</strong>
                                </div>
                            </div>
                        </div>
                        <!-- /.row -->

                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="listarPendientes">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-comments fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge" id="scopeCantidad">${(sessionScope.listaPendientes).size()}</div>
                                                    <div>Solicitudes pendientes!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Ver detalles</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="listarAtendidas">
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-comment fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge">${(sessionScope.listaAtendidas).size()}</div>
                                                    <div>Solicitudes atendidas!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Ver detalles</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <!--                        
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="GenerarReporteEstados">
                                    <div class="panel panel-yellow">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-tasks fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge"><i class="fa fa-database"></i></div>
                                                    <div>Reporte (Estado)!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Ver detalles</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="GenerarReporteDependencia">
                                    <div class="panel panel-red">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-tasks fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge"><i class="fa fa-database"></i></div>
                                                    <div>Reporte (Dependencia)!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Ver detalles</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="CrearAdministrador">
                                    <div class="panel panel-sky">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-user fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge"><i class="fa fa-user"></i></div>
                                                    <div>Administradores!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Crear nuevo</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
                                <a href="CrearUsuario">
                                    <div class="panel panel-purple">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <i class="fa fa-users fa-5x"></i>
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge"><i class="fa fa-users"></i></div>
                                                    <div>Usuarios!</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-footer">
                                            <span class="pull-left">Crear nuevo</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            -->
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Registro Usuarios <small>Activos</small></h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li class="dropdown">
                                                <a class="" data-toggle="modal" data-target="#myModal">
                                                    <i onclick="LimpiarControl()" class="fa fa-plus-circle fa-2x" style="color: #428bca" title="Nuevo Usuario"></i>
                                                </a>
                                            </li>
                                            <li><a class="collapse-link"><i class="fa fa-chevron-up" style="color: #428bca"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <table id="example" class="table table-striped responsive-utilities jambo_table">
                                            <thead>
                                                <tr class="headings">
                                                    <th>
                                                        Id
                                                    </th>
                                                    <th>Nombre</th>
                                                    <th>Apellido</th>
                                                    <th>Dni</th>
                                                    <th>Email</th>
                                                    <th>Usuario</th>
                                                    <th>Contraseña</th>
                                                    <th>Dependencia</th>
                                                </tr>
                                            </thead>

                                            <tbody id="cuerpo">
                                                <c:forEach var="item" items="${sessionScope.listaUsuarios}">
                                                    <tr class="even pointer">
                                                        <td>${item.id}</td>
                                                        <td>${item.nombre}</td>
                                                        <td>${item.apellido}</td>
                                                        <td>${item.dni}</td>
                                                        <td>${item.email}</td>
                                                        <td>${item.usuario}</td>
                                                        <td>${item.contrasena}</td>
                                                        <td title="${item.dependencia}">
                                                            ${item.sigla} 
                                                            <a class="btn btn-warning btn-xs" onclick="Mostrar(${item.id})" data-toggle="modal" data-target="#myModal">
                                                                <i class="fa fa-pencil"></i>Edit
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                    <%@include file="shared/footer.jsp" %>
                </div>
            </div>
        </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="color: #449ACA; text-align: center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Detalle de Usuario</h4>
                        <h6 id="idUsuario" class="disabled"></h6>
                    </div>
                    <div id="bodyModal" class="modal-body">
                        <div class="row">
                            <div class="col-md-12">
                                <fieldset>
                                    <legend style="font-family: Cambria"><h4>DATOS PERSONALES</h4></legend>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Nombre</label>
                                        <input id="nombre" class="form-control" placeholder="Nombre" type="text" onkeyup="validarRequired('nombre')" autofocus>
                                        <span id="spannombre" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Apellido Paterno</label>
                                        <input id="apellidoPat" class="form-control" placeholder="Apellido Paterno" type="text" onkeyup="validarRequired('apellidoPat')">
                                        <span id="spanapellidoPat" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6  ">
                                        <label>Apellido Materno</label>
                                        <input id="apellidoMat" class="form-control" placeholder="Apellido Materno" type="text" onkeyup="validarRequired('apellidoMat')">
                                        <span id="spanapellidoMat" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6 ">
                                        <label>DNI</label>
                                        <input id="dni" class="form-control" placeholder="Documento de identidad " type="text" onkeyup="validarDni('dni', 8)" style="float: left"><span id="spandnivalidacion"></span><br/>
                                        <span id="spandni" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6  ">
                                        <label>Telefono</label>
                                        <input id="telefono" class="form-control" placeholder="Telefono" type="text" onkeyup="validarNumeros('telefono', 9)">
                                        <span id="spantelefono" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6  ">
                                        <label>E-mail</label>
                                        <input id="email" class="form-control" placeholder="E-mail" type="text" onkeyup="validarEmail('email')">
                                        <span id="spanemail" style="color: red"></span>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend style="font-family: Cambria"><h4>DATOS DE USUARIO</h4></legend>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Dependencia</label>
                                        <select id="idDependencia" class="form-control">
                                            <c:forEach var="dependencia" items="${sessionScope.listaDependencia}">
                                                <option value="${dependencia.getId()}">${dependencia.getDenominacion()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Cargo</label>
                                        <input id="cargo" class="form-control" placeholder="Cargo usuario" type="text" onkeyup="validarRequired('cargo')">
                                        <span id="spancargo" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Rol</label>
                                        <select id="idRol" class="form-control">
                                            <c:forEach var="rol" items="${sessionScope.listaRol}">
                                                <option value="${rol.getId()}">${rol.getDenominacion()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <label>Estado</label>
                                        <select id="estado" class="form-control">
                                            <option value="1">Activo</option>
                                            <option value="0">Desactivo</option>
                                        </select>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend style="font-family: Cambria"><h4>DATOS DE LA CUENTA</h4></legend>
                                    <div class="col-sm-4 col-md-4   ">
                                        <label>Usuario</label>
                                        <input id="usuario" class="form-control" placeholder="Usuario" type="text" onkeyup="validarIdUsuario('usuario')" style="float: left"><span id="spanusuarioid"></span><br/>
                                        <span id="spanusuario" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-4 col-md-4   ">
                                        <label>Contraseña</label>
                                        <input id="contrasena" class="form-control" placeholder="Contraseña" type="password" onkeyup="validarRequired('contrasena')">
                                        <span id="spancontrasena" style="color: red"></span>
                                    </div>
                                    <div class="col-sm-4 col-md-4   ">
                                        <label>Repetir contraseña</label>
                                        <input class="form-control" id="confirmar" placeholder="Repetir contraseña" type="password" onkeyup="validarConfirmacion('confirmar', 'contrasena')"/>
                                        <span id="spanconfirmar" style="color: red"></span>
                                    </div>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button onclick="LimpiarControl()" type="button" class="btn btn-warning">Limpiar</button>
                        <button onclick="Registrar()" type="button" class="btn btn-primary">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/js/jquery.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

        <!-- chart js -->
        <script src="<%=request.getContextPath()%>/js/chartjs/chart.min.js"></script>
        <!-- bootstrap progress js -->
        <script src="<%=request.getContextPath()%>/js/progressbar/bootstrap-progressbar.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/nicescroll/jquery.nicescroll.min.js"></script>
        <!-- icheck -->
        <script src="<%=request.getContextPath()%>/js/icheck/icheck.min.js"></script>

        <script src="<%=request.getContextPath()%>/js/custom.js"></script>

        <!-- Datatables -->
        <script src="<%=request.getContextPath()%>/js/datatables/js/jquery.dataTables.js"></script>
        <script>
                            $(document).ready(function () {
                                $('input.tableflat').iCheck({
                                    checkboxClass: 'icheckbox_flat-green',
                                    radioClass: 'iradio_flat-green'
                                });
                            });

                            var asInitVals = new Array();
                            $(document).ready(function () {
                                var oTable = $('#example').dataTable({
                                    "oLanguage": {
                                        "sSearch": "Search all columns:"
                                    },
                                    "aoColumnDefs": [
                                        {
                                            'bSortable': false,
                                            'aTargets': [0]
                                        } //disables sorting for column one
                                    ],
                                    'iDisplayLength': 12,
                                    "sPaginationType": "full_numbers",
                                    "dom": 'T<"clear">lfrtip',
                                    "tableTools": {
                                        "sSwfPath": ""
                                    }
                                });
                                $("tfoot input").keyup(function () {
                                    /* Filter on the column based on the index of this element's parent <th> */
                                    oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
                                });
                                $("tfoot input").each(function (i) {
                                    asInitVals[i] = this.value;
                                });
                                $("tfoot input").focus(function () {
                                    if (this.className == "search_init") {
                                        this.className = "";
                                        this.value = "";
                                    }
                                });
                                $("tfoot input").blur(function (i) {
                                    if (this.value == "") {
                                        this.className = "search_init";
                                        this.value = asInitVals[$("tfoot input").index(this)];
                                    }
                                });
                            });

                            function Mostrar(id) {
                                $.ajax({
                                    type: 'GET',
                                    url: 'mantenerUsuario',
                                    data: {id: id},
                                    dataType: "json",
                                    success: function (data) {
                                        if (data !== 0) {
                                            $("#idUsuario").text(data.id);
                                            $("#usuario").val(data.usuario);
                                            $("#contrasena").val(data.contrasena);
                                            $("#confirmar").val(data.contrasena);
                                            $("#cargo").val(data.cargo);
                                            $("#estado").val(data.estado);
                                            $("#idRol").val(data.idRol);
                                            $("#idDependencia").val(data.idDependencia);
                                            $("#nombre").val(data.nombre);
                                            $("#apellidoPat").val(data.apellidoPat);
                                            $("#apellidoMat").val(data.apellidoMat);
                                            $("#dni").val(data.dni);
                                            $("#telefono").val(data.telefono);
                                            $("#email").val(data.email);

                                            //BLOQUEAR DNI
                                            $("#dni").prop('disabled', true);
                                            $("#usuario").prop('disabled', true);
                                        }
                                        else {
                                            alert("No hay datos");
                                        }
                                    },
                                    error: function () {
                                        alert("Error al cargar datos");
                                    }
                                });
                            }
        </script>
        <script>
            function validarDni(nombre, valor) {
                var item = document.getElementById(nombre).value;

                var reg1 = /^\d{/;
                var reg2 = /}$/;
                var patron = new RegExp(reg1.source + valor + reg2.source);
                if (item === "") {
                    $("#span" + nombre).html("Campo obligatorio");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    if (!(patron.test(item))) {
                        $("#span" + nombre).html("Campo debe tener " + valor + " digitos numericos");
                        $("#" + nombre).css("border-color", "red");
                        return 1;
                    }
                    else {
                        $("#span" + nombre).html("");
                        $("#" + nombre).css("border-color", "#CCCCCC");
                        $.ajax({
                            type: 'POST',
                            url: 'validarDni',
                            data: {dni: $("#dni").val(), idRol: $("#idRol").val()},
                            dataType: "json",
                            success: function (data) {
                                if (data === 2) {
                                    $("#span" + nombre + "validacion").html("<i id='fadni' title='Duplicado' class='fa fa-close' style='color: red'></i>");
                                }
                                else {
                                    if (data !== 0) {
                                        $("#span" + nombre + "validacion").html("<i id='fadni' title='Correcto' class='fa fa-check' style='color: chocolate'></i>");
                                        $("#nombre").val(data.nombre);
                                        $("#apellidoPat").val(data.apellidoPat);
                                        $("#apellidoMat").val(data.apellidoMat);
                                        $("#dni").val(data.dni);
                                        $("#telefono").val(data.telefono);
                                        $("#email").val(data.email);
                                    }
                                    else {
                                        $("#span" + nombre + "validacion").html("<i id='fadni' title='Correcto' class='fa fa-check' style='color: green'></i>");
                                    }
                                }
                            },
                            error: function (errorData) {
                                alert("Error al validar dni");
                            }
                        });
                        return 0;
                    }
                }
            }
            function validarIdUsuario(nombre) {
                var item = document.getElementById(nombre).value;
                if (item === "") {
                    $("#span" + nombre).html("Campo obligatorio");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    $("#span" + nombre).html("");
                    $("#" + nombre).css("border-color", "#CCCCCC");

                    $.ajax({
                        type: 'POST',
                        url: 'validarIdUsuario',
                        data: {usuario: $("#usuario").val()},
                        dataType: "json",
                        success: function (data) {
                            if (data === 1) {
                                $("#span" + nombre + "id").html("<i id='fauser' title='Duplicado' class='fa fa-close' style='color: red'></i>");
                            }
                            else {
                                $("#span" + nombre + "id").html("<i id='fauser' title='Correcto' class='fa fa-check' style='color: green'></i>");
                            }
                        },
                        error: function (errorData) {
                            alert("Error al validar id");
                        }
                    });
                    return 0;
                }
            }
            function validarRequired(nombre) {
                var item = document.getElementById(nombre).value;
                if (item === "") {
                    $("#span" + nombre).html("Campo obligatorio");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    $("#span" + nombre).html("");
                    $("#" + nombre).css("border-color", "#CCCCCC");
                    return 0;
                }
            }
            function validarNumeros(nombre, valor) {
                var item = document.getElementById(nombre).value;

                var reg1 = /^\d{/;
                var reg2 = /}$/;
                var patron = new RegExp(reg1.source + valor + reg2.source);
                if (item === "") {
                    $("#span" + nombre).html("Campo obligatorio");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    if (!(patron.test(item))) {
                        $("#span" + nombre).html("Campo debe tener " + valor + " digitos numericos");
                        $("#" + nombre).css("border-color", "red");
                        return 1;
                    }
                    else {
                        $("#span" + nombre).html("");
                        $("#" + nombre).css("border-color", "#CCCCCC");
                        return 0;
                    }
                }
            }
            function validarEmail(nombre) {
                var item = document.getElementById(nombre).value;
                var patron = /^[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+$/;
                if (item === "") {
                    $("#span" + nombre).html("Campo obligatorio");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    if (!(patron.test(item))) {
                        $("#span" + nombre).html("Formato debe ser: nombre@ejemplo.com ");
                        $("#" + nombre).css("border-color", "red");
                        return 1;
                    }
                    else {
                        $("#span" + nombre).html("");
                        $("#" + nombre).css("border-color", "#CCCCCC");
                        return 0;
                    }
                }
            }
            function validarConfirmacion(nombre, confirmacion) {
                var item = document.getElementById(nombre).value;
                var patron = document.getElementById(confirmacion).value;
                if (item !== patron) {
                    $("#span" + nombre).html("Las contraseñas no concuerdan");
                    $("#" + nombre).css("border-color", "red");
                    return 1;
                }
                else {
                    $("#span" + nombre).html("");
                    $("#" + nombre).css("border-color", "#CCCCCC");
                    return 0;
                }
            }
            function Registrar() {
                var contador = 0;
                var idUser = $("#idUsuario").text();

                if (idUser === "") {
                    contador += validarRequired('nombre');
                    contador += validarRequired('apellidoPat');
                    contador += validarRequired('apellidoMat');
                    contador += validarDni('dni', 8);
                    contador += validarNumeros('telefono', 9);
                    contador += validarEmail('email');
                    contador += validarRequired('cargo');
                    contador += validarIdUsuario('usuario');
                    contador += validarRequired('contrasena');
                    contador += validarConfirmacion('confirmar', 'contrasena');

                    //VALIDAR FINAL DNI
                    var fadni = document.getElementById('fadni');
                    if (fadni.title.match('Correcto')) {
                        contador += 0;
                    } else {
                        contador += 1;
                    }
                    //VALIDAR FINAL USER
                    var fauser = document.getElementById('fauser');
                    if (fauser.title.match('Correcto')) {
                        contador += 0;
                    } else {
                        contador += 1;
                    }

                    if (contador !== 0) {
                    }
                    else {
                        $.ajax({
                            type: 'POST',
                            url: 'crearUsuario',
                            data: {
                                nombre: $("#nombre").val(),
                                apellidoPat: $("#apellidoPat").val(),
                                apellidoMat: $("#apellidoMat").val(),
                                dni: $("#dni").val(),
                                telefono: $("#telefono").val(),
                                email: $("#email").val(),
                                cargo: $("#cargo").val(),
                                idDependencia: $("#idDependencia").val(),
                                idRol: $("#idRol").val(),
                                estado: $("#estado").val(),
                                usuario: $("#usuario").val(),
                                contrasena: $("#contrasena").val(),
                                idUsuario: $("#idUsuario").text()
                            },
                            dataType: "json",
                            success: function (data) {
                                if (data === 0) {
                                    alert("Error al registrar");
                                }
                                else {
                                    LimpiarControl();
                                    $('#myModal').hide();
                                    alert("Usuario creado correctamente...");
                                    window.location.href = "homeAdmin";
                                }
                            },
                            error: function (errorData) {
                                alert("Error al grabar datos");
                            }
                        });
                    }
                }
                else {
                    contador += validarRequired('nombre');
                    contador += validarRequired('apellidoPat');
                    contador += validarRequired('apellidoMat');
                    contador += validarNumeros('telefono', 9);
                    contador += validarEmail('email');
                    contador += validarRequired('cargo');
                    contador += validarRequired('contrasena');
                    contador += validarConfirmacion('confirmar', 'contrasena');
                    if (contador !== 0) {

                    }
                    else {
                        $.ajax({
                            type: 'POST',
                            url: 'mantenerUsuario',
                            data: {
                                nombre: $("#nombre").val(),
                                apellidoPat: $("#apellidoPat").val(),
                                apellidoMat: $("#apellidoMat").val(),
                                dni: $("#dni").val(),
                                telefono: $("#telefono").val(),
                                email: $("#email").val(),
                                cargo: $("#cargo").val(),
                                idDependencia: $("#idDependencia").val(),
                                idRol: $("#idRol").val(),
                                estado: $("#estado").val(),
                                usuario: $("#usuario").val(),
                                contrasena: $("#contrasena").val(),
                                idUsuario: $("#idUsuario").text()
                            },
                            dataType: "json",
                            success: function (data) {
                                if (data === 0) {
                                    alert("Error al registrar");
                                }
                                else {
                                    LimpiarControl();
                                    $('#myModal').hide();
                                    alert("Usuario modificado correctamente...");
                                    window.location.href = "homeAdmin";
                                }
                            },
                            error: function (errorData) {
                                alert("Error al grabar datos");
                            }
                        });
                    }
                }
            }
            function LimpiarControl() {
                $("#nombre").val("");
                $("#apellidoPat").val("");
                $("#apellidoMat").val("");
                $("#dni").val("");
                $("#telefono").val("");
                $("#email").val("");
                $("#cargo").val("");
                $("#usuario").val("");
                $("#contrasena").val("");
                $("#confirmar").val("");
                $("#idUsuario").text("");
                //LIMPIAR VALIDACIONES
                $("#nombre").css("border-color", "#CCCCCC");
                $("#spannombre").html("");
                $("#apellidoPat").css("border-color", "#CCCCCC");
                $("#spanapellidoPat").html("");
                $("#apellidoMat").css("border-color", "#CCCCCC");
                $("#spanapellidoMat").html("");
                $("#dni").css("border-color", "#CCCCCC");
                $("#spandni").html("");
                $("#telefono").css("border-color", "#CCCCCC");
                $("#spantelefono").html("");
                $("#email").css("border-color", "#CCCCCC");
                $("#spanemail").html("");
                $("#cargo").css("border-color", "#CCCCCC");
                $("#spancargo").html("");
                $("#usuario").css("border-color", "#CCCCCC");
                $("#spanusuario").html("");
                $("#contrasena").css("border-color", "#CCCCCC");
                $("#spancontrasena").html("");
                $("#confirmar").css("border-color", "#CCCCCC");
                $("#spanconfirmar").html("");
                //ELIMINAR CHECK
                $("#spanusuarioid").html("");
                $("#spandnivalidacion").html("");
                //LIMPIAR DISABLED
                $("#dni").prop('disabled', false);
                $("#usuario").prop('disabled', false);
            }
        </script>
    </body>
</html>
