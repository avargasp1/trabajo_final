/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import conexion.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.SistemaOperativo;
import java.sql.ResultSet;
import java.util.Arrays;
import negocio.Marcas;
import negocio.Modelos;

/**
 *
 * @author alejandrovargas
 */
public class Api extends HttpServlet {

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
            
            Conexion con = new Conexion ();
            ArrayList lista = new ArrayList ();

            if (request.getParameter("modulo").equals("so")){
                con.setConsulta("select * from sistemas_operativos");
                
                try {
                    while (con.getResult().next()){
                        SistemaOperativo so = new SistemaOperativo();
                        
                        so.setSistema_id(con.getResult().getInt("sistema_id"));
                        so.setNombre(con.getResult().getString("nombre"));
                        so.setFecha_creacion(con.getResult().getString("fecha_creacion"));
                        so.setEstado(con.getResult().getString("estado"));
                        so.setLenguaje_id(con.getResult().getInt("lenguaje_id"));
                        
                        lista.add(so);
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(Api.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            }
            
            if (request.getParameter("modulo").equals("marca")){
                con.setConsulta("select * from marcas");
                
                try {
                    while (con.getResult().next()){
                        Marcas marca = new Marcas();
                        
                        marca.setMarca_id(con.getResult().getInt("marca_id"));
                        marca.setNombre(con.getResult().getString("nombre"));
                        marca.setEstado(con.getResult().getString("estado"));
                        marca.setCreado_por(con.getResult().getString("creado_por"));
                        
                        lista.add(marca);
                      
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(Api.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            }
            if (request.getParameter("modulo").equals("modelo")){
                con.setConsulta("select * from modelos");
                
                try {
                    while (con.getResult().next()){
                        Modelos mode = new Modelos();
                                                
                        mode.setModelo_id(con.getResult().getInt("modelo_id"));
                        mode.setNombre(con.getResult().getString("nombre"));
                        mode.setEstado(con.getResult().getString("estado"));
                        mode.setCreado_por(con.getResult().getString("creado_por"));
                        mode.setMarca_id(con.getResult().getInt("marca_id"));
                        lista.add(mode);
                      
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(Api.class.getName()).log(Level.SEVERE, null, ex);
                }
                
            }
            
            Gson gson = new GsonBuilder().setPrettyPrinting().create();
            String json = gson.toJson(lista);
            response.setContentType("application/json;charset=UTF-8");
            out.write(json);
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
