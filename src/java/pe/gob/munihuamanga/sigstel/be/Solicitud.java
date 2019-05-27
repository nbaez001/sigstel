/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.be;

import java.util.Date;

/**
 *
 * @author VICTOR
 */
public class Solicitud {

    private int id;
    private String detalle;
    private String opinionTecnica;
    private String opinionUsuario;
    private Date fecha;
    private Date fechaInicioAtencion;
    private Date fechaFinAtencion;
    private int idTipoSolicitud;
    private int idEstadoSolicitud;
    private int idUsuario;
    private int idTecnico;
    

    public Solicitud() {
    }

    public Solicitud(int id, String detalle, String opinionTecnica, String opinionUsuario, Date fecha, Date fechaInicioAtencion, Date fechaFinAtencion, int idTipoSolicitud, int idEstadoSolicitud, int idUsuario, int idTecnico) {
        this.id = id;
        this.detalle = detalle;
        this.opinionTecnica = opinionTecnica;
        this.opinionUsuario = opinionUsuario;
        this.fecha = fecha;
        this.fechaInicioAtencion = fechaInicioAtencion;
        this.fechaFinAtencion = fechaFinAtencion;
        this.idTipoSolicitud = idTipoSolicitud;
        this.idEstadoSolicitud = idEstadoSolicitud;
        this.idUsuario = idUsuario;
        this.idTecnico = idTecnico;
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

    public String getOpinionTecnica() {
        return opinionTecnica;
    }

    public void setOpinionTecnica(String opinionTecnica) {
        this.opinionTecnica = opinionTecnica;
    }

    public String getOpinionUsuario() {
        return opinionUsuario;
    }

    public void setOpinionUsuario(String opinionUsuario) {
        this.opinionUsuario = opinionUsuario;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public Date getFechaInicioAtencion() {
        return fechaInicioAtencion;
    }

    public void setFechaInicioAtencion(Date fechaInicioAtencion) {
        this.fechaInicioAtencion = fechaInicioAtencion;
    }

    public Date getFechaFinAtencion() {
        return fechaFinAtencion;
    }

    public void setFechaFinAtencion(Date fechaFinAtencion) {
        this.fechaFinAtencion = fechaFinAtencion;
    }

    public int getIdTipoSolicitud() {
        return idTipoSolicitud;
    }

    public void setIdTipoSolicitud(int idTipoSolicitud) {
        this.idTipoSolicitud = idTipoSolicitud;
    }

    public int getIdEstadoSolicitud() {
        return idEstadoSolicitud;
    }

    public void setIdEstadoSolicitud(int idEstadoSolicitud) {
        this.idEstadoSolicitud = idEstadoSolicitud;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdTecnico() {
        return idTecnico;
    }

    public void setIdTecnico(int idTecnico) {
        this.idTecnico = idTecnico;
    }

    
}
