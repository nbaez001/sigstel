<%-- 
    Document   : nuevaSolicitud
    Created on : 25/03/2015, 09:15:40 AM
    Author     : VICTOR
--%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva solicitud</title>
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
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <fieldset>
                                        <legend style="font-family: Cambria"><h4>NUEVA SOLICITUD</h4></legend>
                                        <div class="col-sm-7 col-md-7">
                                            <label>Tipo de Problema</label>
                                            <select id="idTipo" class="form-control">
                                                <c:forEach var="item" items="${sessionScope.listaTipo}">
                                                    <option value="${item.getId()}">${item.getDenominacion()}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-sm-7 col-md-7">
                                            <label>Detalle</label>
                                            <textarea id="detalle" class="form-control" rows="4" placeholder="Detalle del problema" autofocus onkeyup="validarRequired('detalle')"></textarea>
                                            <span id="spandetalle" style="color: red"></span>
                                        </div>
                                        <div class="col-sm-12 col-md-12">
                                            <label>Fecha: </label>
                                            <label><%=formateador.format(new Date())%></label>
                                        </div>
                                    </fieldset>
                                    <br />
                                    <div class="col-sm-2 col-md-2   ">
                                        <div class="form-group">
                                            <input onclick="Enviar()" type="submit" class="btn btn-primary" value="Enviar">
                                        </div>
                                    </div>
                                    <div class="col-sm-2 col-md-3    ">
                                        <div class="form-group">
                                            <input onclick="LimpiarControl()" type="submit" class="btn btn-danger" value="Limpiar">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="shared/footer.jsp" %>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header" style="color: #337AB7; font-family: cambria; text-align: center">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Login Usuario</h4>
                    </div>
                    <div id="bodyModal" class="modal-body">
                        <fieldset>
                            <div style="text-align: center"><i class="fa fa-user fa-5x"></i></div>
                            <div>
                                Usuario
                            </div>
                            <div class="form-group">
                                <span class="input-icon">
                                    <input id="usuario" type="text" class="form-control" placeholder="Nombre de usuario" />
                                    <i class="fa fa-user"></i> </span>
                            </div>
                            <div>
                                Contraseña
                            </div>
                            <div class="form-group form-actions">
                                <span class="input-icon">
                                    <input id="contrasena" type="password" class="form-control password" placeholder="Contraseña">
                                    <i class="fa fa-lock"></i>
                            </div>
                        </fieldset>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        <button onclick="Loguear()" type="button" class="btn btn-primary">Aceptar <i class="fa fa-arrow-circle-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="http://192.168.0.55:3000/socket.io/socket.io.js"></script>
        <script>

                            /*CARGANDO EL WEB SOCKET*/
                            var socket = io.connect('http://192.168.0.55:3000');
                            $(function () {

                                socket.on('news', function (data) { //peticion de news
                                    console.log(data);
                                });

                            });

                            function validarRequired(nombre) {
                                var item = document.getElementById(nombre).value;
                                if (item === "") {
                                    $("#span" + nombre).html("Completa el detalle de solicitud");
                                    $("#" + nombre).css("border-color", "red");
                                    return 1;
                                }
                                else {
                                    $("#span" + nombre).html("");
                                    $("#" + nombre).css("border-color", "#CCCCCC");
                                    return 0;
                                }
                            }
                            function Enviar() {
                                var usuarioId = <%=request.getSession().getAttribute("usuarioId")%>;
                                if (usuarioId !== null) {
                                    var cont = validarRequired('detalle');
                                    if (cont !== 0) {

                                    }
                                    else {
                                        $.ajax({
                                            type: 'POST',
                                            url: 'nuevaSolicitud',
                                            data: {
                                                idTipo: $("#idTipo").val(),
                                                detalle: $("#detalle").val()
                                            },
                                            dataType: "json",
                                            success: function (data) {
                                                if (data === 0) {
                                                    alert("Error al enviar");
                                                }
                                                else {
                                                    LimpiarControl();
                                                    alert("Solicitud enviado correctamente");
                                                    socket.emit("envio", {
                                                        dependencia: '<%=request.getSession().getAttribute("dependencia")%>',
                                                        nombre: '<%=request.getSession().getAttribute("nombre")%>',
                                                        usuarioId: usuarioId,
                                                        Tipo: $('#idTipo option:selected').text(),
                                                        detalle: $("#detalle").val()
                                                    }); //emision de envio
                                                }
                                            },
                                            error: function (errorData) {
                                                alert("Error al registrar solicitud");
                                            }
                                        });
                                    }
                                }
                                else {
                                    $('#myModal').modal('show');
                                }
                            }
                            function LimpiarControl() {
                                $("#detalle").val("");
                            }
                            function Loguear() {
                                $.ajax({
                                    type: 'POST',
                                    url: 'modalLoguin',
                                    data: {
                                        usuario: $("#usuario").val(),
                                        contrasena: $("#contrasena").val()
                                    },
                                    dataType: "json",
                                    success: function (data) {
                                        if (data === 0) {
                                            alert("Usuario o contraseña son incorrectos");
                                        }
                                        else {
                                            $("#myModal").hide();
                                            location.reload();
                                        }
                                    },
                                    error: function (errorData) {
                                        alert("Error " + errorData);
                                    }
                                });
                            }
        </script>
    </body>
</html>
