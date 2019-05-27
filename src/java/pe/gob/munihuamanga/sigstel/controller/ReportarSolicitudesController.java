/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.bl.DependenciaBL;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.gob.munihuamanga.sigstel.be.SolicitudCompleta;

/**
 *
 * @author NERIO
 */
public class ReportarSolicitudesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            List<Dependencia> listaDependencia = DependenciaBL.Listar();
            request.getSession().setAttribute("listaDependencia", listaDependencia);
            request.getRequestDispatcher("WEB-INF/jsp/adm/reporteSolicitudes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("administrator").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String fechaInicio = request.getParameter("fechaInicio");
            String fechaFin = request.getParameter("fechaFin");
            int idDependencia = Integer.parseInt(request.getParameter("idDependencia"));

            List<SolicitudCompleta> lista = SolicitudBL.ReportarSolicitudes(fechaInicio, fechaFin, idDependencia);
            request.getSession().setAttribute("reporteInspeccion", lista);
            request.getSession().setAttribute("mensaje", "REPORTE DE SOLICITUDES ENTRE " + fechaInicio + " - " + fechaFin);

            request.getRequestDispatcher("WEB-INF/jsp/adm/reporteSolicitudes.jsp").forward(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ReportarSolicitudesController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
