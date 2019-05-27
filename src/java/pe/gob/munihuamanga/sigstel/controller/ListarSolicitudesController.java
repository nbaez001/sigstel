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
import pe.gob.munihuamanga.sigstel.be.Usuario;
import pe.gob.munihuamanga.sigstel.bl.UsuarioBL;

/**
 *
 * @author VICTOR
 */
public class ListarSolicitudesController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer usuarioIdInicial = (Integer) request.getSession().getAttribute("usuarioId");
        int usuarioId = 0;
        if (usuarioIdInicial != null) {
            usuarioId = usuarioIdInicial;
        }
        List<SolicitudPendiente> lista = null;

        if (usuarioId != 0) {
            Usuario user = UsuarioBL.Obtener(usuarioId);
            if (user != null) {

                lista = SolicitudBL.ListarDeDependencia(user.getIdDependencia());
                request.getSession().setAttribute("listaSolicitudUsuario", lista);

                request.getRequestDispatcher("WEB-INF/jsp/app/listaSolicitudes.jsp").forward(request, response);
            } else {
                int cantidad = SolicitudBL.ContarSolicitud(1);

                if (cantidad <= 20) {
                    lista = SolicitudBL.ListarDeTodos(20);
                } else {
                    lista = SolicitudBL.ListarDeTodos(cantidad);
                }
                request.getSession().setAttribute("listaSolicitudUsuario", lista);

                request.getRequestDispatcher("WEB-INF/jsp/app/listaSolicitudes.jsp").forward(request, response);
            }
        } else {
            int cantidad = SolicitudBL.ContarSolicitud(1);

            if (cantidad >= 20) {
                lista = SolicitudBL.ListarDeTodos(20);
            } else {
                lista = SolicitudBL.ListarDeTodos(cantidad);
            }
            request.getSession().setAttribute("listaSolicitudUsuario", lista);

            request.getRequestDispatcher("WEB-INF/jsp/app/listaSolicitudes.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
