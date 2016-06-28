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
import negocio.Celulares;

/**
 *
 * @author alejandrovargas
 */
public class CelularServ extends HttpServlet {

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
            
            Celulares celu = new Celulares();
            
            if(request.getParameter("eliminar")!=null){
                    int id=Integer.parseInt(request.getParameter("eliminar"));
                    celu.setCelular_id(id);
                    celu.eliminar();
                    response.sendRedirect("/Prueba_final/celulares/index.jsp");
            
            
              
           }/* if(request.getParameter("crear")!=null){
                String chip =request.getParameter("chip");
                String fecha_creacion = request.getParameter("fecha_creacion");
                int numero = Integer.parseInt(request.getParameter("numero"));
                int sistema_id = Integer.parseInt(request.getParameter("sistema_id"));
                String creador = request.getParameter("creador");
                int modelo_id = Integer.parseInt(request.getParameter("modelo_id"));
                
                celu.setChip(chip);
                celu.setFecha_creacion(fecha_creacion);
                celu.setNumero(numero);
                celu.setSistema_id(sistema_id);
                celu.setCreado_por(creador);
                celu.setModelo_id(modelo_id);
                celu.crear();
                
                response.sendRedirect("/Prueba3/celular/index.jsp");
              
           }if(request.getParameter("editar") != null){
                int celular_id = Integer.parseInt(request.getParameter("celular_id"));
                String chip =request.getParameter("chip");
                String fecha_creacion = request.getParameter("fecha");
                int numero = Integer.parseInt(request.getParameter("numero"));
                int sistema_id = Integer.parseInt(request.getParameter("sistema_id"));
                String creador = request.getParameter("creador");
               
                celu.setTipoChip(chip);
                celu.setFecha_creacion(fecha_creacion);
                celu.setNumero(numero);
                celu.setSistema_id(sistema_id);
                celu.setCreador(creador);
                celu.setCelular_id(celular_id);
                celu.update();
                
                response.sendRedirect("/Prueba3/celular/index.jsp");
            */
                 
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
