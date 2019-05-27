<%-- 
    Document   : listarSolicitudes
    Created on : 19/03/2015, 11:28:35 AM
    Author     : VICTOR
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%SimpleDateFormat formateador2 = new SimpleDateFormat("dd/MM/yyyy");%>
<%SimpleDateFormat formateador3 = new SimpleDateFormat("HH:mm");%>
<%@page import="pe.gob.munihuamanga.sigstel.be.SolicitudPendiente"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Solicitud"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Pendientes</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
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
                        <div class="clearfix"></div>

                        <div class="row">

                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Solicitudes pendientes</h2>
                                        <ul class="nav navbar-right panel_toolbox">
                                            <li>
                                                <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                            </li>
                                            <li><a class="close-link"><i class="fa fa-close"></i></a>
                                            </li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="x_content">
                                        <table id="example" class="table table-striped responsive-utilities jambo_table">
                                            <thead>
                                                <tr class="headings">
                                                    <th>
                                                        <input type="checkbox" class="tableflat">
                                                    </th>
                                                    <th>Id</th>
                                                    <th>Tipo</th>
                                                    <th>Detalle</th>
                                                    <th>Dependencia</th>
                                                    <th>Fecha</th>
                                                    <th>Ubicacion</th>
                                                    <th>Estado</th>
                                                    <th class=" no-link last"><span class="nobr">Action</span>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody id="cuerpo">
                                                <%List<SolicitudPendiente> listaP = (List<SolicitudPendiente>) request.getSession().getAttribute("listaPendientes");%>
                                                <%for (int i = 0; i < listaP.size(); i++) {
                                                        SolicitudPendiente sl = listaP.get(i);
                                                %>
                                                <tr class="even pointer" onclick="Mostrar(<%=sl.getId()%>, '<%=sl.getTipoSolicitud()%>', '<%=sl.getDetalle()%>', '<%=sl.getDependencia()%>', '<%=formateador2.format(sl.getFecha())%> a las <%=formateador3.format(sl.getFecha())%> horas', '<%=sl.getCargo()%>')">
                                                    <th><input type="checkbox" class="tableflat"></th>
                                                    <td><%=sl.getId()%></td>
                                                    <td><%=sl.getTipoSolicitud()%></td>
                                                    <td><%=sl.getDetalle()%></td>
                                                    <td><%=sl.getSigla()%> (<%=sl.getCargo()%>)</td>
                                                    <td><%=formateador2.format(sl.getFecha())%></td>
                                                    <td><%=sl.getUbicacion()%></td>
                                                    <td><%=sl.getEstadoSolicitud()%></td>
                                                    <td>
                                                        <a class="btn btn-warning btn-xs">
                                                            <i class="fa fa-pencil"></i>Atender
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%@include file="shared/footer.jsp" %>
                    </div>
                </div>

            </div>
        </div>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="color: #449ACA; text-align: center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Detalle de solicitud</h4>
                        <h6 id="idSolicitud" class="disabled"></h6>
                    </div>
                    <div id="bodyModal" class="modal-body">
                        <b style="font-size: 16px">Fecha: </b><text id="fecha"></text><br/>
                        <b style="font-size: 16px">Solicitante:</b>
                        <p id="sigla"></p>
                        <b style="font-size: 16px">Tipo de problema:</b>
                        <p id="tipo"></p>
                        <b style="font-size: 16px">Detalles:</b>
                        <p id="detalle"></p>
                        <b style="font-size: 16px">Opinion Tecnica:</b>
                        <textarea id="opinion" class="form-control" rows="3"></textarea><br/>
                        <select id="atencion" class="form-control">
                            <option value="2">Atendido</option>
                            <option value="3">Rechazado</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        <button onclick="Inspeccion()" type="button" class="btn btn-primary">Aceptar</button>
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
        <script src="<%=request.getContextPath()%>/js/datatables/tools/js/dataTables.tableTools.js"></script>
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

        </script>
        <script type="text/javascript">
            function Mostrar(id, tipo, detalle, sigla, fecha, cargo) {
                var idRol = <%=request.getSession().getAttribute("administradorIdRol")%>;
                if (idRol === 2) {
                    $("#idSolicitud").html(id);
                    $("#fecha").html(fecha);
                    $("#sigla").html(sigla + " (" + cargo + ")");
                    $("#tipo").html(tipo);
                    $("#detalle").html(detalle);

                    $('#myModal').modal('show');
                }
                else {
                    var mensaje = "Desconocido...";
                    if (idRol === 1) {
                        mensaje = "Administrador";
                    }
                    alert("Usted no puede atender solicitudes (Cargo: " + mensaje + ")");
                }

            }
            function Inspeccion() {
                var idSolicitud = $("#idSolicitud").text();
                var opinion = $("#opinion").val();
                var estado = $("#atencion").val();
                $.ajax({
                    type: 'POST',
                    url: 'registrarInspeccion',
                    data: {
                        idSolicitud: idSolicitud,
                        opinion: opinion,
                        idEstado: estado
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data === 1) {
                            $('#myModal').hide();
                            alert("Inspeccion realizada...");
                            window.location.href = "listarPendientes";
                            //location.reload();
                        }
                        else {
                            alert("Error al actualizar la solicitud");
                        }
                    },
                    error: function () {
                        alert("Error al actualizar la solicitud");
                    }
                });
            }
        </script>
    </body>
</html>
