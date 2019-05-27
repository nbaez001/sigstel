/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.report;

import java.util.ArrayList;
import java.util.List;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRField;

/**
 *
 * @author NERIO
 */
public class DetalleInspeccionDatasource implements JRDataSource {

    private List<rDetalleInspeccion> lista = new ArrayList<rDetalleInspeccion>();
    private int indice = -1;

    @Override
    public boolean next() throws JRException {
        return ++indice < lista.size();
    }

    @Override
    public Object getFieldValue(JRField jrf) throws JRException {
        Object valor = null;
        if ("fecha".equals(jrf.getName())) {
            valor = lista.get(indice).getNombre();
        } else if ("nombre".equals(jrf.getName())) {
            valor = lista.get(indice).getNombre();
        } else if ("dependencia".equals(jrf.getName())) {
            valor = lista.get(indice).getDependencia();
        } else if ("tipo".equals(jrf.getName())) {
            valor = lista.get(indice).getTipo();
        } else if ("detalle".equals(jrf.getName())) {
            valor = lista.get(indice).getDetalle();
        } else if ("horaInicio".equals(jrf.getName())) {
            valor = lista.get(indice).getHoraInicio();
        } else if ("horaFin".equals(jrf.getName())) {
            valor = lista.get(indice).getHoraFin();
        } else if ("opinion".equals(jrf.getName())) {
            valor = lista.get(indice).getOpinion();
        }

        return valor;
    }

    public void addParticipante(rDetalleInspeccion detalleInspeccion) {
        this.lista.add(detalleInspeccion);
    }

}
