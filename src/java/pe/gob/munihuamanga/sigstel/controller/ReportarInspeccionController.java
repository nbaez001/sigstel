/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.DetalleInspeccion;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.gob.munihuamanga.sigstel.be.CuentaUsuario;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import pe.gob.munihuamanga.sigstel.bl.UsuarioBL;

/**
 *
 * @author NERIO
 */
public class ReportarInspeccionController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            List<CuentaUsuario> listaTecnicos = UsuarioBL.ListarTecnicos();
            request.getSession().setAttribute("listaTecnicos", listaTecnicos);

            request.getSession().setAttribute("listaInspeccion", null);
            //ANULAR DATOS
            request.getSession().setAttribute("riFechaInicio", null);
            request.getSession().setAttribute("riFechaFin", null);
            request.getSession().setAttribute("riTecnico", null);

            request.getRequestDispatcher("WEB-INF/jsp/adm/reporteInspeccion.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("administrator").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFin = request.getParameter("fechaFin");
            int idTecnico = Integer.parseInt(request.getParameter("idTecnico"));

            List<DetalleInspeccion> lista = SolicitudBL.ReportarInspeccion(fechaInicio, fechaFin, idTecnico);
            request.getSession().setAttribute("mensaje", "REPORTE DE INSPECCION ENTRE " + fechaInicio + " - " + fechaFin);
            request.getSession().setAttribute("listaInspeccion", lista);

            request.getRequestDispatcher("WEB-INF/jsp/adm/reporteInspeccion.jsp").forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ReportarInspeccionController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
