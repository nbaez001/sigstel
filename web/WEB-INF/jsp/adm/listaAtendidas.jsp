<%-- 
    Document   : listaAtendidas
    Created on : 31/03/2015, 07:50:47 PM
    Author     : NERIO
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%SimpleDateFormat formater = new SimpleDateFormat("dd/MM/yyyy");%>
<%@page import="pe.gob.munihuamanga.sigstel.be.SolicitudAtendida"%>
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
                                        <h2>Solicitudes Atendidas</h2>
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
                                                    <th>Estado</th>
                                                    <th class=" no-link last"><span class="nobr">Action</span>
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody id="cuerpo">
                                                <%List<SolicitudAtendida> listaP = (List<SolicitudAtendida>) request.getSession().getAttribute("listaAtendidas");%>
                                                <%for (int i = 0; i < listaP.size(); i++) {
                                                        SolicitudAtendida sl = listaP.get(i);
                                                %>
                                                <tr>
                                                    <th><input type="checkbox" class="tableflat"></th>
                                                    <td><%=sl.getId()%></td>
                                                    <td><%=sl.getTipoSolicitud()%></td>
                                                    <td><%=sl.getDetalle()%></td>
                                                    <td><%=sl.getSigla()%> (<%=sl.getCargo()%>)</td>
                                                    <td><%=formater.format(sl.getFecha())%></td>
                                                    <td><%=sl.getEstadoSolicitud()%></td>
                                                    <td>
                                                        <a class="btn btn-success btn-xs" onclick="Solucion(<%=sl.getId()%>, 4)">
                                                            <i class="fa fa-pencil"></i>  Resuelto
                                                        </a>
                                                        <a class="btn btn-warning btn-xs" onclick="Solucion(<%=sl.getId()%>, 5)">
                                                            <i class="fa fa-close"></i> No resuelto
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
                    </div>
                    <%@include file="shared/footer.jsp" %>
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

        <script type="text/javascript">
                                                            function Solucion(id, idEstadoSolicitud) {
                                                                var idRol = <%=request.getSession().getAttribute("administradorIdRol")%>;
                                                                if (idRol === 2) {
                                                                    $.ajax({
                                                                        type: 'POST',
                                                                        url: 'actualizarInspeccion',
                                                                        data: {id: id, idEstadoSolicitud: idEstadoSolicitud},
                                                                        dataType: "json",
                                                                        success: function (data) {
                                                                            if (data === 1) {
                                                                                window.location.href = "listarAtendidas";
                                                                                //location.reload();
                                                                            }
                                                                            else {
                                                                                alert("Error");
                                                                            }
                                                                        },
                                                                        error: function () {
                                                                            alert("Error");
                                                                        }
                                                                    });
                                                                }
                                                                else {
                                                                    var mensaje = "Desconocido...";
                                                                    if (idRol === 1) {
                                                                        mensaje = "Administrador";
                                                                    }
                                                                    alert("Usted no puede atender solicitudes (Cargo: " + mensaje + ")");
                                                                }

                                                            }
        </script>
    </body>
</html>
