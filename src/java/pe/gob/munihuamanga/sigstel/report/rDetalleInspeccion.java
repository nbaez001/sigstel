/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.report;

/**
 *
 * @author NERIO
 */
public class rDetalleInspeccion {
    private String fecha;
    private String nombre;
    private String dependencia;
    private String tipo;
    private String detalle;
    private String horaInicio;
    private String horaFin;
    private String opinion;

    public rDetalleInspeccion() {
    }

    public rDetalleInspeccion(String fecha, String nombre, String dependencia, String tipo, String detalle, String horaInicio, String horaFin, String opinion) {
        this.fecha = fecha;
        this.nombre = nombre;
        this.dependencia = dependencia;
        this.tipo = tipo;
        this.detalle = detalle;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.opinion = opinion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDependencia() {
        return dependencia;
    }

    public void setDependencia(String dependencia) {
        this.dependencia = dependencia;
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

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public String getOpinion() {
        return opinion;
    }

    public void setOpinion(String opinion) {
        this.opinion = opinion;
    }
    
    
}
