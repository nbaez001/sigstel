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
public class MantenerUsuarioController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            int id = Integer.parseInt(request.getParameter("id"));

            Usuario user = UsuarioBL.Obtener(id);

            if (user != null) {
                Persona persona = PersonaBL.Obtener(user.getIdPersona());

                response.setContentType("application/json");
                PrintWriter out = response.getWriter();

                String json = "{\"id\":\"" + user.getId() + "\","
                        + "\"usuario\":\"" + user.getUsuario() + "\","
                        + "\"contrasena\":\"" + user.getContrasena() + "\","
                        + "\"cargo\":\"" + user.getCargo() + "\","
                        + "\"estado\":\"" + user.getEstado() + "\","
                        + "\"idRol\":\"" + user.getIdRol() + "\","
                        + "\"idDependencia\":\"" + user.getIdDependencia() + "\","
                        + "\"nombre\":\"" + persona.getNombre() + "\","
                        + "\"apellidoPat\":\"" + persona.getApellidoPat() + "\","
                        + "\"apellidoMat\":\"" + persona.getApellidoPat() + "\","
                        + "\"dni\":\"" + persona.getDni() + "\","
                        + "\"telefono\":\"" + persona.getTelefono() + "\","
                        + "\"email\":\"" + persona.getEmail() + "\"}";
                out.print(json);
            } else {
                response.setContentType("application/json");
                PrintWriter out = response.getWriter();
                out.print(0);
            }
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
        Persona rPersona = PersonaBL.ObtenerPorDni(request.getParameter("dni"));
        if (rPersona != null) {
            rPersona = new Persona(
                    rPersona.getId(),
                    request.getParameter("nombre"),
                    request.getParameter("apellidoPat"),
                    request.getParameter("apellidoMat"),
                    request.getParameter("dni"),
                    request.getParameter("telefono"),
                    request.getParameter("email")
            );
            PersonaBL. Modificar(rPersona);
            
            Usuario usuario = new Usuario(
                    Integer.parseInt(request.getParameter("idUsuario")),
                    request.getParameter("usuario"),
                    request.getParameter("contrasena"),
                    request.getParameter("cargo"),
                    Integer.parseInt(request.getParameter("estado")),
                    Integer.parseInt(request.getParameter("idRol")),
                    Integer.parseInt(request.getParameter("idDependencia")),
                    rPersona.getId()
            );

            UsuarioBL.Modificar(usuario);
            
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(1);
        } else {
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
