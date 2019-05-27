/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.SolicitudAtendida;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NERIO
 */
public class ListarSolicitudesAtendidasController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            List<SolicitudAtendida> lista = SolicitudBL.Atendidas();
            request.getSession().setAttribute("listaAtendidas", lista);

            request.getRequestDispatcher("WEB-INF/jsp/adm/listaAtendidas.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("administrator").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
