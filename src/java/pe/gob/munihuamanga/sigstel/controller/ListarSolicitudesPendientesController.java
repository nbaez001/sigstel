/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.SolicitudPendiente;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VICTOR
 */
public class ListarSolicitudesPendientesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            List<SolicitudPendiente> lista = SolicitudBL.Pendientes();
            request.getSession().setAttribute("listaPendientes", lista);

            request.getRequestDispatcher("WEB-INF/jsp/adm/listaPendientes.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("administrator").forward(request, response);
        }
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
