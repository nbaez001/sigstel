<%-- 
    Document   : home
    Created on : 17/03/2015, 10:48:53 PM
    Author     : NERIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Foro</title>
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
                        <div class="col-xs-12">
                            <div class="alert alert-success fade in" style="margin-top:18px;">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Success!</strong> This alert box indicates a successful or positive action.

                                <ul>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                </ul>
                            </div>

                            <div class="alert alert-info fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Info!</strong> This alert box indicates a neutral informative change or action.
                                <ul>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                </ul>
                            </div>

                            <div class="alert alert-warning fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Warning!</strong> This alert box indicates a warning that might need attention.
                                <ul>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                </ul>
                            </div>

                            <div class="alert alert-danger fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
                                <strong>Danger!</strong> This alert box indicates a dangerous or potentially negative action.
                                <ul>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                    <li><b>Paso 1:</b> Limpiar el disco duro</li>
                                </ul>
                            </div>
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

