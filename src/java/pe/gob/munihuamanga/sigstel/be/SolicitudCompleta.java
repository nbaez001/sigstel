/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.be;

import java.util.Date;

/**
 *
 * @author Nerio
 */
public class SolicitudCompleta {
    private int id;
    private String tipoSolicitud;
    private String detalle;
    private String opinionTecnica;
    private String opinionUsuario;
    private Date fecha;
    private String estadoSolicitud;
    private String dependencia;
    private String sigla;
    private String tecnico;

    public SolicitudCompleta() {
    }

    public SolicitudCompleta(int id, String tipoSolicitud, String detalle, String opinionTecnica, String opinionUsuario, Date fecha, String estadoSolicitud, String dependencia, String sigla, String tecnico) {
        this.id = id;
        this.tipoSolicitud = tipoSolicitud;
        this.detalle = detalle;
        this.opinionTecnica = opinionTecnica;
        this.opinionUsuario = opinionUsuario;
        this.fecha = fecha;
        this.estadoSolicitud = estadoSolicitud;
        this.dependencia = dependencia;
        this.sigla = sigla;
        this.tecnico = tecnico;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipoSolicitud() {
        return tipoSolicitud;
    }

    public void setTipoSolicitud(String tipoSolicitud) {
        this.tipoSolicitud = tipoSolicitud;
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

    public String getEstadoSolicitud() {
        return estadoSolicitud;
    }

    public void setEstadoSolicitud(String estadoSolicitud) {
        this.estadoSolicitud = estadoSolicitud;
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

    public String getTecnico() {
        return tecnico;
    }

    public void setTecnico(String tecnico) {
        this.tecnico = tecnico;
    }

    
}
