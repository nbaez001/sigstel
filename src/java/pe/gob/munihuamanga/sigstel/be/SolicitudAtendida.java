/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.be;

import java.util.Date;

/**
 *
 * @author NERIO
 */
public class SolicitudAtendida {
    private int id;
    private String detalle;
    private Date fecha;
    private String tipoSolicitud;
    private String dependencia;
    private String sigla;
    private String cargo;
    private String estadoSolicitud;
    private String ubicacion;

    public SolicitudAtendida() {
    }

    public SolicitudAtendida(int id, String detalle, Date fecha, String tipoSolicitud, String dependencia, String sigla, String cargo, String estadoSolicitud, String ubicacion) {
        this.id = id;
        this.detalle = detalle;
        this.fecha = fecha;
        this.tipoSolicitud = tipoSolicitud;
        this.dependencia = dependencia;
        this.sigla = sigla;
        this.cargo = cargo;
        this.estadoSolicitud = estadoSolicitud;
        this.ubicacion = ubicacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getTipoSolicitud() {
        return tipoSolicitud;
    }

    public void setTipoSolicitud(String tipoSolicitud) {
        this.tipoSolicitud = tipoSolicitud;
    }

    public String getDependencia() {
        return dependencia;
    }

    public void setDependencia(String dependencia) {
        this.dependencia = dependencia;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getEstadoSolicitud() {
        return estadoSolicitud;
    }

    public void setEstadoSolicitud(String estadoSolicitud) {
        this.estadoSolicitud = estadoSolicitud;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    

}
