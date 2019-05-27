<%-- 
    Document   : login
    Created on : 25/03/2015, 12:34:46 AM
    Author     : NERIO
--%>

<% String mensaje = (String) request.getSession().getAttribute("mensajeLoginUsuario");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login usuario</title>
        <%@include file="shared/favicon.jsp" %>
        <link href="<%=request.getContextPath()%>/css/admin/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="<%=request.getContextPath()%>/css/admin/site.css" rel="stylesheet" type="text/css"/>
        <!--STYLOS DE ERROR-->
        <link href="<%=request.getContextPath()%>/css/cmxform.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="shared/portada.jsp" %>
        <%@include file="shared/navegador.jsp" %>
        <div class="container" style="min-height: 345px">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12">
                    <div>
                        <div style="text-align: center; font-family: cambria">
                            <h3>Ingrese a su cuenta</h3>
                        </div>
                        <form action="login" method="post" class="form-login" id="formulario">
                            <fieldset>
                                <div>
                                    Usuario
                                </div>
                                <div class="form-group">
                                    <span class="input-icon">
                                        <input type="text" class="form-control" name="usuario" placeholder="Nombre de usuario" autofocus=""/>
                                        <i class="fa fa-user"></i> </span>
                                </div>
                                <div>
                                    Contraseña
                                </div>
                                <div class="form-group form-actions">
                                    <span class="input-icon">
                                        <input type="password" class="form-control password" name="contrasena" placeholder="Contraseña"/>
                                        <i class="fa fa-lock"></i>
                                </div>
                                <div class="form-actions">
                                    <label for="remember" class="checkbox-inline">
                                        <input type="checkbox" class="grey remember" id="remember" name="remember">
                                        Recordar Cuenta
                                    </label>
                                </div>
                                <br/>
                                <% if (mensaje != null) {%>
                                <p style="color: red"><%=mensaje%></p>
                                <%}%>
                                <div class="form-actions">
                                    <button type="submit" class="btn btn-success">
                                        Ingresar <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="shared/footer.jsp" %>
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
