<div class="container">
    <nav class="navbar navbar-default" role="navigation">
        <!-- El logotipo y el icono que despliega el menú se agrupan
             para mostrarlos mejor en los dispositivos móviles -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target=".navbar-ex1-collapse">
                <span class="sr-only">Desplegar navegación</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="administrator"><img src="img/sisatlin.png" style="width:40px; height:40px"/></a>
        </div>

        <!-- Agrupar los enlaces de navegación, los formularios y cualquier
             otro elemento que se pueda ocultar al minimizar la barra -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="home">Home</a></li>
                <li><a href="nuevaSolicitud">Nueva solicitud</a></li>
                <li><a href="listarSolicitudes">Lista solicitudes</a></li>
            </ul>
            <%
                if (request.getSession().getAttribute("dependenciaNombre") != null && request.getSession().getAttribute("usuarioId") != null) {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li style="font-family:Cambria;font-size:17px; width:110px; padding-right: 0px">
                    <a href="administrarPerfil" title="${sessionScope.dependencia}"><i class="fa fa-user"></i> <label id="dependencia">${sessionScope.dependenciaNombre}</label></a>
                </li>
                <li><a href="salir">Salir</a></li>
            </ul>
            <%
            } else {
            %>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login">Ingresar</a></li>
            </ul>
            <%
                }
            %>
        </div>
    </nav>
</div>