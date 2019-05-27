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
public class DetalleInspeccion {
    private Date fecha;
    private String nombre;
    private String sigla;
    private String tipo;
    private String detalle;
    private Date horaInicio;
    private Date horaFin;
    private String opinion;
    private String tecnico;
    private String estado;

    public DetalleInspeccion() {
    }

    public DetalleInspeccion(Date fecha, String nombre, String sigla, String tipo, String detalle, Date horaInicio, Date horaFin, String opinion, String tecnico, String estado) {
        this.fecha = fecha;
        this.nombre = nombre;
        this.sigla = sigla;
        this.tipo = tipo;
        this.detalle = detalle;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.opinion = opinion;
        this.tecnico = tecnico;
        this.estado = estado;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDetalle() {
        return detalle;
    }

    public void setDetalle(String detalle) {
        this.detalle = detalle;
    }

    public Date getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(Date horaInicio) {
        this.horaInicio = horaInicio;
    }

    public Date getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(Date horaFin) {
        this.horaFin = horaFin;
    }

    public String getOpinion() {
        return opinion;
    }

    public void setOpinion(String opinion) {
        this.opinion = opinion;
    }

    public String getTecnico() {
        return tecnico;
    }

    public void setTecnico(String tecnico) {
        this.tecnico = tecnico;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
}
