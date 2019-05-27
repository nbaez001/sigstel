/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.da;

import pe.gob.munihuamanga.sigstel.be.Usuario;
import pe.gob.munihuamanga.sigstel.be.Persona;
import java.util.List;
import java.util.Map;
import pe.gob.munihuamanga.sigstel.be.CuentaUsuario;

/**
 *
 * @author NERIO
 */
public interface UsuarioMapper {
    Usuario Autenticar(Usuario usuario);//USADO
    Usuario Obtener(int id); //USADO
    void Insertar(Usuario user);//USADO
    Usuario ObtenerPorNombre(Persona persona);//USADO
    Usuario ObtenerPorDni(Persona persona);//USADO
    Usuario ObtenerPorDni(Map mapa);//USADO
    void Modificar(Usuario user);//USADO
    List<Usuario> Listar();
    List<CuentaUsuario> ListarUsuarios();//USADO
    List<CuentaUsuario> ListarTecnicos();//USADO
    int ValidarId(String usuario);//USADO
}
