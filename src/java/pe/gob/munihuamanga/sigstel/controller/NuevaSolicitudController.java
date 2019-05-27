/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Solicitud;
import pe.gob.munihuamanga.sigstel.be.TipoSolicitud;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import pe.gob.munihuamanga.sigstel.bl.TipoSolicitudBL;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NERIO
 */
public class NuevaSolicitudController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //PASAR LA LISTA DE TIPOS A LA VISTA
        List<TipoSolicitud> lista = TipoSolicitudBL.Listar();
        request.getSession().setAttribute("listaTipo", lista);

        request.getRequestDispatcher("WEB-INF/jsp/app/nuevaSolicitud.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String detalle = request.getParameter("detalle");
        int idTipo = Integer.parseInt(request.getParameter("idTipo"));
        int idUsuario = Integer.parseInt(request.getSession().getAttribute("usuarioId").toString());

        if (detalle != null && idTipo != 0 && idUsuario != 0) {
            Solicitud solicitud = new Solicitud(0, detalle, null, null, new Date(), null, null, idTipo, 1, idUsuario, 0);

            SolicitudBL.Insertar(solicitud);

            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(1);
        } 
        else {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(0);
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
