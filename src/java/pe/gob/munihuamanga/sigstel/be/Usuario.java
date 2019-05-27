/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.be;

/**
 *
 * @author NERIO
 */
public class Usuario {
    private int id;
    private String usuario;
    private String contrasena;
    private String cargo;
    private int estado;
    private int idRol;
    private int idDependencia;
    private int idPersona;

    public Usuario() {
    }

    public Usuario(int id, String usuario, String contrasena, String cargo, int estado, int idRol, int idDependencia, int idPersona) {
        this.id = id;
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.cargo = cargo;
        this.estado = estado;
        this.idRol = idRol;
        this.idDependencia = idDependencia;
        this.idPersona = idPersona;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public int getIdDependencia() {
        return idDependencia;
    }

    public void setIdDependencia(int idDependencia) {
        this.idDependencia = idDependencia;
    }

    public int getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }

    
}
