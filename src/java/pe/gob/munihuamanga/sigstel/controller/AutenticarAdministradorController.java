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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author NERIO
 */
public class AutenticarAdministradorController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") == null) {
            request.getRequestDispatcher("WEB-INF/jsp/adm/login.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("homeAdmin").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String contrasena = request.getParameter("contrasena");

        Usuario cuenta = new Usuario(0, usuario, contrasena, null, 0, 2, 0, 0);
        Usuario rCuenta = UsuarioBL.Autenticar(cuenta);

        if (rCuenta != null) {
            Persona rPersona = PersonaBL.Obtener(rCuenta.getIdPersona());
            //CORRECTO
            request.getSession().setAttribute("administradorNombre", rPersona.getNombre());
            request.getSession().setAttribute("administradorIdCuenta", rCuenta.getId());
            request.getSession().setAttribute("administradorIdRol", rCuenta.getIdRol());

            request.getRequestDispatcher("homeAdmin").forward(request, response);
        } else {
            cuenta.setIdRol(1);
            rCuenta = UsuarioBL.Autenticar(cuenta);
            if (rCuenta != null) {
                Persona rPersona = PersonaBL.Obtener(rCuenta.getIdPersona());
                //CORRECTO
                request.getSession().setAttribute("administradorNombre", rPersona.getNombre());
                request.getSession().setAttribute("administradorIdCuenta", rCuenta.getId());
                request.getSession().setAttribute("administradorIdRol", rCuenta.getIdRol());

                request.getRequestDispatcher("homeAdmin").forward(request, response);
            } else {
                request.getSession().setAttribute("mensajeLogin", "Error, Usuario o contraseña incorrectos");
                request.getRequestDispatcher("WEB-INF/jsp/adm/login.jsp").forward(request, response);
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
