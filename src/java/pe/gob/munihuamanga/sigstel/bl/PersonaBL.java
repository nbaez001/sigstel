/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import pe.gob.munihuamanga.sigstel.be.Persona;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

/**
 *
 * @author NERIO
 */
public class PersonaBL {
    public static Persona Obtener(int id){//USADO
        Persona persona = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                persona = (Persona)session.selectOne("Persona.Obtener", id);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return persona;
    }
    public static Persona ObtenerPorDni(String dni){//USADO
        Persona persona = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                persona = (Persona)session.selectOne("Persona.ObtenerPorDni", dni);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return persona;
    }
    public static void Insertar(Persona persona){//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.insert("Persona.Insertar", persona);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
    public static void Modificar(Persona persona){//USADO
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.update("Persona.Modificar", persona);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
    public static void Eliminar(int id){
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                session.delete("Persona.Eliminar", id);
                session.commit();
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
    }
}
