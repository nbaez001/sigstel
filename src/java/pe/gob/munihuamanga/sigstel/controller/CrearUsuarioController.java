/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Persona;
import pe.gob.munihuamanga.sigstel.bl.PersonaBL;
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
 * @author NERIO
 */
public class CrearUsuarioController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Persona persona = PersonaBL.ObtenerPorDni(request.getParameter("dni"));
        if (persona == null) {
            persona = new Persona(
                    0,
                    request.getParameter("nombre"),
                    request.getParameter("apellidoPat"),
                    request.getParameter("apellidoMat"),
                    request.getParameter("dni"),
                    request.getParameter("telefono"),
                    request.getParameter("email")
            );
            PersonaBL.Insertar(persona);
        }
        //OBTIENE PERSONA
        persona = PersonaBL.ObtenerPorDni(request.getParameter("dni"));

        if (persona.getId() != 0) {
            //REGISTRAR CUENTA
            Usuario usuario = new Usuario(
                    0,
                    request.getParameter("usuario"),
                    request.getParameter("contrasena"),
                    request.getParameter("cargo"),
                    Integer.parseInt(request.getParameter("estado")),
                    Integer.parseInt(request.getParameter("idRol")),
                    Integer.parseInt(request.getParameter("idDependencia")),
                    persona.getId()
            );

            UsuarioBL.Insertar(usuario);

            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(1);
        } else {
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(0);
        }
    }

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
