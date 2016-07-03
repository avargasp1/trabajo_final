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
import negocio.Marcas;

/**
 *
 * @author alejandrovargas
 */
public class MarcaServ extends HttpServlet {

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
            
            Marcas marca = new Marcas();
            
            if (request.getParameter("eliminar") !=  null){
                int id = Integer.parseInt(request.getParameter("eliminar"));
                
                marca.setMarca_id(id);
                marca.eliminar();
                
                response.sendRedirect("/Prueba_final/marcas/index.jsp");
            }
            if (request.getParameter("crear") !=  null){
                String nombre = request.getParameter("nombre");
                String creador = request.getParameter("creado_por");
                
                marca.setNombre(nombre);
                marca.setCreado_por(nombre);
                marca.crear();
                response.sendRedirect("/Prueba_final/marcas/index.jsp");
            }
            if (request.getParameter("editar") !=  null){
                String nombre = request.getParameter("nombre");
                int id = Integer.parseInt(request.getParameter("editar"));
                
                marca.setMarca_id(id);
                marca.setNombre(nombre);
                marca.actualizar();
                response.sendRedirect("/Prueba_final/marcas/index.jsp");
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
