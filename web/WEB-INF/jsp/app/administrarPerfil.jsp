<%-- 
    Document   : administrarPerfil
    Created on : 25/03/2015, 06:47:37 PM
    Author     : NERIO
--%>
<%@page import="pe.gob.munihuamanga.sigstel.be.CuentaUsuario"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Dependencia"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Persona"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.Usuario"%>

<%
    Usuario u = (Usuario) request.getSession().getAttribute("pUsuario");
    Persona p = (Persona) request.getSession().getAttribute("pPersona");
    Dependencia d = (Dependencia) request.getSession().getAttribute("pDependencia");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil usuario</title>
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
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <fieldset>
                                        <legend style="font-family: Cambria">DATOS PERSONALES</legend>
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
                                        <legend style="font-family: Cambria">DATOS USUARIO</legend>
                                        <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                            <b>Cargo: </b>
                                        </div>
                                        <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                            <%=u.getCargo()%>
                                        </div>
                                        <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                            <b>Dependencia: </b>
                                        </div>
                                        <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                            <%=d.getDenominacion()%>
                                        </div>
                                        <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                            <b>Sigla: </b>
                                        </div>
                                        <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                            <%=d.getSigla()%>
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
                                        <legend style="font-family: Cambria">DATOS DE CUENTA</legend>
                                        <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                            <b>Usuario: </b>
                                        </div>
                                        <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                            <%=u.getUsuario()%>
                                        </div>
                                        <div class="display-label col-xs-12 col-sm-6 col-md-3 col-lg-3" style="background-color: #DDDDDD; border-radius: 5%; border-color: #C0C09F; height: 36px">
                                            <b>Contraseña: </b>
                                        </div>
                                        <div class="display-field col-xs-12 col-sm-6 col-md-3 col-lg-3" style="height: 36px">
                                            <%=u.getContrasena()%>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3" style="margin-left:15px">
                            <p>
                                <button class="btn btn-primary" type="button" onclick="location.href = 'home'" >Pagina principal</button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="shared/footer.jsp" %>
        <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
    </body>
</html>
