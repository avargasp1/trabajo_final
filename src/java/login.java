/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import negocio.Usuario;

/**
 *
 * @author alejandrovargas
 */
public class login extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            
            Usuario usuario = new Usuario();
            
            usuario.setNombre(user);
            usuario.setClave(pass);
            usuario.lfuser();
            
            if (usuario.lfuser().contains(user)) {
                
                if (usuario.lfuser().contains(pass)) {

                    if (user.equals("admin") && pass.equals("admin")){
                        HttpSession session;            
                        session = request.getSession();
                        session.setAttribute("nombre", user);                    
                        session.setAttribute("usuario_id", usuario.lfuser().get(2));
                        session.setAttribute("valido", true);
                        response.sendRedirect("/Prueba_final/principalSu.jsp");
                    }else{
                        HttpSession session;            
                        session = request.getSession();
                        session.setAttribute("nombre", user);                    
                        session.setAttribute("usuario_id", usuario.lfuser().get(2));
                        session.setAttribute("valido", true);
                        response.sendRedirect("/Prueba_final/principal.jsp");
                    }
                    

                } else {
                    response.sendRedirect("/Prueba_final/index.jsp");
                }
            } else {
                response.sendRedirect("/Prueba_final/index.jsp");
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
