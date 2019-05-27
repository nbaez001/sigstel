/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.da;

import pe.gob.munihuamanga.sigstel.be.Solicitud;
import pe.gob.munihuamanga.sigstel.be.SolicitudAtendida;
import pe.gob.munihuamanga.sigstel.be.SolicitudPendiente;
import java.util.List;
import java.util.Map;
import pe.gob.munihuamanga.sigstel.be.DetalleInspeccion;
import pe.gob.munihuamanga.sigstel.be.SolicitudCompleta;

/**
 *
 * @author VICTOR
 */
public interface SolicitudMapper {
    //List<Solicitud> Listar(int idEstado);
    List<SolicitudAtendida> Atendidas();//USADO
    List<SolicitudPendiente> Pendientes();//USADO
    void Modificar(Solicitud solicitud);//USADO
    void Actualizar(Solicitud solicitud);//USADO
    /*List<SolicitudPendiente> ReporteEstado(Busqueda busqueda);
    List<SolicitudPendiente> ReporteTipo(Busqueda busqueda);
    List<SolicitudPendiente> ReporteDependencia(Busqueda busqueda);
    List<Solicitud> ListarPorDependencia(Busqueda busqueda);*/
    void Insertar(Solicitud solicitud);//USADO
    List<SolicitudPendiente> ListarDeTodos(int cantidad);//USADO
    List<SolicitudPendiente> ListarDeDependencia(int idDependencia);//USADO
    List<SolicitudCompleta> ReportarSolicitudes(Map mapa);//USADO
    List<DetalleInspeccion> ReportarInspeccion(Map mapa);//USADO
    int ContarSolicitud(Map mapa);//USADO
    void Eliminar(int id);
}
