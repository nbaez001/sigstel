/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.bl;

import pe.gob.munihuamanga.sigstel.be.TipoSolicitud;
import pe.gob.munihuamanga.sigstel.da.MyBatisUtil;
import java.util.List;
import org.apache.ibatis.session.SqlSession;

/**
 *
 * @author VICTOR
 */
public class TipoSolicitudBL {
    public static List<TipoSolicitud> Listar(){//USADO
        List<TipoSolicitud> lista = null;
        SqlSession session = new MyBatisUtil().getSession();
        if (session != null) {
            try {
                lista = session.selectList("TipoSolicitud.Listar");
            } finally {
                session.close();
            }
        } else {
            System.out.println("Error en session");
        }
        return lista;
    }
}
