/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.be;

/**
 *
 * @author VICTOR
 */
public class Dependencia {
    private int id;
    private int idDepende;
    private String denominacion;
    private String sigla;
    private String ubicacion;
    private String telefono;
    private String estado;

    public Dependencia() {
    }

    public Dependencia(int id, int idDepende, String denominacion, String sigla, String ubicacion, String telefono, String estado) {
        this.id = id;
        this.idDepende = idDepende;
        this.denominacion = denominacion;
        this.sigla = sigla;
        this.ubicacion = ubicacion;
        this.telefono = telefono;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdDepende() {
        return idDepende;
    }

    public void setIdDepende(int idDepende) {
        this.idDepende = idDepende;
    }

    public String getDenominacion() {
        return denominacion;
    }

    public void setDenominacion(String denominacion) {
        this.denominacion = denominacion;
    }

    public String getSigla() {
        return sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    
}
