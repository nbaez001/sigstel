/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.be.Persona;
import pe.gob.munihuamanga.sigstel.be.Usuario;
import pe.gob.munihuamanga.sigstel.bl.DependenciaBL;
import pe.gob.munihuamanga.sigstel.bl.PersonaBL;
import pe.gob.munihuamanga.sigstel.bl.UsuarioBL;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NERIO
 */
public class AdministrarPerfilUserController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("usuarioId") != null) {
            int id = Integer.parseInt(request.getSession().getAttribute("usuarioId").toString());

            Usuario u = UsuarioBL.Obtener(id);
            if (u != null) {
                Dependencia d = DependenciaBL.Obtener(u.getIdDependencia());
                Persona p = PersonaBL.Obtener(u.getIdPersona());

                //ENVIAR DATOS
                request.getSession().setAttribute("pUsuario", u);
                request.getSession().setAttribute("pDependencia", d);
                request.getSession().setAttribute("pPersona", p);

                request.getRequestDispatcher("WEB-INF/jsp/app/administrarPerfil.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("home").forward(request, response);
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
