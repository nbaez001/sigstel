<%-- 
    Document   : administrarPerfil
    Created on : 19/03/2015, 06:45:36 PM
    Author     : NERIO
--%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Persona"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Usuario"%>
<%Usuario ca = (Usuario) request.getSession().getAttribute("cuentaAdministrador");%>
<%Persona p = (Persona) request.getSession().getAttribute("persona");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil administrador</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/admin/site.css" rel="stylesheet">
        <!-- Custom styling plus plugins -->
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/icheck/flat/green.css" rel="stylesheet">
    </head>
    <body class="nav-md">
        <div class="container body">
            <div class="main_container">
                <%@include file="shared/navbarLeft.jsp" %>
                <%@include file="shared/navbarTop.jsp" %>
                <div class="right_col" role="main">
                    <div class="">
                        <div class="row">
                            <div class="col-md-12" style="text-align: center">
                                <div class="tile">
                                    <h3 style="font-family: Cambria"><small>ADMINISTRACION DE PERFIL</small></h3>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <fieldset>
                                            <legend style="font-family: Cambria"><h5>DATOS PERSONALES</h5></legend>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Nombre: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getNombre()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Apellido paterno: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getApellidoPat()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Apellido materno: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getApellidoMat()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Dni: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getDni()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Telefono: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getTelefono()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Email: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=p.getEmail()%>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <fieldset>
                                            <legend style="font-family: Cambria"><h5>DATOS DE CUENTA</h5></legend>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Cargo: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=ca.getCargo()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Estado: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%if (ca.getEstado() == 0) {
                                                %>
                                                <text>Inactivo</text>
                                                <%} else {
                                                %>
                                                <text>Activo</text>
                                                <%}%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Usuario: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=ca.getUsuario()%>
                                            </div>
                                            <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                                <b>Contraseña: </b>
                                            </div>
                                            <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                                <%=ca.getContrasena()%>
                                            </div>
                                        </fieldset>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="col-sm-3" style="margin-left:15px">
                                <p>
                                    <button class="btn btn-primary" type="button" onclick="location.href = 'cambiarContrasena'" >Cambiar Contraseña</button>
                                </p>
                            </div>-->
                        </div>
                    </div>
                    <%@include file="shared/footer.jsp" %>%>
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
    </body>
</html>
