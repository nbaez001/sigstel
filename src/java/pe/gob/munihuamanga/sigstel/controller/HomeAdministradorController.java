/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.gob.munihuamanga.sigstel.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import pe.gob.munihuamanga.sigstel.be.CuentaUsuario;
import pe.gob.munihuamanga.sigstel.be.Dependencia;
import pe.gob.munihuamanga.sigstel.be.Rol;
import pe.gob.munihuamanga.sigstel.be.SolicitudAtendida;
import pe.gob.munihuamanga.sigstel.be.SolicitudPendiente;
import pe.gob.munihuamanga.sigstel.bl.DependenciaBL;
import pe.gob.munihuamanga.sigstel.bl.RolBL;
import pe.gob.munihuamanga.sigstel.bl.SolicitudBL;
import pe.gob.munihuamanga.sigstel.bl.UsuarioBL;

/**
 *
 * @author NERIO
 */
public class HomeAdministradorController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getSession().getAttribute("administradorIdCuenta") != null) {
            List<SolicitudPendiente> listaPendientes = SolicitudBL.Pendientes();
            request.getSession().setAttribute("listaPendientes", listaPendientes);

            List<SolicitudAtendida> listaAtendidas = SolicitudBL.Atendidas();
            request.getSession().setAttribute("listaAtendidas", listaAtendidas);

            List<CuentaUsuario> lista = UsuarioBL.ListarUsuarios();
            request.getSession().setAttribute("listaUsuarios", lista);

            List<Dependencia> listaDependencia = DependenciaBL.Listar();
            request.getSession().setAttribute("listaDependencia", listaDependencia);
            
            List<Rol> listaRol = RolBL.Listar();
            request.getSession().setAttribute("listaRol", listaRol);

            request.getRequestDispatcher("WEB-INF/jsp/adm/home.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("administrator").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

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
