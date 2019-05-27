/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.da;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import java.util.List;


/**
 *
 * @author VICTOR
 */
public interface DependenciaMapper {
    List<Dependencia> Listar();//USADO
    Dependencia Obtener(int id);//USADO
}
