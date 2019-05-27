<%-- 
    Document   : error404
    Created on : 01/10/2015, 01:27:09 AM
    Author     : Nerio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error 404</title>
        <link href="<%=request.getContextPath()%>/css/bootstrap.min.css" rel="stylesheet">

        <link href="<%=request.getContextPath()%>/fonts/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/animate.min.css" rel="stylesheet">

        <!-- Custom styling plus plugins -->
        <link href="<%=request.getContextPath()%>/css/custom.css" rel="stylesheet">
        <link href="<%=request.getContextPath()%>/css/icheck/flat/green.css" rel="stylesheet">


        <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    </head>
    <body class="nav-md">
        <div class="container" style="min-height: 345px">
            <div class="row">
                <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12" style="text-align: center">
                    <div>
                        <h1 class="error-number">404</h1>
                        <h2>No se pudo entrar esta pagina</h2>
                        <p>La pagina que estas buscando no existe <a href="#">Reportar?</a>
                        </p>
                        <div class="mid_center">
                            <h3>Search</h3>
                            <form>
                                <div class="col-xs-12 form-group pull-right top_search">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Buscar...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button">Ir!</button>
                                        </span>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
