/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import pe.gob.munihuamanga.sigstel.be.EstadoSolicitud;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

/**
 *
 * @author NERIO
 */
public class EstadoBL {
    public static List<EstadoSolicitud> Listar(){
        List<EstadoSolicitud> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("Estado.Listar");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
}
