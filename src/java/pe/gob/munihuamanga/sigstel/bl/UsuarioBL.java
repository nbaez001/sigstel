/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import java.util.HashMap;
import pe.gob.munihuamanga.sigstel.be.Usuario;
import pe.gob.munihuamanga.sigstel.be.Persona;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import pe.gob.munihuamanga.sigstel.be.CuentaUsuario;

/**
 *
 * @author NERIO
 */
public class UsuarioBL {
    public static Usuario Autenticar(Usuario usuario){//USADO
        Usuario cuenta = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                cuenta = (Usuario)session.selectOne("Usuario.Autenticar", usuario);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cuenta;
    }
    public static Usuario Obtener(int id){//USADO
        Usuario cuenta = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                cuenta = (Usuario)session.selectOne("Usuario.Obtener", id);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cuenta;
    }
    public static Usuario ObtenerPorDni(String dni, int IdRol){//USADO
        Usuario user = null;
        SqlSession session = new MyBatisUtil().getSession();
        
        Map<String, Object> mapa = new  HashMap<>();
        mapa.put("dni", dni);
        mapa.put("idRol", IdRol);
        if (session != null) {
            try {
                user = (Usuario)session.selectOne("Usuario.ObtenerPorDni", mapa);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return user;
    }
    public static int ValidarId(String usuario){//USADO
        int cantidad = 0;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                cantidad = (Integer)session.selectOne("Usuario.ValidarId", usuario);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cantidad;
    }
    public static void Insertar(Usuario user){//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.insert("Usuario.Insertar", user);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
    public static Usuario ObtenerPorNombre(Persona persona){
        Usuario cuenta = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                cuenta = (Usuario)session.selectOne("CuentaAdministrador.ObtenerPorNombre", persona);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cuenta;
    }
    public static Usuario ObtenerPorDni(Persona persona){
        Usuario cuenta = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                cuenta = (Usuario)session.selectOne("CuentaAdministrador.ObtenerPorDni", persona);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return cuenta;
    }
    public static void Modificar(Usuario user){//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.update("Usuario.Modificar", user);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
    public static List<Usuario> Listar(){
        List<Usuario> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("CuentaAdministrador.Listar");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
    public static List<CuentaUsuario> ListarTecnicos(){//USADO
        List<CuentaUsuario> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Usuario.ListarTecnicos");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
    public static List<CuentaUsuario> ListarUsuarios(){//USADO
        List<CuentaUsuario> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Usuario.ListarUsuarios");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
}
