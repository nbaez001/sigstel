/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import pe.gob.munihuamanga.sigstel.be.Rol;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;

/**
 *
 * @author Nerio
 */
public class RolBL {
    public static List<Rol> Listar(){//USADO
        List<Rol> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Rol.Listar");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
}
