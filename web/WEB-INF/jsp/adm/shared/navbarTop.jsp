<%@page import="java.util.List"%>
<%@page import="pe.gob.munihuamanga.sigstel.be.SolicitudPendiente"%>
<%@page import="java.text.SimpleDateFormat"%>
<%SimpleDateFormat formateador = new SimpleDateFormat("dd/MM/yyyy");%>
<div class="top_nav">
    <div class="nav_menu">
        <nav class="" role="navigation">
            <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
                <li class="">
                    <a href="#" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-user"></i> ${sessionScope.administradorNombre}
                        <span class=" fa fa-angle-down"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                        <li><a href="perfil"> Perfil</a>
                        </li>
                        <li><a href="logout"><i class="fa fa-sign-out pull-right"></i> Salir</a>
                        </li>
                    </ul>
                </li>

                <li role="presentation" class="dropdown">
                    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-envelope-o"></i>
                        <span class="badge bg-green" id="nroSolicitudes">${sessionScope.listaPendientes.size()}</span>
                    </a>
                    <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                        <% List<SolicitudPendiente> lista = (List<SolicitudPendiente>) request.getSession().getAttribute("listaPendientes");;
                            for (int i = 0; i < lista.size(); i++) {
                        %>
                        <li class="message-preview">
                            <a href="#">
                                <div class="media">
                                    <span class="pull-left">
                                        <i class="fa fa-2x fa-edit " style="color: blue"></i>
                                    </span>
                                    <div class="media-body">
                                        <h5 class="media-heading"><strong><%=lista.get(i).getSigla()%> (<%=lista.get(i).getCargo()%>)</strong>
                                        </h5>
                                        <span>
                                            <span><%=lista.get(i).getTipoSolicitud()%></span>
                                            <span class="time"><%=formateador.format(lista.get(i).getFecha())%></span>
                                        </span>
                                        <span class="message">
                                            <%=lista.get(i).getDetalle()%>
                                        </span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <%
                            }
                        %>
                        <li>
                            <div class="text-center">
                                <a href="listarPendientes">
                                    <strong>Ver todos</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </div>
                        </li>
                    </ul>
                </li>

            </ul>
        </nav>
    </div>

</div>
<audio id="audio" src="${pageContext.request.contextPath}/audio/SD_ALERT_34.mp3" preload="auto" controls hidden=""></audio>

<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/notify.min.js"></script>
<script src="http://192.168.0.55:3000/socket.io/socket.io.js"></script>

<script>


    /*CARGANDO EL WEB SOCKET*/
    var socket = io.connect('http://192.168.0.55:3000');


    var audio = document.getElementById('audio');

    socket.on('respPanel', function (data) {
        console.log(data);
        var cantidad = parseInt($('#nroSolicitudes').text()) + 1;
        
        $('#nroSolicitudes').text(cantidad);
        $('#scopeCantidad').html(cantidad);

        var duracion = Number(audio.duration);
        
        audio.play();
        
        setTimeout(function () {
            audio.pause();
        }, parseInt(duracion*3000));

        //audio.play();

        /*$.notify("Hello World");
         
         var r = confirm("Atender esta Solicitud");
         
         
         
         if (r === true) {
         audio.pause();
         } else {
         
         }*/

    });
</script>
<!-- /top navigation -->