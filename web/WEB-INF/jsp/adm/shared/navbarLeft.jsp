<div class="col-md-3 left_col">
    <div class="left_col scroll-view">

        <div class="navbar nav_title" style="border: 0;">
            <a href="home" class="site_title"><i class="fa fa-comments"></i> <span>SIGSTEL!</span></a>
        </div>
        <div class="clearfix"></div>
        <br />

        <!-- sidebar menu -->
        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                    <li>
                        <a href="homeAdmin">
                            <i class="fa fa-home"></i> Home 
                        </a>
                    </li>
                    <li><a><i class="fa fa-table"></i> Solicitudes <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="display: none">
                            <li><a href="listarPendientes">Solicitudes pendientes</a>
                            </li>
                            <li><a href="listarAtendidas">Solicitudes atendidas</a>
                            </li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-desktop"></i> Registros <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="display: none">
                            <li><a href="reporteInspeccion">Registro inspeccion</a>
                            </li>
                            <li><a href="reporteSolicitudes">Registro solicitudes</a>
                            </li>
                        </ul>
                    </li>
                    <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                        <ul class="nav child_menu" style="display: none">
                            <li><a href="chartjs.html">Chart JS</a>
                            </li>
                            <li><a href="chartjs2.html">Chart JS2</a>
                            </li>
                            <li><a href="morisjs.html">Moris JS</a>
                            </li>
                            <li><a href="echarts.html">ECharts </a>
                            </li>
                            <li><a href="other_charts.html">Other Charts </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->

        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
    </div>
</div>
<audio loop="true" id="audio" src="${pageContext.request.contextPath}/audio/SD_ALERT_34.mp3" preload="auto" controls hidden="true"></audio>
<!-- top navigation -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/js/notify.min.js"></script>
<script src="${pageContext.request.contextPath}/js/sockets.io.js"></script>
<script>
    /*CARGANDO EL WEB SOCKET*/
    var socket = io.connect('http://200.37.186.137:3000');


    var audio = document.getElementById('audio');

    socket.on('respPanel', function(data) {
        console.log(data);


        $('#nroSolicitudes').text(parseInt($('#nroSolicitudes').text()) + 1);
        audio.play();
      
        $.notify("Hello World");
                
        var r = confirm("Atender esta Solicitud");



        if (r == true) {
            audio.pause();
        } else {

        }
    });
</script>