/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.da;

import pe.gob.munihuamanga.sigstel.be.Persona;

/**
 *
 * @author VICTOR
 */
public interface PersonaMapper {
    Persona Obtener(int id);//USADO
    Persona ObtenerPorDni(String dni);//USADO
    void Insertar(Persona persona);//USADO
    void Modificar(Persona persona);//USADO
    void Eliminar(int id);
}
