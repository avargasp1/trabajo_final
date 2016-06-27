<%-- 
    Document   : index
    Created on : 22-jun-2016, 17:17:11
    Author     : alejandrovargas
--%>

<%@page import="conexion.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Celulares - Evaluacion final</title>
        <link href="/Prueba_final/template/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Celulares</h1>
            <br>
            <a class="btn btn-success" href="/Prueba_final/celulares/crear.jsp" role="button">Crear celular</a>
            <a class="btn btn-success" href="/Prueba_final/celulares/crear.jsp" role="button">Crear Modelo</a>
            
            <div class="pull-right">
                <label> Buscar</label>
                <input type="text" name="buscar">
                <input type="submit" class="btn btn-success" name="buscar">
                <%
                Conexion con = new Conexion();
                /*
                if (request.getParameter("buscar") != null) {
                    if (request.getParameter("buscar").isEmpty()) {

                        con.setConsulta("select * from celulares where estado='activo'");
                    } else {
                        int numero = Integer.parseInt(request.getParameter("buscar"));
                        con.setConsulta("select * from celulares where numero = '" + numero + "' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from celulares where estado='activo'");
                }*/
            %>
            </div>
            
            <br>
            
            <table class="table table-striped">
                <thead>
                    <th>ID</th>
                    <th>Chip</th>
                    <th>Fecha de creacion</th>
                    <th>Numero</th>
                    <th>Sistema Operativo</th>
                    <th>Modelo</th>
                </thead>
                <tbody>
                    <%
                        con.setConsulta("select * from celulares where estado='activo'");
                       while (con.getResult().next()){
                            out.println("<tr>");
                            out.println("<td>"+con.getResult().getString("celular_id")+"</td>");
                            out.println("<td>"+con.getResult().getString("tipo_chip")+"</td>");
                            out.println("<td>"+con.getResult().getString("fecha_creacion")+"</td>");
                            out.println("<td>"+con.getResult().getString("numero")+"</td>");
                            out.println("<td>"+con.getResult().getString("sistema_id")+"</td>");
                            out.println("<td>"+con.getResult().getString("Modelo_id")+"</td>");
                            out.println("<td>" + "<a href='/Prueba_final/CelularServ?eliminar=" + con.getResult().getString("celular_id") + "'>Eliminar</a>" + "</td>");
                            out.println("<td>" + "<a href='/Prueba_final/celulares/editar.jsp?celular_id=" + con.getResult().getString("celular_id") + "'>Editar</a>" + "</td>");
                            out.println("</tr>");
                        }
                    %>
         
                </tbody>

            </table>      
        </div>

    </body>
</html>
