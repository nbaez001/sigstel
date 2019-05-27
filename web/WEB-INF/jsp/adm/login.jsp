<%-- 
    Document   : login
    Created on : 18/03/2015, 06:24:11 PM
    Author     : NERIO
--%>
<% String mensaje = (String) request.getSession().getAttribute("mensajeLogin");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Administrador</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/admin/morris.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/admin/site.css" rel="stylesheet" type="text/css"/>
        <!--STYLOS DE ERROR-->
        <link href="<%=request.getContextPath()%>/css/cmxform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="main-login col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12">
            <div class="logo">LOG<i class="clip-clip"></i>IN
            </div>
            <!-- start: LOGIN BOX -->
            <div class="box-login">
                <h3>Ingrese a su cuenta</h3>
                <p>
                    Ingrese su usario y contraseña para iniciar sesión.
                </p>
                <form id="formulario" action="administrator" method="post" class="form-login">
                    <fieldset>
                        <div class="form-group">
                            <span class="input-icon">
                                <input type="text" class="form-control" name="usuario" placeholder="Nombre de usuario" autofocus />
                                <i class="fa fa-user"></i>
                            </span>
                        </div>
                        <div class="form-group form-actions">
                            <span class="input-icon">
                                <input type="password" class="form-control password" name="contrasena" placeholder="Contraseña">
                                <i class="fa fa-lock"></i>
                        </div>
                        <div class="form-actions">
                            <label for="remember" class="checkbox-inline">
                                <input type="checkbox" class="grey remember" id="remember" name="remember">
                                Recordar Cuenta
                            </label>
                            <button type="submit" class="btn btn-danger pull-right">
                                Login <i class="fa fa-arrow-circle-right"></i>
                            </button>
                        </div>
                    </fieldset>
                </form>
                <% if (mensaje != null) {%>
                <p id="mensaje" style="color: red"><%=mensaje%></p>
                <%}%>
            </div>
            <div class="copyright">
                2015 &copy; SIGSTEL.
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#formulario").validate({
                    rules: {
                        usuario:{
                            required:true
                        },
                        contrasena:{
                            required:true
                        }
                    },
                    messages: {
                        usuario:{
                            required:"Campo obligatorio"
                        },
                        contrasena:{
                            required:"Campo obligatorio"
                        }
                    }
                });
            });
        </script>
    </body>
</html>
