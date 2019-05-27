/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.bl.DependenciaBL;
import java.io.IOException;
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
public class AutenticarUsuarioController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/jsp/app/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Usuario usuario = new Usuario(0, request.getParameter("usuario"), request.getParameter("contrasena"), null, 0, 3, 0, 0);
        //OBTENIDO
        Usuario rUsuario = UsuarioBL.Autenticar(usuario);
        if (rUsuario != null) {
            Dependencia rDependencia = DependenciaBL.Obtener(rUsuario.getIdDependencia());
            
            request.getSession().setAttribute("nombre", rDependencia.getDenominacion());
            request.getSession().setAttribute("dependencia", rDependencia.getDenominacion());
            request.getSession().setAttribute("dependenciaNombre", rDependencia.getSigla());
            request.getSession().setAttribute("usuarioId", rUsuario.getId());

            request.getRequestDispatcher("WEB-INF/jsp/app/home.jsp").forward(request, response);
        } else {
            request.getSession().setAttribute("mensajeLoginUsuario", "Error, Usuario o contraseña incorrectos");
            request.getRequestDispatcher("WEB-INF/jsp/app/login.jsp").forward(request, response);
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
