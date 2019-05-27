/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.bl.DependenciaBL;
import java.io.IOException;
import java.io.PrintWriter;
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
public class ModalLoguinController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario(0, request.getParameter("usuario"), request.getParameter("contrasena"), null, 0, 3, 0, 0);
        //OBTENIDO
        Usuario rUsuario = UsuarioBL.Autenticar(usuario);
        if (rUsuario != null) {
            Dependencia rDependencia = DependenciaBL.Obtener(rUsuario.getIdDependencia());
            if (rDependencia != null) {
                request.getSession().setAttribute("nombre", rDependencia.getDenominacion());
                request.getSession().setAttribute("dependencia", rDependencia.getDenominacion());
                request.getSession().setAttribute("dependenciaNombre", rDependencia.getSigla());
                request.getSession().setAttribute("usuarioId", rUsuario.getId());

                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print(1);
            } else {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print(0);
            }
        } else {
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
