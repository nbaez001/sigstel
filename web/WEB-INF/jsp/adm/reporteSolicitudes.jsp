<%-- 
    Document   : reportePorDependencia
    Created on : 24/03/2015, 03:16:49 PM
    Author     : NERIO
--%>

<%@page import="pe.gob.munihuamanga.sigstel.be.SolicitudCompleta"%>
<%SimpleDateFormat formateadorFecha = new SimpleDateFormat("dd/MM/yyyy");%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte solicitudes</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
        <!-- Custom styling plus plugins -->
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/icheck/flat/green.css" rel="stylesheet">

        <link href="<%=request.getContextPath()%>/css/datatables/tools/css/dataTables.tableTools.css" rel="stylesheet">
        <!--Jquery UI-->
        <link href="<%=request.getContextPath()%>/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <!--STYLOS DE ERROR-->
        <link href="<%=request.getContextPath()%>/css/cmxform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="shared/navbarLeft.jsp" %>
                <%@include file="shared/navbarTop.jsp" %>
                <div class="right_col" role="main">
                    <div class="">
                        <div class="row">
                            <div class="col-md-12" style="text-align: left">
                                <div class="tile">
                                    <h3 style="font-family: Cambria"><small>ADMINISTRACION DE SOLICITUDES</small></h3>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <form action="reporteSolicitudes" method="post" id="formularioSolicitudes">
                                <div class="col-xs-12 col-sm-3 col-md-3   ">
                                    <label>Desde</label>
                                    <input class="form-control" type="text" name="fechaInicio" id="datepicker1"/>
                                </div>
                                <div class=" col-xs-12 col-sm-3 col-md-3   ">
                                    <label>Hasta</label>
                                    <input class="form-control" type="text" name="fechaFin" id="datepicker2"/>
                                </div>
                                <div class=" col-xs-12 col-sm-3 col-md-3   ">
                                    <label>Dependencia</label>
                                    <select name="idDependencia" class="form-control">
                                        <option value="0">Todos</option>
                                        <c:forEach var="item" items="${sessionScope.listaDependencia}">
                                            <option value="${item.getId()}">${item.getDenominacion()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="col-xs-12 col-sm-3 col-md-3   ">
                                    <br />
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-danger" value="Generar reporte" />
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="clearfix"></div>

                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="x_panel">
                                    <div class="x_title">
                                        <h2>Detalle Solicitud</h2>
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
                                                    <th>N°</th>
                                                    <th>Tipo</th>
                                                    <th>Detalle</th>
                                                    <th>OpinionTecnica</th>
                                                    <th>Fecha</th>
                                                    <th>Estado</th>
                                                    <th>Dependencia</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cuerpo">
                                                <%if (request.getSession().getAttribute("reporteInspeccion") != null) {
                                                        List<SolicitudCompleta> listaCompleta = (List<SolicitudCompleta>) request.getSession().getAttribute("reporteInspeccion");
                                                        for (int i = 0; i < listaCompleta.size(); i++) {
                                                            SolicitudCompleta sl = listaCompleta.get(i);
                                                %>
                                                <tr>
                                                    <td><%=(i + 1)%></td>
                                                    <td><%=sl.getTipoSolicitud()%></td>
                                                    <%
                                                        if (sl.getDetalle().length() >= 50) {
                                                    %>
                                                    <td><%=sl.getDetalle().substring(0, 50)%>...</td>
                                                    <%
                                                    } else {
                                                    %>
                                                    <td><%=sl.getDetalle()%></td>
                                                    <%
                                                        }
                                                    %>
                                                    <td><%=sl.getOpinionTecnica()%></td>
                                                    <td><%=formateadorFecha.format(sl.getFecha())%></td>
                                                    <td><%=sl.getEstadoSolicitud()%></td>
                                                    <td title="<%=sl.getDependencia()%>"><%=sl.getSigla()%></td>
                                                </tr>
                                                <%
                                                        }
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                        <button type="button" onclick="imprSelec('tablaRegistros')" class="btn btn-warning btn-sm" style="margin-top: 15px"><i class="fa fa-print"></i> Imprimir</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tablaRegistros" hidden="">
                            <h4 style="text-align: center">${mensaje}</h4>
                            <table id="example" class="table table-striped responsive-utilities jambo_table">
                                <thead>
                                    <tr class="headings">
                                        <th>N°</th>
                                        <th>Tipo</th>
                                        <th>Detalle</th>
                                        <th>OpinionTecnica</th>
                                        <th>Fecha</th>
                                        <th>Estado</th>
                                        <th>Dependencia</th>
                                    </tr>
                                </thead>
                                <tbody id="cuerpo">
                                    <%if (request.getSession().getAttribute("reporteInspeccion") != null) {
                                            List<SolicitudCompleta> listaCompleta = (List<SolicitudCompleta>) request.getSession().getAttribute("reporteInspeccion");
                                            for (int i = 0; i < listaCompleta.size(); i++) {
                                                SolicitudCompleta sl = listaCompleta.get(i);
                                    %>
                                    <tr>
                                        <td><%=(i + 1)%></td>
                                        <td><%=sl.getTipoSolicitud()%></td>
                                        <%
                                            if (sl.getDetalle().length() >= 50) {
                                        %>
                                        <td><%=sl.getDetalle().substring(0, 50)%>...</td>
                                        <%
                                        } else {
                                        %>
                                        <td><%=sl.getDetalle()%></td>
                                        <%
                                            }
                                        %>
                                        <td><%=sl.getOpinionTecnica()%></td>
                                        <td><%=formateadorFecha.format(sl.getFecha())%></td>
                                        <td><%=sl.getEstadoSolicitud()%></td>
                                        <td><%=sl.getDependencia()%></td>
                                    </tr>
                                    <%
                                            }
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                        <%@include file="shared/footer.jsp" %>
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
        <!--JQueryui-->
        <script src="<%=request.getContextPath()%>/js/jquery-ui.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
        <script>
                                            $("#datepicker1").datepicker({dateFormat: 'dd/mm/yy'});
                                            $("#datepicker2").datepicker({dateFormat: 'dd/mm/yy'});

                                            $(document).ready(function () {
                                                $("#formularioSolicitudes").validate({
                                                    rules: {
                                                        fechaInicio: {
                                                            required: true
                                                        },
                                                        fechaFin: {
                                                            required: true
                                                        }
                                                    },
                                                    messages: {
                                                        fechaInicio: {
                                                            required: "Campo obligatorio"
                                                        },
                                                        fechaFin: {
                                                            required: "Campo obligatorio"
                                                        }
                                                    }
                                                });
                                            });

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
                                                    if (this.className === "search_init") {
                                                        this.className = "";
                                                        this.value = "";
                                                    }
                                                });
                                                $("tfoot input").blur(function (i) {
                                                    if (this.value === "") {
                                                        this.className = "search_init";
                                                        this.value = asInitVals[$("tfoot input").index(this)];
                                                    }
                                                });
                                            });

                                            function imprSelec(muestra) {
                                                var ficha = document.getElementById(muestra);

                                                var ventimp = window.open(' ', 'popimpr');
                                                ventimp.document.write(ficha.innerHTML);
                                                ventimp.document.close();

                                                var css = ventimp.document.createElement("link");
                                                css.setAttribute("href", "${pageContext.request.contextPath}/css/admin/bootstrap.css");
                                                css.setAttribute("rel", "stylesheet");
                                                css.setAttribute("type", "text/css");
                                                ventimp.document.head.appendChild(css);

                                                ventimp.print();
                                                ventimp.close();
                                            }
        </script>
    </body>
</html>
