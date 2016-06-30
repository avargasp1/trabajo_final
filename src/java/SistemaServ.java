/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.SistemaOperativo;

/**
 *
 * @author alejandrovargas
 */
public class SistemaServ extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            SistemaOperativo so = new SistemaOperativo ( );
            
            if (request.getParameter("eliminar") != null ){
                int id = Integer.parseInt(request.getParameter("eliminar"));
                so.setSistema_id(id);
                so.eliminar();
                
                response.sendRedirect("/Prueba_final/Sistemas_operativos/index.jsp");
                
            }
            if (request.getParameter("crear") != null ){
                
                
                String nombre = request.getParameter("nombre");
                String fecha = request.getParameter("fecha_creacion");
                int lenguaje_id = Integer.parseInt(request.getParameter("lenguaje_id"));
                
                so.setNombre(nombre);
                so.setFecha_creacion(fecha);
                so.setLenguaje_id(lenguaje_id);
                
                so.crear();
                
                response.sendRedirect("/Prueba_final/Sistemas_operativos/index.jsp");
            }
            
            if (request.getParameter("editar") != null ){
                
                int id = Integer.parseInt(request.getParameter("editar"));
                String nombre = request.getParameter("nombre");
                String fecha = request.getParameter("fecha_creacion");
                int lenguaje_id = Integer.parseInt(request.getParameter("lenguaje_id"));
                
                
                so.setSistema_id(id);
                so.setNombre(nombre);
                so.setFecha_creacion(fecha);
                so.setLenguaje_id(lenguaje_id);
                so.actualizar();
                
                response.sendRedirect("/Prueba_final/Sistemas_operativos/index.jsp");
            }
            
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
