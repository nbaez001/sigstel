/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Usuario;
import pe.gob.munihuamanga.sigstel.be.Persona;
import pe.gob.munihuamanga.sigstel.bl.UsuarioBL;
import pe.gob.munihuamanga.sigstel.bl.PersonaBL;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SISTEMAS
 */
public class ValidarDniController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dni = request.getParameter("dni");
        int idRol = Integer.parseInt(request.getParameter("idRol"));
        
            Usuario user = UsuarioBL.ObtenerPorDni(dni, idRol);
            if (user == null) {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                
                Persona persona = PersonaBL.ObtenerPorDni(dni);
                
                if(persona==null){
                    out.print(0);
                }
                else{
                    String json = "{\"nombre\":\"" + persona.getNombre() + "\","
                        + "\"apellidoPat\":\"" + persona.getApellidoPat() + "\","
                        + "\"apellidoMat\":\"" + persona.getApellidoPat() + "\","
                        + "\"dni\":\"" + persona.getDni() + "\","
                        + "\"telefono\":\"" + persona.getTelefono() + "\","
                        + "\"email\":\"" + persona.getEmail() + "\"}";
                    out.print(json);
                }
            } else {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print(2);
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
