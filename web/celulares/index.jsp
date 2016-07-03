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
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand active" href="#">Prueba Final</a>
                </div>
                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/Prueba_final/celulares/index.jsp">Celulares</a></li>
                        <li><a href="/Prueba_final/Sistemas_operativos/index.jsp">Sistemas Operativos</a></li>
                        <li><a href="/Prueba_final/lenguajes_programacion/index.jsp">Lenguajes de Programacion</a></li>
                        <li><a href="/Prueba_final/index.jsp" class="pull-right">Log Out</a></li>
                        
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav><br><br><br>
        <div class="container">
            <h1>Celulares</h1>
            <br>
            <label>Crear:</label>
            <a class="btn btn-success" href="/Prueba_final/celulares/crear.jsp" role="button">celular</a>
            <a class="btn btn-success" href="/Prueba_final/modelos/index.jsp">Modelo</a>
            <a class="btn btn-success" href="/Prueba_final/marcas/index.jsp">Marca</a>
            
            <div class="pull-right">
                <form method="post">
                  <input type="text" name="buscar">
                <input type="submit" class="btn btn-success" name="buscar" value="Buscar">
                <%
                Conexion con = new Conexion();
                
                if (request.getParameter("buscar") != null) {
                    if (request.getParameter("buscar").isEmpty()) {

                        con.setConsulta("select * from celulares where estado='activo'");
                    } else {
                        int numero = Integer.parseInt(request.getParameter("buscar"));
                        con.setConsulta("select * from celulares where numero = '" + numero + "' and estado='activo'");
                    }
                } else {
                    con.setConsulta("select * from celulares where estado='activo'");
                }
            %>  
                </form>
                
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
                <a class="btn btn-success pull-right" href="/Prueba_final/marcas/index.jsp">Generar reporte</a>
        </div>

    </body>
</html>
