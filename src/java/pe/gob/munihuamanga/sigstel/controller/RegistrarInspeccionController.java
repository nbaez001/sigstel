/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Solicitud;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author VICTOR
 */
public class RegistrarInspeccionController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idSolicitud"));
        String opinionTecnica = request.getParameter("opinion");
        int idEstadoSolicitud = Integer.parseInt(request.getParameter("idEstado"));
        int idTecnico = Integer.parseInt(request.getSession().getAttribute("administradorIdCuenta").toString());
        
        //RESPUESTA
        if (id != 0 && idEstadoSolicitud != 0 && idTecnico != 0) {
            //REGISTRAR INSPECCION TECNICA
            Solicitud solicitud= new Solicitud(id, null, opinionTecnica, null, null, null, null, 0, idEstadoSolicitud, 0, idTecnico);
            SolicitudBL.Modificar(solicitud);
            
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
