<%-- 
    Document   : index
    Created on : 22-jun-2016, 17:17:11
    Author     : alejandrovargas
--%>

<%@page import="conexion.Conexion"%>
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
            <h1>Lenguajes de Programacion</h1>
            <br>
            <a class="btn btn-success" href="/Prueba_final/lenguajes_programacion/crear.jsp" role="button">Crear Lenguaje</a>
            <div class="pull-right">
                <label>Buscar</label>
                <input type="text" name="buscar">
            </div>
            <br>
            <table class="table table-striped">
                <thead>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Fecha de creacion</th>
                    
                </thead>
                <tbody>
                    <%
                        Conexion con = new Conexion();
                        con.setConsulta("select * from lenguajes_programacion where estado='activo'");
                       while (con.getResult().next()){
                            out.println("<tr>");
                            out.println("<td>"+con.getResult().getString("lenguaje_id")+"</td>");
                            out.println("<td>"+con.getResult().getString("nombre")+"</td>");
                            out.println("<td>"+con.getResult().getString("fecha_creacion")+"</td>");
                            out.println("<td>" + "<a href='/Prueba_final/LenguajeServ?eliminar=" + con.getResult().getString("lenguaje_id") + "'>Eliminar</a>" + "</td>");
                            out.println("<td>" + "<a href='/Prueba_final/lenguajes_programacion/editar.jsp?lenguaje_id=" + con.getResult().getString("lenguaje_id") + "'>Editar</a>" + "</td>");
                            out.println("</tr>");
                        }
                    %>
                    
                </tbody>
                    <a class="btn btn-success pull-right" href="/Prueba_final/marcas/index.jsp">Generar reporte</a>
            </table>      
        </div>

    </body>
</html>
