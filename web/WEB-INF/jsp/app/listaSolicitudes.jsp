<%-- 
    Document   : listaSolicitudes
    Created on : 25/03/2015, 12:56:08 PM
    Author     : VICTOR
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");%>
<%SimpleDateFormat formateador2 = new SimpleDateFormat("HH:mm:ss");%>

<%@page import="pe.gob.munihuamanga.sigstel.be.SolicitudPendiente"%>
<%@page import="java.util.List"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de solicitudes</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/admin/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/admin/site.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="shared/portada.jsp" %>
        <%@include file="shared/navegador.jsp" %>
        <div class="container" style="min-height: 345px">
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row" id="alertaEliminado">
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <%  List<SolicitudPendiente> lista = (List<SolicitudPendiente>) request.getSession().getAttribute("listaSolicitudUsuario");
                                if (request.getSession().getAttribute("usuarioId") == null) {

                            %>
                            <div style="font-family: Cambria; text-align: center">
                                <h4>LISTA GENERAL DE ULTIMAS SOLICITUDES</h4>
                            </div>
                            <table class="table table-striped" id="tabla">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Tipo</th>
                                        <th>Detalle</th>
                                        <th>Dependencia</th>
                                        <th>Fecha</th>
                                        <th>Estado</th>
                                        <th>Tiempo atención</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%      for (int i = 0; i < lista.size(); i++) {
                                            SolicitudPendiente sl = lista.get(i);
                                    %>
                                    <tr>
                                        <td><%=sl.getId()%></td>
                                        <td><%=sl.getTipoSolicitud()%></td>
                                        <td><%=sl.getDetalle()%></td>
                                        <td><%=sl.getSigla()%> (<%=sl.getCargo()%>)</td>
                                        <td><%=formateador.format(sl.getFecha())%></td>
                                        <td><%=sl.getEstadoSolicitud()%></td>
                                        <td><%=formateador2.format(sl.getTiempoatencion())%>  Horas</td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                            <%} else {
                            %>
                            <div style="font-family: Cambria; text-align: center">
                                <h4>LISTA DE ULTIMAS SOLICITUDES <%=request.getSession().getAttribute("dependenciaNombre")%></h4>
                            </div>
                            <table class="table table-striped" id="tabla">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Tipo</th>
                                        <th>Detalle</th>
                                        <th>Dependencia</th>
                                        <th>Fecha</th>
                                        <th>Estado</th>
                                        <th>Tiempo atención</th>
                                        <th>Item</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (int i = 0; i < lista.size(); i++) {
                                            SolicitudPendiente sl = lista.get(i);
                                    %>
                                    <tr>
                                        <td><%=sl.getId()%></td>
                                        <td><%=sl.getTipoSolicitud()%></td>
                                        <td><%=sl.getDetalle()%></td>
                                        <td><%=sl.getSigla()%> (<%=sl.getCargo()%>)</td>
                                        <td><%=formateador.format(sl.getFecha())%></td>
                                        <td><%=sl.getEstadoSolicitud()%></td>
                                        <td><%=formateador2.format(sl.getTiempoatencion())%>  Horas</td>
                                        <td>
                                            <%if (sl.getEstadoSolicitud().equals("Pendiente")) {
                                            %>
                                            <button onclick="Eliminar(<%=sl.getId()%>)">Eliminar <i class="fa fa-close"></i></button>
                                                <%
                                                    }%>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="shared/footer.jsp" %>
        <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script language="JavaScript" type="text/javascript">
                                                function Eliminar(idSolicitud)
                                                {
                                                    var statusConfirm = confirm("¿Realmente desea eliminar esta solicitud?");
                                                    if (statusConfirm === true)
                                                    {
                                                        $.ajax({
                                                            type: 'POST',
                                                            url: 'eliminarSolicitud',
                                                            data: {idSolicitud: idSolicitud},
                                                            dataType: "json",
                                                            success: function (data) {
                                                                if (data === 0) {
                                                                    alert("Error al eliminar");
                                                                }
                                                                else {
                                                                    alert("Solicitud eliminado");
                                                                    window.location.href = "listarSolicitudes";
                                                                }
                                                            },
                                                            error: function (errorData) {
                                                                alert("Error " + errorData);
                                                            }
                                                        });
                                                    }
                                                    else
                                                    {
                                                        history.go(1);
                                                    }
                                                }
        </script>
    </body>
</html>
