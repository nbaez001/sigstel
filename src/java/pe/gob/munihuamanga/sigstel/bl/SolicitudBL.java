/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import pe.gob.munihuamanga.sigstel.be.Solicitud;
import pe.gob.munihuamanga.sigstel.be.SolicitudAtendida;
import pe.gob.munihuamanga.sigstel.be.SolicitudPendiente;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import pe.gob.munihuamanga.sigstel.be.DetalleInspeccion;
import pe.gob.munihuamanga.sigstel.be.SolicitudCompleta;

/**
 *
 * @author VICTOR
 */
public class SolicitudBL {

    public static List<Solicitud> Listar(int idEstado) {
        List<Solicitud> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.Listar", idEstado);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static List<SolicitudPendiente> Pendientes() {//USADO
        List<SolicitudPendiente> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.Pendientes");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static List<SolicitudAtendida> Atendidas() {//USADO
        List<SolicitudAtendida> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.Atendidas");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static void Modificar(Solicitud solicitud) {//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.update("Solicitud.Modificar", solicitud);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }

    public static void Actualizar(Solicitud solicitud) {//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.update("Solicitud.Actualizar", solicitud);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }

    public static List<DetalleInspeccion> ReportarInspeccion(String fechaInicio, String fechaFin, int idTecnico) throws ParseException {//USADO
        SimpleDateFormat f = new SimpleDateFormat("dd/MM/yyyy");
        List<DetalleInspeccion> lista = null;
        SqlSession session = new MyBatisUtil().getSession();

        Map<String, Object> mapa = new HashMap<>();
        mapa.put("fechaInicio", f.parse(fechaInicio));
        mapa.put("fechaFin", f.parse(fechaFin));
        mapa.put("idTecnico", idTecnico);
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.ReportarInspeccion", mapa);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static List<SolicitudCompleta> ReportarSolicitudes(String fechaInicio, String fechaFin, int idDependencia) throws ParseException {//USADO
        SimpleDateFormat f = new SimpleDateFormat("dd/MM/yyyy");
        List<SolicitudCompleta> lista = null;
        SqlSession session = new MyBatisUtil().getSession();

        Map<String, Object> mapa = new HashMap<>();
        mapa.put("fechaInicio", f.parse(fechaInicio));
        mapa.put("fechaFin", f.parse(fechaFin));
        mapa.put("idDependencia", idDependencia);
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.ReportarSolicitudes", mapa);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    /*public static List<SolicitudPendiente> ReporteEstado(Busqueda busqueda) {
     List<SolicitudPendiente> lista = null;
     SqlSession session = new MyBatisUtil().getSession();
     if (session != null) {
     try {
     lista = session.selectList("Solicitud.ReporteEstado", busqueda);
     } finally {
     session.close();
     }
     } else {
     System.out.println("Error en session");
     }
     return lista;
     }

     public static List<SolicitudPendiente> ReporteTipo(Busqueda busqueda) {
     List<SolicitudPendiente> lista = null;
     SqlSession session = new MyBatisUtil().getSession();
     if (session != null) {
     try {
     lista = session.selectList("Solicitud.ReporteTipo", busqueda);
     } finally {
     session.close();
     }
     } else {
     System.out.println("Error en session");
     }
     return lista;
     }

     public static List<SolicitudPendiente> ReporteDependencia(Busqueda busqueda) {
     List<SolicitudPendiente> lista = null;
     SqlSession session = new MyBatisUtil().getSession();
     if (session != null) {
     try {
     lista = session.selectList("Solicitud.ReporteDependencia", busqueda);
     } finally {
     session.close();
     }
     } else {
     System.out.println("Error en session");
     }
     return lista;
     }

     public static List<Solicitud> ListarPorDependencia(Busqueda busqueda) {
     List<Solicitud> lista = null;
     SqlSession session = new MyBatisUtil().getSession();
     if (session != null) {
     try {
     lista = session.selectList("Solicitud.ListarPorDependencia", busqueda);
     } finally {
     session.close();
     }
     } else {
     System.out.println("Error en session");
     }
     return lista;
     }*/
    public static void Insertar(Solicitud solicitud) {//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.insert("Solicitud.Insertar", solicitud);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }

    public static List<SolicitudPendiente> ListarDeTodos(int cantidad) {//USADO
        List<SolicitudPendiente> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.ListarDeTodos", cantidad);
                for (SolicitudPendiente sp : lista) {
                    Calendar c = Calendar.getInstance();
                    c.setTime(sp.getTiempoatencion());
                    c.add(Calendar.HOUR, sp.getTiempotrs().getHours());
                    c.add(Calendar.MINUTE, sp.getTiempotrs().getMinutes());
                    c.add(Calendar.SECOND, sp.getTiempotrs().getSeconds());
                    sp.setTiempoatencion(c.getTime());
                }
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static List<SolicitudPendiente> ListarDeDependencia(int idDependencia) {//USADO
        List<SolicitudPendiente> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Solicitud.ListarDeDependencia", idDependencia);
                for (SolicitudPendiente sp : lista) {
                    Calendar c = Calendar.getInstance();
                    c.setTime(sp.getTiempoatencion());
                    c.add(Calendar.HOUR, sp.getTiempotrs().getHours());
                    c.add(Calendar.MINUTE, sp.getTiempotrs().getMinutes());
                    c.add(Calendar.SECOND, sp.getTiempotrs().getSeconds());
                    sp.setTiempoatencion(c.getTime());
                }
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }

    public static int ContarSolicitud(int idEstadoSolicitud) {//USADO
        int cantidad = 0;
        SqlSession session = new MyBatisUtil().getSession();

        Map<String, Object> mapa = new HashMap<>();
        mapa.put("idEstadoSolicitud", idEstadoSolicitud);
        if (session != null) {
            try {
                cantidad = session.selectOne("Solicitud.ContarSolicitud", mapa);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cantidad;
    }

    public static void Eliminar(int id) {//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.delete("Solicitud.Eliminar", id);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
}
