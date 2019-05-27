/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

/**
 *
 * @author NERIO
 */
public class DependenciaBL {
    public static List<Dependencia> Listar(){//USADO
        List<Dependencia> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Dependencia.Listar");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
    public static Dependencia Obtener(int id){
        Dependencia dependencia = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                dependencia = (Dependencia)session.selectOne("Dependencia.Obtener", id);
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return dependencia;
    }
}
